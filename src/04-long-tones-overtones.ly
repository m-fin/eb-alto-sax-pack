\version "2.24.4"

\paper {
  #(set-paper-size "letter")
  top-margin = 12\mm bottom-margin = 12\mm left-margin = 14\mm right-margin = 14\mm
  ragged-last-bottom = ##t
  markup-system-spacing.basic-distance = #8
  system-system-spacing.basic-distance = #13
}
\book {
\bookpart { \header { title = "Long Tones — Chromatic, Full Range" composer = "Original exercise — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"pp ‹ ff › pp on every written note, low B♭ to high F♯. Tuner on; no pitch sag on the diminuendo." \markup \vspace #0.6 
\score { \new Staff { \time 4/4 \tempo "Long tones" 4 = 60 \omit Score.BarNumber bes1\pp\< | bes1\ff\> | bes2\pp r2 |
b1\pp\< | b1\ff\> | b2\pp r2 |
c'1\pp\< | c'1\ff\> | c'2\pp r2 |
des'1\pp\< | des'1\ff\> | des'2\pp r2 |
d'1\pp\< | d'1\ff\> | d'2\pp r2 |
ees'1\pp\< | ees'1\ff\> | ees'2\pp r2 |
e'1\pp\< | e'1\ff\> | e'2\pp r2 |
f'1\pp\< | f'1\ff\> | f'2\pp r2 |
ges'1\pp\< | ges'1\ff\> | ges'2\pp r2 |
g'1\pp\< | g'1\ff\> | g'2\pp r2 |
aes'1\pp\< | aes'1\ff\> | aes'2\pp r2 |
a'1\pp\< | a'1\ff\> | a'2\pp r2 |
bes'1\pp\< | bes'1\ff\> | bes'2\pp r2 |
b'1\pp\< | b'1\ff\> | b'2\pp r2 |
c''1\pp\< | c''1\ff\> | c''2\pp r2 |
des''1\pp\< | des''1\ff\> | des''2\pp r2 |
d''1\pp\< | d''1\ff\> | d''2\pp r2 |
ees''1\pp\< | ees''1\ff\> | ees''2\pp r2 |
e''1\pp\< | e''1\ff\> | e''2\pp r2 |
f''1\pp\< | f''1\ff\> | f''2\pp r2 |
ges''1\pp\< | ges''1\ff\> | ges''2\pp r2 |
g''1\pp\< | g''1\ff\> | g''2\pp r2 |
aes''1\pp\< | aes''1\ff\> | aes''2\pp r2 |
a''1\pp\< | a''1\ff\> | a''2\pp r2 |
bes''1\pp\< | bes''1\ff\> | bes''2\pp r2 |
b''1\pp\< | b''1\ff\> | b''2\pp r2 |
c'''1\pp\< | c'''1\ff\> | c'''2\pp r2 |
des'''1\pp\< | des'''1\ff\> | des'''2\pp r2 |
d'''1\pp\< | d'''1\ff\> | d'''2\pp r2 |
ees'''1\pp\< | ees'''1\ff\> | ees'''2\pp r2 |
e'''1\pp\< | e'''1\ff\> | e'''2\pp r2 |
f'''1\pp\< | f'''1\ff\> | f'''2\pp r2 |
ges'''1\pp\< | ges'''1\ff\> | ges'''2\pp r2 \bar "|." } \layout { indent = 0 } } }
\bookpart { \header { title = "Overtone Series & Lip Slurs" composer = "Original exercise — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Finger the written fundamental; voice partials 2–6 (diamond heads) without changing fingering. Then slur the patterns." \markup \vspace #0.6 
\score { \new Staff { \time 4/4 \tempo "Overtones" 4 = 72-120 \omit Score.BarNumber \accidentalStyle forget bes2^\markup{\small "fing. low B♭"} bes'4\harmonic f''4\harmonic bes''4\harmonic d'''4\harmonic f'''4\harmonic f'''4\harmonic r2 \bar "||"
bes'8( f''8 bes''8 f''8 bes''8 d'''8 f'''8 d'''8) d'''8( f'''8 d'''8 bes''8 f''8 bes''8 f''8 bes'8) \bar "||" \break
b2^\markup{\small "fing. low B"} b'4\harmonic ges''4\harmonic b''4\harmonic ees'''4\harmonic ges'''4\harmonic ges'''4\harmonic r2 \bar "||"
b'8( ges''8 b''8 ges''8 b''8 ees'''8 ges'''8 ees'''8) ees'''8( ges'''8 ees'''8 b''8 ges''8 b''8 ges''8 b'8) \bar "||" \break
c'2^\markup{\small "fing. low C"} c''4\harmonic g''4\harmonic c'''4\harmonic e'''4\harmonic g'''4\harmonic g'''4\harmonic r2 \bar "||"
c''8( g''8 c'''8 g''8 c'''8 e'''8 g'''8 e'''8) e'''8( g'''8 e'''8 c'''8 g''8 c'''8 g''8 c''8) \bar "||" \break
des'2^\markup{\small "fing. low D♭"} des''4\harmonic aes''4\harmonic des'''4\harmonic f'''4\harmonic aes'''4\harmonic aes'''4\harmonic r2 \bar "||"
des''8( aes''8 des'''8 aes''8 des'''8 f'''8 aes'''8 f'''8) f'''8( aes'''8 f'''8 des'''8 aes''8 des'''8 aes''8 des''8) \bar "||" \break
d'2^\markup{\small "fing. low D"} d''4\harmonic a''4\harmonic d'''4\harmonic ges'''4\harmonic a'''4\harmonic a'''4\harmonic r2 \bar "||"
d''8( a''8 d'''8 a''8 d'''8 ges'''8 a'''8 ges'''8) ges'''8( a'''8 ges'''8 d'''8 a''8 d'''8 a''8 d''8) \bar "||" \break
ees'2^\markup{\small "fing. low E♭"} ees''4\harmonic bes''4\harmonic ees'''4\harmonic g'''4\harmonic bes'''4\harmonic bes'''4\harmonic r2 \bar "||"
ees''8( bes''8 ees'''8 bes''8 ees'''8 g'''8 bes'''8 g'''8) g'''8( bes'''8 g'''8 ees'''8 bes''8 ees'''8 bes''8 ees''8) \bar "||" \break
e'2^\markup{\small "fing. low E"} e''4\harmonic b''4\harmonic e'''4\harmonic aes'''4\harmonic b'''4\harmonic b'''4\harmonic r2 \bar "||"
e''8( b''8 e'''8 b''8 e'''8 aes'''8 b'''8 aes'''8) aes'''8( b'''8 aes'''8 e'''8 b''8 e'''8 b''8 e''8) \bar "||" \break \bar "|." } \layout { indent = 0 } } } }