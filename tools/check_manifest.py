"""Check README.md and index.html against the PDFs in the repo.

Finds every PDF in pdf/, pd-scans/, vol2/ and the repository root, reads
each page count with pypdf, and reports:

- a PDF that is not linked or listed in README.md or index.html
- a relative link, href or src that does not exist in the repo
  (external http(s) links, data and mailto links, and anchors are ignored)
- a page count in a README table, the first "N pages" after a PDF, or an
  index.html row that does not match the file
- a size in an index.html row that is outside a one-step rounding of the file
- index.html that differs from tools/make_index.py, when this tree has that
  generator

A later "N pages" in the same sentence ("2 pages of concepts") is a
breakdown, not the file length. The first count after the PDF is the one
that has to match.

    python3 tools/check_manifest.py
"""
from __future__ import annotations

import html
import logging
import re
import sys
import urllib.parse
import warnings
from pathlib import Path

from pypdf import PdfReader

PDF_DIRS = ('pdf', 'pd-scans', 'vol2')
DOCS = ('README.md', 'index.html')

_LINK = re.compile(
    r'!?\[[^\]]*\]\(\s*<?([^)\s>]+)>?(?:\s+["\'][^"\']*["\'])?\s*\)'
)
_HTML_REF = re.compile(
    r'''(?:href|src)\s*=\s*(?:"([^"]*)"|'([^']*)'|([^\s"'>]+))''',
    re.I,
)
_SIZE = re.compile(r'^(\d+(?:\.\d+)?)\s*(KB|MB|GB|B)$', re.I)
_SCHEME = re.compile(r'^[a-zA-Z][a-zA-Z0-9+.-]*:')
_ROW = re.compile(r'<tr\b[^>]*>(.*?)</tr>', re.I | re.S)
_CELL = re.compile(r'<td\b[^>]*>(.*?)</td>', re.I | re.S)
_HREF = re.compile(r'href\s*=\s*(["\'])(.*?)\1', re.I | re.S)
_PAGES_PHRASE = re.compile(r'(\d+)\s+pages\b', re.I)
_BACKTICK = re.compile(r'`([^`\n]+)`')


def find_pdfs(root) -> list[str]:
    """Repo-relative PDF paths under the pack directories and the repo root."""
    root = Path(root).resolve()
    found = []
    for folder in PDF_DIRS:
        base = root / folder
        if not base.is_dir():
            continue
        for path in base.rglob('*'):
            if path.is_file() and path.suffix.lower() == '.pdf':
                found.append(path.relative_to(root).as_posix())
    for path in root.iterdir():
        if path.is_file() and path.suffix.lower() == '.pdf':
            found.append(path.relative_to(root).as_posix())
    return sorted(set(found))


def human_size(nbytes: int) -> str:
    """Whole kilobytes, or megabytes to one decimal. Matches the downloads page."""
    if nbytes >= 1048576:
        return f'{nbytes / 1048576:.1f} MB'
    return f'{round(nbytes / 1024)} KB'


def size_ok(stated: str, nbytes: int) -> bool:
    """True when ``stated`` is within half a displayed unit of ``nbytes``.

    "460 KB" allows half a kilobyte. "22.0 MB" allows half of 0.1 MB.
    """
    match = _SIZE.match(stated.strip())
    if not match:
        return False
    number = float(match.group(1))
    scale = {'B': 1, 'KB': 1024, 'MB': 1024 ** 2, 'GB': 1024 ** 3}[match.group(2).upper()]
    actual = nbytes / scale
    text = match.group(1)
    decimals = len(text.split('.')[1]) if '.' in text else 0
    step = 10 ** (-decimals) if decimals else 1.0
    return abs(actual - number) <= (step / 2) + 1e-6


def drift_error(disk: str, generated: str):
    """None when the downloads page matches a fresh generator run."""
    if disk == generated:
        return None
    return 'index.html differs from tools/make_index.py output; run python3 tools/make_index.py'


def _strip_comments(text: str) -> str:
    return re.sub(r'<!--.*?-->', '', text, flags=re.S)


