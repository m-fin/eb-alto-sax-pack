"""Build index.html: a static download page listing every volume and file, for GitHub Pages.

    python3 tools/make_index.py          # write index.html
    python3 tools/make_index.py --check  # exit 1 if index.html is stale, a listed file is missing,
                                          # or a page count in README.md doesn't match the PDF

The Vol. 1 list comes from ITEMS in tools/combine.py (read with ast, so nothing gets rebuilt).
Page counts and file sizes come from the PDFs themselves. Needs pypdf.
"""
import ast, html, os, re, sys
from pypdf import PdfReader

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..')
P = lambda f: os.path.join(ROOT, f)


def combine_items():
    tree = ast.parse(open(P('tools/combine.py'), encoding='utf-8').read())
    for node in tree.body:
        if isinstance(node, ast.Assign) and any(getattr(t, 'id', '') == 'ITEMS' for t in node.targets):
            return ast.literal_eval(node.value)
    raise SystemExit('ITEMS not found in tools/combine.py')


def info(f):
    return len(PdfReader(P(f)).pages), os.path.getsize(P(f))


def size(b):
    return f'{b / 1048576:.1f} MB' if b >= 1048576 else f'{round(b / 1024)} KB'


SECTIONS = [  # (heading, intro, [(file, title, license)])
    ('Start here', 'Each combined PDF has a cover, a table of contents and PDF bookmarks.', [
        ('eb-alto-sax-practice-pack-COMBINED.pdf', 'Vol. 1: the full practice pack (everything below except the De Ville method)', 'CC0 + public domain'),
        ('vol2/eb-alto-sax-vol2-modern-jazz-etudes-COMBINED.pdf', 'Vol. 2: 40 Advanced Modern Jazz Études, with 2 concept pages', 'CC0'),
    ]),
]
GROUPS = {}
for group, f, desc, lic in combine_items():
    GROUPS.setdefault(group, []).append((f, desc, lic))
INTRO = {
    'Reference': 'Scales, runs, long tones and articulation over the full range.',
    'Modern jazz': 'ii–V–I lines, vocabulary sheets and one-page études over original changes.',
    'Sight-reading': 'Mixed meters, tuplets and key changes, one page each.',
    'Public domain': 'Bach transposed for alto (Mutopia editions) and pre-1931 scans. See SOURCES.md for why each is public domain.',
}
for g, rows in GROUPS.items():
    SECTIONS.append((f'Vol. 1: {g}', INTRO.get(g, ''), rows))
SECTIONS.append(('Vol. 2: single file', 'The 40 études without the cover and concept pages.', [
    ('vol2/pdf/vol2-modern-jazz-etudes.pdf', '40 Advanced Modern Jazz Études', 'CC0')]))
SECTIONS.append(('Reference method (not in the combined PDF)', '', [
    ('pd-scans/pd-deville-universal-method-saxophone-fischer-1908.pdf', 'P. De Ville, Universal Method for the Saxophone (Carl Fischer, 1908/1911)', 'PD')]))

SITE = 'https://m-fin.github.io/eb-alto-sax-pack/'
REPO = 'https://github.com/m-fin/eb-alto-sax-pack'
DESC = 'Free, print-ready E♭ alto saxophone etudes and studies: 124 original CC0 modern-jazz and sight-reading etudes plus public-domain classics.'

CSS = """:root{color-scheme:light dark;--bg:#fbfaf7;--fg:#1d1d1f;--mut:#5c5c66;--line:#ddd8cc;--acc:#8a4b00}
@media (prefers-color-scheme:dark){:root{--bg:#141414;--fg:#ececec;--mut:#a6a6ad;--line:#333;--acc:#f2a541}}
*{box-sizing:border-box}body{margin:0;background:var(--bg);color:var(--fg);font:16px/1.55 system-ui,-apple-system,Segoe UI,Roboto,sans-serif}
main{max-width:960px;margin:0 auto;padding:2rem 1rem 4rem}h1{font-size:1.9rem;margin:.2rem 0}h2{font-size:1.15rem;margin:2.2rem 0 .3rem}
p{margin:.4rem 0}.mut{color:var(--mut)}a{color:var(--acc)}a:focus-visible{outline:3px solid var(--acc);outline-offset:2px}
.skip{position:absolute;left:-999px}.skip:focus{left:1rem;top:1rem;background:var(--bg);padding:.4rem .6rem}
table{width:100%;border-collapse:collapse;margin-top:.5rem}th,td{text-align:left;padding:.5rem .4rem;border-bottom:1px solid var(--line);vertical-align:top}
th{font-size:.8rem;text-transform:uppercase;letter-spacing:.04em;color:var(--mut)}td.n{white-space:nowrap;text-align:right}
footer{margin-top:3rem;color:var(--mut);font-size:.9rem}"""


