"""Synthetic PDFs, Markdown and HTML for the downloads manifest check."""
import io
import pathlib
import sys
import tempfile
import unittest
from contextlib import redirect_stdout

ROOT = pathlib.Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'tools'))

import check_manifest as cm  # noqa: E402
from pypdf import PdfWriter  # noqa: E402


def human_size(nbytes):
    """Same rounding the downloads page uses: whole KB, or MB to one decimal."""
    if nbytes >= 1048576:
        return f'{nbytes / 1048576:.1f} MB'
    return f'{round(nbytes / 1024)} KB'


class ManifestFixture(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.root = pathlib.Path(self.tmp.name)
        self.addCleanup(self.tmp.cleanup)

    def make_pdf(self, rel, pages):
        path = self.root / rel
        path.parent.mkdir(parents=True, exist_ok=True)
        writer = PdfWriter()
        for _ in range(pages):
            writer.add_blank_page(width=612, height=792)
        with path.open('wb') as fh:
            writer.write(fh)
        return path

    def write(self, rel, text):
        path = self.root / rel
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text, encoding='utf-8')
        return path

    def docs_for(self, rows, readme_extra='', index_extra=''):
        """rows is (rel, pages). Page counts and sizes match the files."""
        readme = ['# Pack', '', '| File | Pages | What |', '|---|---:|---|']
        html = ['<table>']
        for rel, pages in rows:
            size = human_size((self.root / rel).stat().st_size)
            readme.append(f'| `{rel}` | {pages} | a file |')
            readme.append(f'[`{rel}`]({rel}) ({pages} pages).')
            html.append(
                '<tr>'
                f'<td><a href="{rel}">{rel}</a></td>'
                f'<td class="n">{pages}</td>'
                f'<td class="n">{size}</td>'
                '</tr>'
            )
        html.append('</table>')
        self.write('guide.md', 'guide\n')
        readme.append('[guide](guide.md#usage)')
        readme.append('[web](https://example.com/missing.pdf)')
        readme.append('[top](#top)')
        readme.append(readme_extra)
        html.append('<a href="https://example.com/no-such.pdf">ext</a>')
        html.append('<a href="#main">skip</a>')
        html.append('<link rel="icon" href="data:image/svg+xml,abc">')
        html.append('<img src="guide.md" alt="">')
        html.append(index_extra)
        self.write('README.md', '\n'.join(readme) + '\n')
        self.write('index.html', '\n'.join(html) + '\n')


class FindTests(ManifestFixture):
    def test_find_pdfs_limits_itself_to_pack_directories(self):
        for rel in (
            'pdf/a.pdf',
            'pd-scans/nested/b.pdf',
            'vol2/pdf/c.pdf',
            'vol2/d-COMBINED.pdf',
            'root-COMBINED.pdf',
            'src/skip.pdf',
            'tools/skip.pdf',
        ):
            self.make_pdf(rel, 1)
        self.assertEqual(cm.find_pdfs(self.root), [
            'pd-scans/nested/b.pdf',
            'pdf/a.pdf',
            'root-COMBINED.pdf',
            'vol2/d-COMBINED.pdf',
            'vol2/pdf/c.pdf',
        ])


class MatchTests(ManifestFixture):
    def test_matching_docs_pass(self):
        rows = [
            ('pdf/a.pdf', 2),
            ('pd-scans/b.pdf', 1),
            ('vol2/c.pdf', 3),
            ('pack-COMBINED.pdf', 4),
        ]
        for rel, pages in rows:
            self.make_pdf(rel, pages)
        self.docs_for(rows)
        self.assertEqual(cm.problems(self.root), [])

    def test_breakdown_phrase_is_not_a_file_page_count(self):
        self.make_pdf('vol2/pack.pdf', 43)
        self.docs_for(
            [('vol2/pack.pdf', 43)],
            readme_extra=(
                'See [`vol2/pack.pdf`](vol2/pack.pdf)\n'
                '(43 pages: cover and contents, 2 pages of concepts, then 40 one-page etudes).\n'
            ),
        )
        self.assertEqual(cm.problems(self.root), [])

    def test_external_anchor_and_data_links_are_ignored(self):
        self.make_pdf('pdf/a.pdf', 1)
        self.docs_for([('pdf/a.pdf', 1)])
        self.assertEqual(cm.problems(self.root), [])

    def test_dot_slash_and_percent_encoding_count_as_listed(self):
        self.make_pdf('pdf/a b.pdf', 2)
        size = human_size((self.root / 'pdf/a b.pdf').stat().st_size)
        self.write('README.md', 'See [`./pdf/a b.pdf`](./pdf/a%20b.pdf) (2 pages).\n')
        self.write('index.html', (
            '<tr><td><a href="./pdf/a%20b.pdf">A</a></td>'
            f'<td class="n">2</td><td class="n">{size}</td></tr>\n'
        ))
        self.assertEqual(cm.problems(self.root), [])

    def test_directory_link_is_ok(self):
        self.make_pdf('pdf/a.pdf', 1)
        self.docs_for([('pdf/a.pdf', 1)], readme_extra='[dir](pdf/)\n')
        self.assertEqual(cm.problems(self.root), [])