def _classify(root: Path, doc: Path, raw: str):
    """Return (kind, info) for one link target.

    kind is ignore, outside, ok, or missing. info is a repo-relative path,
    or the original target when it points outside the repo.
    """
    original = raw.strip()
    text = urllib.parse.unquote(html.unescape(original)).strip()
    if text.startswith('<') and '>' in text:
        text = text[1:text.index('>')]
    base = text.split('#', 1)[0].split('?', 1)[0].strip()
    if not base or base.startswith('#') or base.startswith('//') or _SCHEME.match(base):
        return 'ignore', None
    base = base.replace('\\', '/')
    if base.startswith('/'):
        path = (root / base.lstrip('/')).resolve()
    else:
        path = (doc.parent / base).resolve()
    try:
        rel = path.relative_to(root).as_posix()
    except ValueError:
        shown = original.split('#', 1)[0].split('?', 1)[0].strip()
        return 'outside', shown
    if path.exists():
        return 'ok', rel
    return 'missing', rel


def _pdf_tokens(text: str) -> list[str]:
    """PDF paths named in backticks or Markdown link targets."""
    tokens = []
    for match in _BACKTICK.finditer(text):
        token = match.group(1).strip()
        if token.lower().endswith('.pdf'):
            tokens.append(token)
    for match in _LINK.finditer(text):
        path = urllib.parse.unquote(match.group(1).split('#', 1)[0].split('?', 1)[0])
        if path.lower().endswith('.pdf'):
            tokens.append(path)
    return tokens


def _html_targets(text: str) -> list[str]:
    targets = []
    for match in _HTML_REF.finditer(text):
        raw = next(group for group in match.groups() if group is not None)
        targets.append(raw)
    return targets


def _link_targets(text: str) -> list[str]:
    return [match.group(1) for match in _LINK.finditer(text)] + _html_targets(text)


def _referenced_pdfs(text: str, root: Path, doc: Path) -> set[str]:
    refs = set()
    raws = _pdf_tokens(text) + _html_targets(text)
    for raw in raws:
        kind, rel = _classify(root, doc, raw)
        if kind in ('ok', 'missing') and rel.lower().endswith('.pdf'):
            refs.add(rel)
    return refs


def _link_errors(text: str, root: Path, doc: Path, docname: str) -> list[str]:
    errs = []
    for raw in _link_targets(text):
        kind, info = _classify(root, doc, raw)
        if kind == 'outside':
            errs.append(f'{docname} link {info!r} points outside the repository')
        elif kind == 'missing':
            errs.append(f'{docname} links to missing file {info}')
    return errs


def _readme_page_claims(text: str, root: Path, doc: Path) -> list[tuple[str, int]]:
    claims = []
    for line in text.splitlines():
        stripped = line.strip()
        if not stripped.startswith('|'):
            continue
        cells = [cell.strip() for cell in stripped.strip('|').split('|')]
        if len(cells) < 2 or not re.fullmatch(r'\d+', cells[1]):
            continue
        pages = int(cells[1])
        for raw in _pdf_tokens(cells[0]):
            kind, rel = _classify(root, doc, raw)
            if kind in ('ok', 'missing') and rel.lower().endswith('.pdf'):
                claims.append((rel, pages))

    # The first "N pages" after a PDF, and before the next PDF, is the file
    # length. A later breakdown ("2 pages of concepts") is left alone.
    # Backticks inside a Markdown link belong to that link.
    links = list(_LINK.finditer(text))
    spans = [(match.start(), match.end()) for match in links]
    mentions = []
    for match in links:
        path = urllib.parse.unquote(match.group(1).split('#', 1)[0].split('?', 1)[0])
        if path.lower().endswith('.pdf'):
            mentions.append((match.start(), match.end(), path))
    for match in _BACKTICK.finditer(text):
        if any(start <= match.start() < end for start, end in spans):
            continue
        token = match.group(1).strip()
        if token.lower().endswith('.pdf'):
            mentions.append((match.start(), match.end(), token))
    mentions.sort()
    for index, (_start, end, raw) in enumerate(mentions):
        nxt = mentions[index + 1][0] if index + 1 < len(mentions) else len(text)
        found = _PAGES_PHRASE.search(text[end:nxt])
        if not found:
            continue
        kind, rel = _classify(root, doc, raw)
        if kind in ('ok', 'missing') and rel.lower().endswith('.pdf'):
            claims.append((rel, int(found.group(1))))
    return claims