def render():
    out, total = [], 0
    for head, intro, rows in SECTIONS:
        sid = re.sub(r'[^a-z0-9]+', '-', head.lower()).strip('-')
        out.append(f'<section aria-labelledby="{sid}"><h2 id="{sid}">{html.escape(head)}</h2>')
        if intro:
            out.append(f'<p class="mut">{html.escape(intro)}</p>')
        out.append('<table><thead><tr><th scope="col">Download</th><th scope="col" class="n">Pages</th><th scope="col" class="n">Size</th><th scope="col">License</th></tr></thead><tbody>')
        for f, title, lic in rows:
            pages, b = info(f)
            total += 1
            out.append(f'<tr><td><a href="{html.escape(f)}" download>{html.escape(title)}</a><br><span class="mut">{html.escape(os.path.basename(f))}</span></td>'
                       f'<td class="n">{pages}</td><td class="n">{size(b)}</td><td>{html.escape(lic)}</td></tr>')
        out.append('</tbody></table></section>')
    return f"""<!doctype html>
<html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>E♭ Alto Sax Advanced Practice Pack: downloads</title>
<meta name="description" content="{DESC}">
<link rel="canonical" href="{SITE}">
<link rel="icon" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 32 32'%3E%3Crect width='32' height='32' rx='6' fill='%23141414'/%3E%3Ctext x='16' y='25' font-size='24' text-anchor='middle' fill='%23f2a541' font-family='serif'%3E%E2%99%AD%3C/text%3E%3C/svg%3E">
<meta property="og:type" content="website"><meta property="og:url" content="{SITE}">
<meta property="og:title" content="E♭ Alto Sax Advanced Practice Pack"><meta property="og:description" content="{DESC}">
<meta property="og:image" content="{SITE}site/og.png"><meta property="og:image:width" content="1200"><meta property="og:image:height" content="630">
<meta property="og:image:alt" content="The pack's title next to the first page of the original etude Glass Harbor">
<meta name="twitter:card" content="summary_large_image">
<style>{CSS}</style></head><body><a class="skip" href="#main">Skip to downloads</a>
<main id="main"><header><p class="mut">Matthew "Frog" Finley</p><h1>E♭ Alto Sax Advanced Practice Pack</h1>
<p>Print-ready reading material for <strong>E♭ alto saxophone</strong>, in written alto pitch on US Letter. Print at 100% ("Actual size").
Original material is <a href="{REPO}/blob/main/LICENSE">CC0 1.0</a>; public-domain items stay public domain (<a href="{REPO}/blob/main/SOURCES.md">sources and reasoning</a>).
The combined PDFs are also attached to each <a href="{REPO}/releases">release</a>.</p></header>
{chr(10).join(out)}
<footer><p>{total} files. Generated by <code>tools/make_index.py</code> from the PDFs in this repository.
Source, LilyPond files and generators: <a href="https://github.com/m-fin/eb-alto-sax-pack">github.com/m-fin/eb-alto-sax-pack</a>.</p></footer>
</main></body></html>
"""


def readme_errors():
    errs = []
    for line in open(P('README.md'), encoding='utf-8'):
        m = re.match(r'\|\s*`([^`]+\.pdf)`\s*\|\s*(\d+)\s*\|', line)
        if m:
            f, n = m.group(1), int(m.group(2))
            if not os.path.exists(P(f)):
                errs.append(f'README lists missing file {f}')
            elif info(f)[0] != n:
                errs.append(f'README says {f} has {n} pages, the PDF has {info(f)[0]}')
    for f, n in re.findall(r'\[`([^`]+\.pdf)`\]\([^)]*\)\s*\((\d+) pages', open(P('README.md'), encoding='utf-8').read()):
        if info(f)[0] != int(n):
            errs.append(f'README says {f} has {n} pages, the PDF has {info(f)[0]}')
    return errs


if __name__ == '__main__':
    missing = [f for _, _, rows in SECTIONS for f, _, _ in rows if not os.path.exists(P(f))]
    if missing:
        raise SystemExit('missing: ' + ', '.join(missing))
    page = render()
    if '--check' in sys.argv:
        errs = readme_errors()
        if not os.path.exists(P('index.html')) or open(P('index.html'), encoding='utf-8').read() != page:
            errs.append('index.html is stale: run python3 tools/make_index.py')
        tracked = {f for _, _, rows in SECTIONS for f, _, _ in rows}
        for d in ('pdf', 'vol2/pdf', 'pd-scans'):
            for f in sorted(os.listdir(P(d))):
                if f.endswith('.pdf') and f'{d}/{f}' not in tracked:
                    errs.append(f'{d}/{f} is not listed on the index page')
        print('\n'.join('FAIL ' + e for e in errs) or f'PASS index.html up to date, {len(tracked)} files listed, README page counts match')
        sys.exit(1 if errs else 0)
    open(P('index.html'), 'w', encoding='utf-8').write(page)
    print('wrote index.html')
