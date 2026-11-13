\version "2.24.4"
\paper { #(set-paper-size "letter") top-margin = 12\mm bottom-margin = 12\mm left-margin = 15\mm right-margin = 15\mm print-all-headers = ##t }
\include "mutopia/bwv1007/bwv1007_prelude.ly"
\include "mutopia/bwv1007/bwv1007_allemande.ly"
\include "mutopia/bwv1007/bwv1007_courante.ly"
\include "mutopia/bwv1007/bwv1007_sarabande.ly"
\include "mutopia/bwv1007/bwv1007_menuet_i.ly"
\include "mutopia/bwv1007/bwv1007_menuet_ii.ly"
\include "mutopia/bwv1007/bwv1007_gigue.ly"

raiseLow = #(define-music-function (m) (ly:music?)
  (map-some-music
    (lambda (x)
      (let ((p (ly:music-property x 'pitch)))
        (if (and (ly:pitch? p) (< (ly:pitch-semitones p) -2))
            (begin (set! (ly:music-property x 'pitch) (ly:pitch-transpose p (ly:make-pitch 1 0 0))) x)
            #f)))
    m))

topNote = #(define-music-function (m) (ly:music?)
  (map-some-music
    (lambda (x)
      (if (music-is-of-type? x 'event-chord)
          (let* ((els (ly:music-property x 'elements))
                 (notes (filter (lambda (e) (music-is-of-type? e 'note-event)) els))
                 (others (filter (lambda (e) (not (music-is-of-type? e 'note-event))) els)))
            (if (> (length notes) 1)
                (let ((top (car (sort notes (lambda (a b) (ly:pitch<? (ly:music-property b 'pitch) (ly:music-property a 'pitch)))))))
                  (set! (ly:music-property x 'elements) (cons top others))))
            x)
          #f))
    m))
\book {
\score { \new Staff \with { midiInstrument = "alto sax" } { \clef treble \raiseLow \topNote \transpose c a { \prelude } } \layout { indent = 0 } \midi { } \header { title = "Cello Suite No. 1, BWV 1007" subtitle = "E♭ alto sax · written in E major (sounds G major, 8va above cello)" composer = "J. S. Bach (1685–1750)" arranger = \markup \small \column { "Alto transposition: CC0" "Notes below low B♭ raised 8va; double-stops → top note" }  piece = "Prélude" copyright = "Music: public domain. Source typesetting: Mutopia Project (A. Scherer, after Schirmer 1916), public domain. Alto transposition: CC0." tagline = ##f } }
\score { \new Staff \with { midiInstrument = "alto sax" } { \clef treble \raiseLow \topNote \transpose c a { \allemande } } \layout { indent = 0 } \midi { } \header { title = ##f subtitle = ##f composer = ##f arranger = ##f  piece = "Allemande" copyright = "Music: public domain. Source typesetting: Mutopia Project (A. Scherer, after Schirmer 1916), public domain. Alto transposition: CC0." tagline = ##f } }
\score { \new Staff \with { midiInstrument = "alto sax" } { \clef treble \raiseLow \topNote \transpose c a { \courante } } \layout { indent = 0 } \midi { } \header { title = ##f subtitle = ##f composer = ##f arranger = ##f  piece = "Courante" copyright = "Music: public domain. Source typesetting: Mutopia Project (A. Scherer, after Schirmer 1916), public domain. Alto transposition: CC0." tagline = ##f } }
\score { \new Staff \with { midiInstrument = "alto sax" } { \clef treble \raiseLow \topNote \transpose c a { \sarabande } } \layout { indent = 0 } \midi { } \header { title = ##f subtitle = ##f composer = ##f arranger = ##f  piece = "Sarabande" copyright = "Music: public domain. Source typesetting: Mutopia Project (A. Scherer, after Schirmer 1916), public domain. Alto transposition: CC0." tagline = ##f } }
\score { \new Staff \with { midiInstrument = "alto sax" } { \clef treble \raiseLow \topNote \transpose c a { \menuetI } } \layout { indent = 0 } \midi { } \header { title = ##f subtitle = ##f composer = ##f arranger = ##f  piece = "Menuet I" copyright = "Music: public domain. Source typesetting: Mutopia Project (A. Scherer, after Schirmer 1916), public domain. Alto transposition: CC0." tagline = ##f } }
\score { \new Staff \with { midiInstrument = "alto sax" } { \clef treble \raiseLow \topNote \transpose c a { \menuetII } } \layout { indent = 0 } \midi { } \header { title = ##f subtitle = ##f composer = ##f arranger = ##f  piece = "Menuet II" copyright = "Music: public domain. Source typesetting: Mutopia Project (A. Scherer, after Schirmer 1916), public domain. Alto transposition: CC0." tagline = ##f } }
\score { \new Staff \with { midiInstrument = "alto sax" } { \clef treble \raiseLow \topNote \transpose c a { \gigue } } \layout { indent = 0 } \midi { } \header { title = ##f subtitle = ##f composer = ##f arranger = ##f  piece = "Gigue" copyright = "Music: public domain. Source typesetting: Mutopia Project (A. Scherer, after Schirmer 1916), public domain. Alto transposition: CC0." tagline = ##f } }
}