def _html_claims(text: str, root: Path, doc: Path):
    pages = []
    sizes = []
    for row in _ROW.findall(text):
        local = []
        for match in _HREF.finditer(row):
            kind, rel = _classify(root, doc, html.unescape(match.group(2)))
            if kind in ('ok', 'missing') and rel.lower().endswith('.pdf'):
                local.append(rel)
        if not local:
            continue
        cell_pages = None
        cell_size = None
        for cell in _CELL.findall(row):
            plain = re.sub(r'\s+', ' ', html.unescape(re.sub(r'<[^>]+>', '', cell))).strip()
            if cell_pages is None and re.fullmatch(r'\d+', plain):
                cell_pages = int(plain)
            elif cell_size is None and _SIZE.match(plain):
                cell_size = plain
        for rel in local:
            if cell_pages is not None:
                pages.append((rel, cell_pages))
            if cell_size is not None:
                sizes.append((rel, cell_size))
    return pages, sizes


def _read_pages(path: Path, rel: str):
    logger = logging.getLogger('pypdf')
    previous = logger.level
    logger.setLevel(logging.ERROR)
    try:
        return len(PdfReader(str(path)).pages), None
    except Exception:
        return None, f'{rel} could not be read as a PDF'
    finally:
        logger.setLevel(previous)


def _page_errors(claims, facts, docname: str) -> list[str]:
    errs = []
    seen = set()
    for rel, pages in claims:
        if (rel, pages) in seen:
            continue
        seen.add((rel, pages))
        if rel not in facts:
            continue
        actual = facts[rel][0]
        if actual != pages:
            errs.append(f'{docname} says {rel} has {pages} pages, the PDF has {actual}')
    return errs


def _size_errors(claims, facts) -> list[str]:
    errs = []
    seen = set()
    for rel, stated in claims:
        if (rel, stated) in seen or rel not in facts:
            continue
        seen.add((rel, stated))
        nbytes = facts[rel][1]
        if not size_ok(stated, nbytes):
            errs.append(
                f'index.html says {rel} is {stated}, the file is {nbytes} bytes ({human_size(nbytes)})'
            )
    return errs


def _index_drift(root: Path) -> list[str]:
    maker = root / 'tools' / 'make_index.py'
    index = root / 'index.html'
    own = Path(__file__).resolve().parent / 'make_index.py'
    if not maker.is_file() or not index.is_file() or maker.resolve() != own:
        return []
    sys.path.insert(0, str(own.parent))
    try:
        with warnings.catch_warnings():
            warnings.simplefilter('ignore', ResourceWarning)
            import make_index
            generated = make_index.render()
    except Exception:
        return ['index.html could not be regenerated with tools/make_index.py']
    err = drift_error(index.read_text(encoding='utf-8'), generated)
    return [err] if err else []


def problems(root) -> list[str]:
    """Human-readable mismatches. Empty when the docs match the PDFs."""
    root = Path(root).resolve()
    errs = []
    pdfs = find_pdfs(root)
    facts = {}
    for rel in pdfs:
        count, err = _read_pages(root / rel, rel)
        if err:
            errs.append(err)
            continue
        facts[rel] = (count, (root / rel).stat().st_size)

    for name in DOCS:
        doc = root / name
        if not doc.is_file():
            errs.append(f'{name} is missing')
            continue
        text = _strip_comments(doc.read_text(encoding='utf-8'))
        errs.extend(_link_errors(text, root, doc, name))
        refs = _referenced_pdfs(text, root, doc)
        for rel in pdfs:
            if rel not in refs:
                errs.append(f'{rel} is not linked or listed in {name}')
        if name == 'README.md':
            errs.extend(_page_errors(_readme_page_claims(text, root, doc), facts, name))
        else:
            page_claims, size_claims = _html_claims(text, root, doc)
            errs.extend(_page_errors(page_claims, facts, name))
            errs.extend(_size_errors(size_claims, facts))

    errs.extend(_index_drift(root))
    return sorted(set(errs))


def main(argv=None) -> int:
    argv = list(sys.argv[1:] if argv is None else argv)
    root = Path(argv[0]) if argv else Path(__file__).resolve().parents[1]
    errs = problems(root)
    count = len(find_pdfs(root))
    if errs:
        noun = 'mismatch' if len(errs) == 1 else 'mismatches'
        print(f'FAIL manifest ({count} PDFs, {len(errs)} {noun}):')
        for err in errs:
            print(f'  {err}')
        return 1
    noun = 'PDF' if count == 1 else 'PDFs'
    print(f'PASS {count} {noun}: README.md and index.html match page counts, sizes and links')
    return 0


if __name__ == '__main__':
    sys.exit(main())