class MismatchTests(ManifestFixture):
    def test_pdf_omitted_from_readme(self):
        self.make_pdf('pdf/a.pdf', 1)
        self.make_pdf('pdf/b.pdf', 2)
        self.docs_for([('pdf/a.pdf', 1)])
        size = human_size((self.root / 'pdf/b.pdf').stat().st_size)
        index = (self.root / 'index.html').read_text(encoding='utf-8')
        index += (
            '<tr><td><a href="pdf/b.pdf">B</a></td>'
            f'<td class="n">2</td><td class="n">{size}</td></tr>\n'
        )
        self.write('index.html', index)
        errs = cm.problems(self.root)
        self.assertIn('pdf/b.pdf is not linked or listed in README.md', errs)
        self.assertFalse(any('pdf/b.pdf' in e and 'index.html' in e and 'not linked' in e for e in errs))

    def test_directory_mention_does_not_list_the_pdf(self):
        self.make_pdf('vol2/pdf/etudes.pdf', 2)
        size = human_size((self.root / 'vol2/pdf/etudes.pdf').stat().st_size)
        self.write('README.md', 'The engraved PDF is in `vol2/pdf/`.\n')
        self.write('index.html', (
            '<tr><td><a href="vol2/pdf/etudes.pdf">E</a></td>'
            f'<td class="n">2</td><td class="n">{size}</td></tr>\n'
        ))
        errs = cm.problems(self.root)
        self.assertIn('vol2/pdf/etudes.pdf is not linked or listed in README.md', errs)

    def test_pdf_omitted_from_index(self):
        self.make_pdf('pdf/a.pdf', 1)
        self.docs_for([('pdf/a.pdf', 1)])
        self.write('index.html', '<p>No downloads yet.</p>\n<a href="https://example.com/a.pdf">x</a>\n')
        errs = cm.problems(self.root)
        self.assertIn('pdf/a.pdf is not linked or listed in index.html', errs)

    def test_missing_relative_links(self):
        self.make_pdf('pdf/a.pdf', 1)
        self.docs_for(
            [('pdf/a.pdf', 1)],
            readme_extra='[gone](notes/missing.md)\n![pic](images/cover.png)\n',
            index_extra='<a href="does-not-exist.html">nope</a><img src="site/og.png" alt="">\n',
        )
        errs = cm.problems(self.root)
        self.assertIn('README.md links to missing file notes/missing.md', errs)
        self.assertIn('README.md links to missing file images/cover.png', errs)
        self.assertIn('index.html links to missing file does-not-exist.html', errs)
        self.assertIn('index.html links to missing file site/og.png', errs)

    def test_fragment_on_a_missing_file_fails(self):
        self.make_pdf('pdf/a.pdf', 1)
        self.docs_for([('pdf/a.pdf', 1)], readme_extra='[g](missing.md#part)\n')
        errs = cm.problems(self.root)
        self.assertIn('README.md links to missing file missing.md', errs)

    def test_link_outside_the_repo_fails(self):
        self.make_pdf('pdf/a.pdf', 1)
        self.docs_for([('pdf/a.pdf', 1)], readme_extra='[out](../outside.txt)\n')
        errs = cm.problems(self.root)
        self.assertTrue(any('outside the repository' in e and '../outside.txt' in e for e in errs))

    def test_readme_table_and_prose_page_counts(self):
        self.make_pdf('pdf/a.pdf', 2)
        self.docs_for([('pdf/a.pdf', 2)])
        text = (self.root / 'README.md').read_text(encoding='utf-8')
        text = text.replace('| `pdf/a.pdf` | 2 |', '| `pdf/a.pdf` | 9 |')
        text = text.replace('[`pdf/a.pdf`](pdf/a.pdf) (2 pages).', '[`pdf/a.pdf`](pdf/a.pdf) (8 pages).')
        self.write('README.md', text)
        errs = cm.problems(self.root)
        self.assertIn('README.md says pdf/a.pdf has 9 pages, the PDF has 2', errs)
        self.assertIn('README.md says pdf/a.pdf has 8 pages, the PDF has 2', errs)

    def test_index_page_count(self):
        self.make_pdf('pdf/a.pdf', 2)
        self.docs_for([('pdf/a.pdf', 2)])
        text = (self.root / 'index.html').read_text(encoding='utf-8')
        text = text.replace('<td class="n">2</td>', '<td class="n">7</td>', 1)
        self.write('index.html', text)
        errs = cm.problems(self.root)
        self.assertIn('index.html says pdf/a.pdf has 7 pages, the PDF has 2', errs)

    def test_index_size_outside_rounding(self):
        self.make_pdf('pdf/a.pdf', 1)
        self.docs_for([('pdf/a.pdf', 1)])
        text = (self.root / 'index.html').read_text(encoding='utf-8')
        shown = human_size((self.root / 'pdf/a.pdf').stat().st_size)
        text = text.replace(f'<td class="n">{shown}</td>', '<td class="n">9 MB</td>', 1)
        self.write('index.html', text)
        errs = cm.problems(self.root)
        self.assertTrue(any('pdf/a.pdf' in e and '9 MB' in e and 'index.html' in e for e in errs))

    def test_unreadable_pdf(self):
        path = self.root / 'pdf' / 'bad.pdf'
        path.parent.mkdir(parents=True)
        path.write_bytes(b'not a pdf')
        self.write('README.md', '| `pdf/bad.pdf` | 1 |\n[`pdf/bad.pdf`](pdf/bad.pdf) (1 pages).\n')
        self.write('index.html', '<tr><td><a href="pdf/bad.pdf">bad</a></td><td class="n">1</td></tr>\n')
        errs = cm.problems(self.root)
        self.assertIn('pdf/bad.pdf could not be read as a PDF', errs)

    def test_missing_docs(self):
        self.make_pdf('pdf/a.pdf', 1)
        errs = cm.problems(self.root)
        self.assertIn('README.md is missing', errs)
        self.assertIn('index.html is missing', errs)


