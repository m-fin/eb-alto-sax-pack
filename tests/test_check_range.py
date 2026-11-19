"""Synthetic LilyPond snippets for the written-pitch range parser."""
import pathlib
import sys
import unittest

ROOT = pathlib.Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'tools'))

import check_range as cr  # noqa: E402


def midis(src):
    return [h.midi for h in cr.collect_source(src)]


class PitchTests(unittest.TestCase):
    def test_absolute_octaves(self):
        # LilyPond absolute: c' is middle C (C4), unmarked c is C3, bes is Bb3.
        self.assertEqual(midis(r"\score { bes4 c4 c'4 c''4 fis'''4 }"),
                         [58, 48, 60, 72, 90])

    def test_dutch_flats_and_cautionary(self):
        self.assertEqual(midis(r"\score { es4 as4 ees'4 aes'4 g!4 f''?4 }"),
                         [51, 56, 63, 68, 55, 77])

    def test_relative_scale_and_octave_marks(self):
        self.assertEqual(midis(r"\score { \relative c' { c d e f g a b c } }"),
                         [60, 62, 64, 65, 67, 69, 71, 72])
        self.assertEqual(midis(r"\score { \relative c'' { c g c f, } }"),
                         [72, 67, 72, 65])
        # Closest diatonic neighbour, then the written octave mark.
        self.assertEqual(midis(r"\score { \relative c' { g d' b' } }"),
                         [55, 62, 71])

    def test_relative_chord_uses_first_note_as_exit(self):
        self.assertEqual(midis(r"\score { \relative c' { <c e g> c } }"),
                         [60, 64, 67, 60])

    def test_simultaneous_voices_chain_relative_octave(self):
        # LilyPond threads relative octave through every voice of << >>.
        # From C4: g is G3; e follows that G3 so it is E3; the next c follows E3.
        self.assertEqual(
            midis(r"\score { \relative c' { c << { g } \\ { e } >> c } }"),
            [60, 55, 52, 48])

    def test_transpose(self):
        # c -> a, is down a minor third (BWV 1013). c -> a' is up 21 (BWV 1009).
        self.assertEqual(midis(r"\score { \transpose c a, { c'4 d'4 e'4 } }"),
                         [57, 59, 61])
        self.assertEqual(midis(r"\score { \transpose c a' { c4 } }"), [69])

    def test_raise_low_and_top_note(self):
        # bes, is Bb2; one octave up is the instrument's low Bb.
        # a, is A2; one octave up is A3, still below Bb3.
        self.assertEqual(midis(r"""
            raiseLow = #(define-music-function (m) (ly:music?) m)
            topNote = #(define-music-function (m) (ly:music?) m)
            \score { \raiseLow { bes,4 a,4 } \topNote { <c' e' g'>4 } }
        """), [58, 57, 67])

    def test_key_does_not_imply_accidentals(self):
        self.assertEqual(midis(r"\score { \key g \major f4 fis4 }"), [53, 54])

    def test_grace_and_rests(self):
        hits = cr.collect_source(r"\score { \acciaccatura e'8 f'4 r4 s4 }")
        self.assertEqual([h.midi for h in hits], [64, 65])
        self.assertEqual(hits[0].bar, 1)

    def test_bar_numbers(self):
        hits = cr.collect_source(r"""\score { c'4 d'4 | e'4 | \bar "|." f'4 }""")
        by_pitch = {h.midi: h.bar for h in hits}
        self.assertEqual(by_pitch[60], 1)
        self.assertEqual(by_pitch[62], 1)
        self.assertEqual(by_pitch[64], 2)
        self.assertEqual(by_pitch[65], 3)

    def test_chordnames_ignored(self):
        src = r"""
        \score { <<
          \new ChordNames \chordmode { c'''1*4/4:m7 g,,1:7.5+.9+ }
          \new Staff { bes4 c'4 }
        >> }
        """
        self.assertEqual(midis(src), [58, 60])

    def test_ossia_allows_altissimo_only(self):
        src = r"""
        \score { <<
          { fis'''4 g'''4 }
          \new Staff \with { alignAboveContext = "main" fontSize = #-3 } { c''''4 bes,4 }
        >> }
        """
        hits = cr.collect_source(src)
        bad = cr.violations(hits)
        self.assertTrue(any('g' in b and 'above' in b for b in bad))
        self.assertTrue(any('bes' in b and 'below' in b for b in bad))
        self.assertFalse(any("c''''" in b for b in bad))

    def test_harmonic_and_overtone_bookpart(self):
        self.assertEqual(cr.violations(cr.collect_source(
            r"\score { g'''4\harmonic bes4 }")), [])
        self.assertTrue(cr.violations(cr.collect_source(
            r"\score { g'''4 bes4 }")))
        src = r"""
        \bookpart { \header { title = "Overtone Series & Lip Slurs" }
          \score { \new Staff { aes'''4 f'''4 } } }
        """
        self.assertEqual(cr.violations(cr.collect_source(src)), [])

    def test_variable_transpose_include_style(self):
        src = r"""
        theme = { e''4 a''4 }
        \score { \transpose c a, \theme }
        """
        # E5/A5 down a minor third.
        self.assertEqual(midis(src), [73, 78])


class RepoTests(unittest.TestCase):
    def test_generator_range_constants(self):
        import common
        self.assertEqual((common.LOW, common.HIGH), (cr.LOW, cr.HIGH))

    def test_reference_scales_span_documented_range(self):
        hits = cr.collect_file(ROOT / 'src/01-ref-major-scales-arpeggios.ly')
        played = [h.midi for h in hits if not h.ossia]
        self.assertIn(cr.LOW, played)
        self.assertIn(cr.HIGH, played)
        self.assertEqual(cr.violations(hits), [])

    def test_pack_sources_parse(self):
        files = cr.pack_files(ROOT)
        self.assertGreaterEqual(len(files), 12)
        for path in files:
            hits = cr.collect_file(path)
            self.assertTrue(hits, path)
            self.assertEqual(cr.violations(hits), [], path)


if __name__ == '__main__':
    unittest.main()