class SizeUnitTests(unittest.TestCase):
    def test_size_rounding_window(self):
        self.assertTrue(cm.size_ok('2 KB', 2048))
        self.assertTrue(cm.size_ok('2 KB', 2048 + 511))
        self.assertFalse(cm.size_ok('2 KB', 2048 + 600))
        self.assertTrue(cm.size_ok('1.5 MB', int(1.5 * 1048576)))
        self.assertTrue(cm.size_ok('1.5 MB', int(1.54 * 1048576)))
        self.assertFalse(cm.size_ok('1.5 MB', int(1.56 * 1048576)))
        self.assertTrue(cm.size_ok('3.8 MB', 4036314))
        self.assertTrue(cm.size_ok('22.0 MB', 23110992))
        self.assertFalse(cm.size_ok('about 2 KB', 2048))

    def test_drift_text(self):
        self.assertIsNone(cm.drift_error('same\n', 'same\n'))
        msg = cm.drift_error('old\n', 'new\n')
        self.assertIn('make_index.py', msg)


class MainTests(ManifestFixture):
    def test_main_exit_codes(self):
        self.make_pdf('pdf/a.pdf', 1)
        self.docs_for([('pdf/a.pdf', 1)])
        out = io.StringIO()
        with redirect_stdout(out):
            code = cm.main([str(self.root)])
        self.assertEqual(code, 0)
        self.assertIn('PASS', out.getvalue())
        self.assertIn('1 PDF', out.getvalue())

        self.write('index.html', '<p>empty</p>\n')
        out = io.StringIO()
        with redirect_stdout(out):
            code = cm.main([str(self.root)])
        self.assertEqual(code, 1)
        self.assertIn('FAIL', out.getvalue())
        self.assertIn('pdf/a.pdf', out.getvalue())


class RepoTests(unittest.TestCase):
    def test_repo_manifest_matches(self):
        self.assertEqual(cm.problems(ROOT), [])

    def test_workflow_wires_the_check(self):
        text = (ROOT / '.github/workflows/check.yml').read_text(encoding='utf-8')
        self.assertIn('python3 tools/check_manifest.py', text)
        self.assertIn('pypdf==', text)
        self.assertIn('contents: read', text)
        self.assertIn('python3 tools/make_index.py --check', text)
        self.assertIn('python3 tools/check_range.py', text)
        self.assertIn('python3 tools/check_drift.py', text)
        self.assertIn('python3 -m unittest discover -s tests -v', text)


if __name__ == '__main__':
    unittest.main()
