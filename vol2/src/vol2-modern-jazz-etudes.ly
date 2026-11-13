\version "2.24.4"
#(set-global-staff-size 18.5)

\paper {
  #(set-paper-size "letter")
  top-margin = 12\mm bottom-margin = 12\mm left-margin = 14\mm right-margin = 14\mm
  ragged-last-bottom = ##t
  markup-system-spacing.basic-distance = #8
  system-system-spacing.basic-distance = #13
}
\book { \bookpart { \header { title = "Vol. 2 — Concepts" composer = "Original text and examples — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material, CC0 1.0." }
\markup \small \italic \wordwrap-string #"Every device here is general modern-jazz vocabulary. All lines in this volume are generated from these devices over original changes; none quotes, transcribes or paraphrases any recorded solo or composition." 
\markup { \vspace #0.6 \bold \large "Triad pairs" } \markup \wordwrap-string #"Two major triads a whole step apart, taken from the chord-scale (e.g. ♭III and IV over a minor 7th, ♭VI and ♭V over an altered dominant, I and II over a Lydian major 7th). Alternating them in 3-note inversions gives a six-note hexatonic sound with no avoid notes and a strong, angular contour."
\score { << \new ChordNames \chordmode { c1*32/16:m7 } \new Staff = "main" { \time 4/4 bes'16(\mf ees''16 g''16 f'''16->) c'''8 a''8 \tuplet 3/2 { bes''8( ees'''8-> g''8) } \tuplet 3/2 { c'''8( f'''8 a''8-^) } |
bes''8\ff g''8 ees'''8-> f''8 a''8 c'''8 bes''4 | \bar "||" } >> \layout { indent = 0 } }
\markup { \vspace #0.6 \bold \large "Pentatonic superimposition" } \markup \wordwrap-string #"A minor pentatonic placed on a non-root degree: on the 2nd of a minor 7th, the 3rd or 7th of a major 7th, the ♭3 of an altered dominant. Grouped in four-note cells (1-2-3-5, 3-2-1-5…) and sequenced through the range it sounds modern without leaving the harmony."
\score { << \new ChordNames \chordmode { f1*32/16:maj7 } \new Staff = "main" { \time 4/4 b'16\mf d''16 e''16-. a''16 e''16 g''16 a''16 d'''16 a''16-^ g''16 e''16 b'16 e''16 d''16 b'16-- g'16 |
b'16 a'16 g'16-> d'16 g'16 e'16 d'16 b16 \tuplet 3/2 { d'8 e'8 g'8 } b'4 | \bar "||" } >> \layout { indent = 0 } }
\markup { \vspace #0.6 \bold \large "Intervallic 4ths" } \markup \wordwrap-string #"Stacks of perfect fourths started from chord-scale tones, often broken with a step at the end of each group. Fourth shapes are fingering-friendly on sax, sound open and unresolved, and let a line cross two octaves in a few notes."
\score { << \new ChordNames \chordmode { d1*32/16:m7 } \new Staff = "main" { \time 4/4 \tuplet 3/2 { c''8-. g'8 d'8 } e'16-- a'16 e'16 b16 fis'16-> g'16 c''16 f''16 bes''8 f'8 |
ais'16 ees''16 des''16 e'16 a'16 d''16 g''16 f'16 \tuplet 3/2 { c'8 g'8 d'8-> } a'4 | \bar "||" } >> \layout { indent = 0 } }
\markup { \vspace #0.6 \bold \large "Side-slipping / outside-in-and-back" } \markup \wordwrap-string #"Play a clear shape a half step (or tritone) away from the harmony, then slide back to the same shape inside. The tension only works if both halves are rhythmically strong and the return lands on a guide tone (3rd or 7th)."
\score { << \new ChordNames \chordmode { a1*32/16:m7 } \new Staff = "main" { \time 4/4 \tuplet 3/2 { c''8 dis''8 aes''8 } f''16-> f''16 gis''16 c'''16 bes''16( bes''16 aes''16 dis''16) f''8 f''8 |
ees''8 ais'8-- c''16( c''16 e''16 g''16) d'''16-.( a''16 fis''16 g''16) c'''4 | \bar "||" } >> \layout { indent = 0 } }
\markup { \vspace #0.6 \bold \large "Wide intervals & octave displacement" } \markup \wordwrap-string #"Chord tones and tensions with every other note displaced by an octave, producing 7ths, 9ths and 10ths. Keep the air column steady and the tone even in both registers; slur the leaps first, then tongue them."
\score { << \new ChordNames \chordmode { g1*32/16:7.11+ } \new Staff = "main" { \time 4/4 d'''16\mf g''16 d'''16 b'16 d'''16 g''16 f'''16 d''16 e'''16( a''16-. f'''16 g''16) e'''16-- f''16 e'''16-> f''16-- |
f'''8 d''8-- b''8 e''8 b''8-> g'8-> a''4 | \bar "||" } >> \layout { indent = 0 } }
\markup { \vspace #0.6 \bold \large "Superimposition (tritone / half-step)" } \markup \wordwrap-string #"An arpeggio of the dominant a tritone or half step away from the written chord, resolved by step to a guide tone. Over altered dominants and static vamps it creates a clear second layer of harmony."
\score { << \new ChordNames \chordmode { g1*32/16:7.5+.9+ } \new Staff = "main" { \time 4/4 \tuplet 3/2 { cis''8( ais'8 ges'8) } e'16( cis'16 e'16-> fis'16) \tuplet 3/2 { ais'8-. cis''8 e''8 } fis''8 ais''8 |
\tuplet 3/2 { cis'''8( e'''8 cis'''8) } ais''16( ges''16 e''16 cis''16) ais'16 ges'16-^ e'16 cis'16 b4 | \bar "||" } >> \layout { indent = 0 } }
\markup { \vspace #0.6 \bold \large "Thirds cycles" } \markup \wordwrap-string #"Tonal centers a major third apart (e.g. C – A♭ – E), each approached by its own dominant or ii–V. Changes go by every two beats at high tempo, so target guide tones and connect them by the nearest motion."
\score { << \new ChordNames \chordmode { c1*32/16:maj7 } \new Staff = "main" { \time 4/4 c''16->(\mf a'16 fis'16 g'16) g'16 fis'16 e'16 d'16-. c'8-- b8-^ c'16-- d'16 e'16-> fis'16 |
g'8 gis'8-> a'16( b'16 c''16 d''16) a''16( fis''16 g''16 g''16) gis''4 | \bar "||" } >> \layout { indent = 0 } }
\markup { \vspace #0.6 \bold \large "Modern ii–V reharmonization" } \markup \wordwrap-string #"Tritone-substitute dominants (ii – ♭II7♯11 – I), backdoor progressions (iv7 – ♭VII7 – I), ii–V chains descending by whole steps, and ii–Vs with an inserted thirds cycle. Read the chord symbols first, then the line."
\score { << \new ChordNames \chordmode { d1*32/16:7.5+.9+ } \new Staff = "main" { \time 4/4 bes'16(\mf f''16 d'''16-> ees'''16) gis''16( c''16 bes'16 d'16) f'16( ees'16 c'16 gis'16-^) bes'8 f''8 |
\tuplet 3/2 { d'''8( ees'''8 gis''8) } c''8 bes'8 \tuplet 3/2 { d'8( f'8 ees'8) } c'4-- | \bar "||" } >> \layout { indent = 0 } }
\markup { \vspace #0.6 \bold \large "Odd meters" } \markup \wordwrap-string #"5/4, 7/8 (2+2+3), 9/8 (3+3+3), 11/8 (3+3+3+2) and 7/4. Beaming shows the grouping. Count the groups, not the eighth notes, and keep the long group relaxed."
\score { << \new ChordNames \chordmode { e1*32/16:sus4.7 } \new Staff = "main" { \time 4/4 b'16(\mf fis'16-. cis'16 dis'16) gis'16 cis''16 fis''16 e''16 fis'16->( b'16-> e''16-> d''16) gis'16( dis'16-> bes'16-> f'16) |
a'16 d''16 g''16-- c'''16 b'16->( fis'16 cis'16 dis'16) a'16 d''16-> g''16 f''16 gis'4 | \bar "||" } >> \layout { indent = 0 } }
\markup { \vspace #0.6 \bold \large "How to practise these etudes" } \markup \wordwrap-string #"Sight-read first at about 60% of the marked tempo without stopping. Then mark the three hardest bars, loop them, and bring the whole page up to tempo. Ossia staves (small, above the main staff) are optional altissimo versions of the same bar."
\score { << \new ChordNames \chordmode { b1*32/16:m7 } \new Staff = "main" { \time 4/4 b'16(\mf cis''16-> e''16 gis''16) e''16 fis''16 gis''16 cis'''16 gis''16( fis''16 e''16 b'16) e''8-> cis''8 |
b'16 fis'16 b'16-^ gis'16 fis'16 cis'16-> fis'16-> e'16 \tuplet 3/2 { cis'8( b8-^ cis'8--) } e'4 | \bar "||" } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "1. Cinder Grid" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Up swing · thirds cycles & reharmonized ii–Vs. Devices: wide, superimposition, outside-in, side-slip, wide enclosures. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { c1*8/16:m7 f1*8/16:7.5+.9+ bes1*16/16:maj7 aes1*8/16:m7 des1*8/16:7.5+.9+ fis1*16/16:maj7 e1*8/16:m7 a1*8/16:7.5+.9+ d1*16/16:maj7 ees1*8/16:maj7 bes1*8/16:7.5+.9+ g1*8/16:maj7 d1*8/16:7 b1*8/16:maj7 fis1*8/16:7 ees1*16/16:maj7 des1*16/16:m7 fis1*16/16:7 aes1*32/16:maj7 b1*16/16:m7 c1*8/16:m7 b1*8/16:m7 f1*16/16:7.5+.9+ b1*16/16:m7 fis1*8/16:m7 f1*8/16:7.11+ e1*16/16:maj7 } }
\new Staff = "main" { \time 4/4 \tempo "Up swing" 4 = 280 \accidentalStyle modern b'8\mf a'16-> ges'16 ees'16-.( b16 ees'16-^ ees'16) ees'16 gis'16 des''16 ges''16 f''8 ees'''8-^ |
e'''16 fis''16 f'''16-- e'''16 fis''8 f'''8 g''8 e'''8 f'''16 e'''16 fis''16 f'''16 |
e'''16 des'''16 a''16-- g''16 r16 e''16 des''16 b'16 b'16( des''16 d''8-.) r4 |
fis''8->\f e'''8 f'''8 g''8 \tuplet 6/4 { e'''16 f'''16 a''16 b''16 ais''16-- e'''16 } \tuplet 6/4 { fis''16-^ f'''16 fis''16-- e'''16-> f'''16 e'''16-. } |
f'''4-> \tuplet 3/2 { c'''8 b''8 e'''8 } \tuplet 3/2 { e'''8( fis''8 f'''8->) } fis''8 e'''8 |
ees'''8 cis'''8 bes''16( g''16-> ees''16 cis''16->) r8 bes'8 g'8 fis'8-> |
\tuplet 3/2 { g''8 bes'8 c'''8-> } c''16( d'''16 c''8->) \tuplet 6/4 { d''16( a'16 e'16-. ges'16 e'16 b16) } \tuplet 3/2 { ges'8 cis'8-> aes'8 } |
r4 g'4 e''8 cis''8-> d''8-^ ais''8 |
f''8( d''16 dis''16->) \tuplet 5/4 { d'''16 e'''16-> dis'''16-. e'''16 d'''16 } dis'''8 f'''8 e'''16 dis'''16 f'''16 e'''16-. |
\tuplet 6/4 { d''16( c'''16-> ees''16 f'''16 f''16 c'''16) } r4 ees''16-.( d'''16 ees''8) ees'''8 d''8-> |
\tuplet 3/2 { d''8 ges''8-. a''8 } c'''8->( d'''16 c'''16->) a''16( ges''16 d''16 c''16->) a'8 b'8-> |
ais'8-- g'8-> f'16 c'16-> f'16-. dis'16 \tuplet 3/2 { c'8->( c'8 b8) } \tuplet 3/2 { cis'8-. dis'8 e'8 } |
a''16( fis''16 g''16-> d'''16) e'''8 ees'''8-> r4 e'''8 d'''8-^ |
\tuplet 3/2 { ees'''8( des''8 b'8->) } c''8-> d'''16 e'''16-> ees'''16( d'''16 e'''16 ees'''16) d''8 e''16 ees''16-> |
d'''16 d''16 b''8 a'8 gis''16 fis'16-> a''8-. d''8-> \tuplet 3/2 { a''8 b'8 b''8-. } |
d''16-> ees'''16-- c''16 d'''16 r4 \tuplet 6/4 { f'''16( d'''16 c'''16 g''16 fis''16 cis''16) } e''8 b'8 |
bes'16( ges'16-> e'16 des'16->) e'16 ges'16 ais'8 des''16->( e''16 ges''16 ais''16) \tuplet 3/2 { des'''8-> e'''8-> ees'''8 } |
\tuplet 3/2 { f'''8( c'''8 d'''8) } a''16( c'''16-> f'''8->) e'''16-- e'''16 e'''16 e'''16 \tuplet 3/2 { e'''8( e'''8-> e'''8->) } |
\tuplet 6/4 { e'''16->( c'''16 d'''16 a''16 gis''16 fis''16) } dis''16-> b'16 dis''8 r4 \tuplet 3/2 { ees''8 e''8 f''8-- } |
f''8 d''8 ais'8-> gis'8 f'8 d'8 dis'4-> | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "2. Black Ice Run" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Burnout swing · thirds cycles & reharmonized ii–Vs. Devices: outside-in, bebop, triad pair, pentatonic, side-slip. Small staff = optional altissimo. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { e1*16/16:m7 f1*8/16:m7 e1*8/16:m7 bes1*16/16:7.5+.9+ e1*16/16:m7 a1*8/16:m7 d1*8/16:7.5+.9+ g1*8/16:m7 c1*8/16:7.5+.9+ f1*8/16:m7 bes1*8/16:7.5+.9+ ees1*8/16:m7 aes1*8/16:7.5+.9+ des1*16/16:maj7 e1*16/16:m7 a1*16/16:7 b1*32/16:maj7 aes1*8/16:m7 des1*8/16:7.5+.9+ fis1*8/16:m7 b1*8/16:7.5+.9+ e1*8/16:m7 a1*8/16:7.5+.9+ d1*8/16:m7 g1*8/16:7.5+.9+ c1*16/16:maj7 aes1*16/16:m7 des1*16/16:7 } }
\new Staff = "main" { \time 4/4 \tempo "Burnout swing" 4 = 320 \accidentalStyle modern d''8\mf b'8 g'16( a'16-> cis'8) e'8 d'8 b4 |
\tuplet 5/4 { f'16( d'16-. ees'16 ees'16 f'16) } g'8 aes'16 g'16-> \tuplet 3/2 { aes'8( dis'8 bes'8-.) } a'8( e'16 b16->) |
\tuplet 3/2 { bes'8( cis'8 ges'8->) } r4 aes'8-> b'8-> \tuplet 3/2 { e''8-> ges''8 bes''8-. } |
ais''8-^ c'''8 \tuplet 6/4 { f'''16( ees'''16 ees'''16 c'''16 g''16-^ bes''16->) } \tuplet 3/2 { bes''8 a''8-^ b''8-> } \tuplet 3/2 { cis'''8( d'''8 d'''8) } |
r8 des'''8 bes''16( a''16 g''8->) fis''16( b''16 a''16 d'''16) d'''8-. c'''8 |
\tuplet 6/4 { des'''16 aes''16-. ees''16 bes'16 b''16 bes''16-> } \tuplet 5/4 { f''16 c''16-. g'16 c'''16 f'''16 } \tuplet 3/2 { e'''8 dis'''8-> des'''8 } r4 |
\tuplet 5/4 { ees'''16 aes''16 c''16 bes'16-> d'16 } \tuplet 3/2 { f'8( ees'8-> c'8) } b8 cis'8 b4 |
c'8-^ des'8 r8 c'8-> \tuplet 3/2 { ees'8-^ c'8-> b8-^ } d'8-> ges'8 |
ees'8 c'8-> des'16 des'16 b16-> c'16-> \tuplet 3/2 { c'8 des'8 ees'8 } f'8 ees'8 |
r4 ees'16( c'16-^ c'8) c'8 b8 d'8 g'8-> |
\tuplet 3/2 { gis'8( cis''8 fis''8) } b''8 g'8 c''16 b'16 fis'16 cis'16 dis'16->( g'16 c''8) |
b'8 dis''16 fis''16 cis'''16 gis''16 f''16 fis''16 b''8 dis'''8 gis''8 cis'''8 |
\tuplet 3/2 { f'''8( fis''8 dis'''8) } b''16 cis''16 f''16 gis''16-> fis''8-^ dis''8-> r4 |
ees''4 f''4 e''16 des'''16 a''16-> b''16-> \tuplet 3/2 { d'''8-^ g''8 e''8-^ } |
r16 f''16 c''16-. b'16 bes'8 a'8 r16 cis'16-^ dis'16 aes'16 \tuplet 6/4 { ges'16( b16 b16 b16 c'16 dis'16->) } |
f'8 c'8 \tuplet 6/4 { g'16 d'16 cis'16 fis'16 b'16-> e''16 } dis''16( g''16 f''8) bes''8 g''8-. |
<< { ges''16 dis''16 f''8 c'''4 r4 b''8 ais''16-^ aes''16 } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { ges'''16^\markup{\tiny \italic "altiss. ad lib."} ees'''16 f'''8 c''''4 r4 b'''8 ais'''16 aes'''16 } >> |
\tuplet 6/4 { aes''16 g''16 fis''16-> e''16 d''16 e''16-> } fis''16( g''16 c'''16 ais''16) b''8 b''8 r8 c'''8 |
e'''16->(\mf g''16 c''8) a'16 d'16 ges'16-> ees'16 ges'16 b'16 des''16 f''16 aes''8 b''8 |
\tuplet 3/2 { c'''8-. d'''8 f'''8-> } f'''16( f'''16 d'''16-> c'''16) \tuplet 3/2 { b''8 ees'''8 ges''8 } f''4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "3. Neon Ladder" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Fast swing · thirds cycles & reharmonized ii–Vs. Devices: bebop, wide, wide enclosures, superimposition, triad pair. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { f1*8/16:m7 aes1*8/16:7 des1*8/16:maj7 e1*8/16:7 a1*8/16:maj7 bes1*8/16:7.5+.9+ ees1*16/16:maj7 e1*8/16:maj7 g1*8/16:7 c1*8/16:maj7 ees1*8/16:7 aes1*8/16:maj7 b1*8/16:7.5+.9+ e1*16/16:maj7 c1*16/16:m7 des1*8/16:m7 c1*8/16:m7 ges1*16/16:7.5+.9+ c1*16/16:m7 des1*8/16:maj7 e1*8/16:7 a1*8/16:maj7 c1*8/16:7 f1*8/16:maj7 aes1*8/16:7.5+.9+ des1*16/16:maj7 fis1*8/16:m7 b1*8/16:7.5+.9+ e1*8/16:m7 a1*8/16:7.5+.9+ d1*8/16:m7 g1*8/16:7.5+.9+ c1*8/16:m7 f1*8/16:7.5+.9+ } }
\new Staff = "main" { \time 4/4 \tempo "Fast swing" 4 = 260 \accidentalStyle modern c''16->\mf aes''16 ees'''8-. \tuplet 6/4 { f'''16-.( bes''16 d''16-> ees''16-> aes'16 c'16) } r8 des'8-. \tuplet 6/4 { bes'16( ges'16 ees'16-> aes'16 c'16 des'16->) } |
des'8 f'8-> aes'8-> ees'8-- r8 ees'8 d'8 cis'8 |
r8 cis'8 b8-> cis'8-> \tuplet 3/2 { e'8( cis'8 d'8) } \tuplet 5/4 { cis'16 ees'16 d'16 bes'16 g'16 } |
a''16( b''16 bes''8) \tuplet 3/2 { a'8( b'8-> bes'8) } r4 ees'16 cis'16-> d'16 a'16 |
gis'16( ais'16 d''8) f''16( gis''16-> ais''16 gis''16) \tuplet 3/2 { g''8( e'''8 f'''8) } c'''8 ais''8-> |
e'''8 b''8-- \tuplet 3/2 { d''8( a''8 g'8->) } fis'16( a'16 c''8) d''16( fis''16 a''16 g''16) |
r4 \tuplet 5/4 { aes''16-^( c'''16 ees'''16 f'''16 d'''16->) } d'''8-. e'''8 dis'''16( fis''16 gis''8-.) |
gis''8-> f''8-> d''16 ais'16 gis'8 \tuplet 3/2 { f'8( d'8 f'8) } gis'8 gis'8 |
\tuplet 5/4 { g'16( bes'16 ees''16 c'''16 a''16) } r4 \tuplet 6/4 { f''16->( g''16 bes''16-> ees'''16 a''16 c'''16->) } f'''8-- ees'''8 |
\tuplet 3/2 { ges''8( ees'''8-> e'''8) } ges''16->( ees'''16 e'''16-> ees'''16) ees'''16 g''16-- bes''8 c'''8 a''8 |
f'''4-- dis'''8->( e'''16 cis''16->) \tuplet 3/2 { ees''8->( d''8 a''8->) } b''8 bes''16-> f'''16 |
f'''8-> e'''8-> r4 ees'''16 d'''16 c'''16 a''16 bes''16 bes''16 a''16 g''16 |
f''8( aes''16 des'''16) \tuplet 3/2 { ees'''8-. bes''8 g''8-- } \tuplet 6/4 { fis''16 a''16-- d'''16 e'''16-> b''16 gis''16 } a''16 fis''16 d''8 |
cis''4 r4 d''4 \tuplet 3/2 { bes'8( f'8 g'8) } |
g''8 e''8 f''8 fis'8 g'16 e'16 cis'8 e'16-> g'16 a'16-> ges'16 |
ges'16 d'16 c'8 \tuplet 3/2 { d'8 fis'8 a'8 } c''8 d''8-> r8 c''8 |
cis''16( a'16 e'16 fis'16) \tuplet 5/4 { b16->( dis'16-> cis'16-^ e'16 a'16) } g'16( b'16-> d''16-- c'''16) a''8-- f''8 |
e''8 fis''8 r4 f''8 a'8 c'8 bes'8 |
b'16( cis''16 f''16-> gis''16) b''16-> cis'''16-> f'''16-> f'''16 f'''8-. cis'''8 b''8-> b''8-. |
bes'16-> c'''16 d''8-. \tuplet 6/4 { d'''16 d''16-. a''16 c''16 d'''16-> bes'16 } a'8 gis'8 a'4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "4. Torque" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Up swing · thirds cycles & reharmonized ii–Vs. Devices: wide enclosures, wide, bebop, superimposition, 4ths. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { aes1*16/16:m7 a1*8/16:m7 aes1*8/16:m7 d1*16/16:7.5+.9+ aes1*16/16:m7 f1*16/16:m7 bes1*16/16:7 c1*32/16:maj7 b1*8/16:maj7 d1*8/16:7 g1*8/16:maj7 bes1*8/16:7 ees1*8/16:maj7 ges1*8/16:7.5+.9+ b1*16/16:maj7 d1*8/16:m7 g1*8/16:7.5+.9+ c1*8/16:m7 f1*8/16:7.5+.9+ bes1*8/16:m7 ees1*8/16:7.5+.9+ aes1*8/16:m7 des1*8/16:7.5+.9+ fis1*16/16:maj7 g1*8/16:maj7 bes1*8/16:7 ees1*8/16:maj7 fis1*8/16:7 b1*8/16:maj7 d1*8/16:7.5+.9+ } }
\new Staff = "main" { \time 4/4 \tempo "Up swing" 4 = 300 \accidentalStyle modern \tuplet 3/2 { b8-> bes'8 ees'8 } bes'8 ees'8 b'16( b16-> aes'16-> b16) ees''8 b16 aes'16 |
r16 b16-> b'16 b16 r8 a'8-. g'8 b'8 d''8 b'8 |
d'8-> e''8 fis'16 bes''16-^ c''16 d'''16 \tuplet 3/2 { fis''8 e'''8 e''8 } \tuplet 3/2 { b''8( bes'8 bes''8-.) } |
bes''8 f''8 c''16-^( d''16 aes''16 des'''16->) ges''4 b''8 b''8 |
r4 bes''8 f''8 r8 c''8-> \tuplet 3/2 { g'8 aes''8 cis'''8-^ } |
bes'8 aes''8-^ \tuplet 3/2 { aes'8( aes''8 f'8) } \tuplet 3/2 { f''8-> d'8-. bes'8 } \tuplet 5/4 { c'16 g'16 c'16 aes'16-. c'16 } |
r4 c'16 b16 fis'16-> dis'16 e'8 e'8 fis'16 g'16-^ gis'16 a'16 |
b'8-> fis''8-^ dis''16( e''16 a''8) fis''8 g''16-^ g''16 fis''16->( dis''16 e''16 e''16) |
dis''16\ff ais'16-> f'16 c'16 \tuplet 3/2 { f''8->( c''8-- g'8) } r16 bes''16 gis''16-^ a''16 cis''16 ees''16 d''16-^ b''16-- |
r4 b''8 cis'''8-> \tuplet 3/2 { f''8-> f'''8-> bes''8 } \tuplet 3/2 { f'''8 bes''8 f'''8-> } |
\tuplet 3/2 { ees''8 f'''8 d''8 } \tuplet 3/2 { d'''8( g''8 d'''8) } d'''8 a''8-. e''8 ges''8 |
fis''8 cis''8-> \tuplet 6/4 { gis'16( dis'16 gis''16 cis'''16 fis''16 b''16) } f''8 c''8-> \tuplet 3/2 { g'8 d'8 cis''8-. } |
c''8-^ g'8 d'8 a'8 r8 aes'8 ees'8 ais'16 c'16 |
r4 \tuplet 3/2 { c'8 d'8 c'8-> } ees''8 g'8 a''16( a'16 a''8) |
a''8-> ges''8-. ees''8( b'16-> des''16) r8 des''8-> fis''8( b''16-^ a''16) |
f'''8-. d'''8 ees'''16-> bes''16 g''8 ais'8 a''8 \tuplet 5/4 { b'16 des'''16-^ dis''16 des'''16-^ f''16 } |
r4 \tuplet 5/4 { f''16 d''16 b'16 g'16-> f'16 } d'8 b16 d'16 \tuplet 6/4 { f'16( g'16 b'16 d''16-^ f''16 f''16) } |
d'''8 g''8 r16 e'''16 fis''16 e'''16 ees'''8 f'''8 \tuplet 3/2 { ees'''8 d'''8 c'''8 } |
\tuplet 6/4 { c'''16 g''16 d''16-. e''16 bes''16 ees'''16 } gis''16( des'''16 a''16-^ e''16->) e''8 a''8 d'''8 g''8 |
fis''16( cis''16-> gis'16 dis'16) \tuplet 5/4 { f''16( ais''16-- dis'''16-> gis''16-> dis''16->) } des''16( b'16 gis'8) fis'4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "5. Glass Engine" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Medium-up swing · thirds cycles & reharmonized ii–Vs. Devices: side-slip, 4ths, superimposition, outside-in, pentatonic. Small staff = optional altissimo. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { g1*16/16:m7 aes1*8/16:m7 g1*8/16:m7 des1*16/16:7.5+.9+ g1*16/16:m7 b1*8/16:maj7 ges1*8/16:7.5+.9+ ees1*8/16:maj7 bes1*8/16:7 g1*8/16:maj7 d1*8/16:7 b1*16/16:maj7 c1*8/16:maj7 g1*8/16:7.5+.9+ e1*8/16:maj7 b1*8/16:7 aes1*8/16:maj7 ees1*8/16:7 c1*16/16:maj7 ees1*8/16:m7 aes1*8/16:7.5+.9+ des1*8/16:m7 ges1*8/16:7.5+.9+ b1*8/16:m7 e1*8/16:7.5+.9+ a1*8/16:m7 d1*8/16:7.5+.9+ g1*16/16:maj7 e1*8/16:m7 a1*8/16:7.5+.9+ d1*16/16:maj7 c1*8/16:m7 f1*8/16:7.5+.9+ } }
\new Staff = "main" { \time 4/4 \tempo "Medium-up swing" 4 = 240 \accidentalStyle modern cis''8\mf fis''8 b''8( e'''16 d'''16) \tuplet 3/2 { g''8( c'''8-> f'''8) } e'''4 |
ees'''8-. bes''8-> f''8-> g''8 b''8 ees'''8-- fis''16-^ f'''16 bes''16 d''16-> |
d''8 c''8-> r4 r16 a'16 ges'16 d'16 c'16( d'16 b8) |
\tuplet 3/2 { b8-> cis'8-> f'8 } gis'16( b'16-> cis''16-> f''16) r8 gis''8 b''16 cis'''16 f'''16 f'''16 |
f'''8 c'''16 a''16 g''16 g''16 ais''8 b''16( e'''16 a''16 g''16) \tuplet 3/2 { c'''8 f'''8-. dis'''8 } |
g''8->( a''16 d'''16) c'''16 f'''16-> d'''8 d'''8-> a''8 a''16 aes''16 aes''8 |
g''8-> fis''8 r4 aes''8 ees''16 d''16 a'8 e'8 |
f'8-^ d'8 f'16( gis'16 ais'8) d''16-> f''16 gis''16 ais''16-^ ais''4 |
a''4\ff aes''8-> g''8 g''16 c'''16-> f'''8 ees'''8 ais''16 ees'''16 |
\tuplet 6/4 { d'''16-> g''16 c'''16 ais''16 b''16 b''16-- } ais''8-> gis''8 gis''8 a''8 r8 ais''8 |
bes''16 c'''16 d'''16 f'''16 r4 ges''4 fis''16->( f'''16-> f'''16-- f'''16) |
\tuplet 3/2 { e'''8-> b''8 fis''8 } gis''8 d'''8-^ g''8( c'''16 f'''16) c'''4 |
\tuplet 3/2 { c'''8 f'''8 bes''8 } aes''8 bes''8 a''8 e''8-. b'16 cis''16 b''16-> ges''16 |
r4 g''16( e''16 e''16 e''16) \tuplet 3/2 { gis'8 bes'8 bes'8-^ } c''8-^ e''8 |
r8 e''8 fis''8 gis''8 gis''16( ais''16-. d'''16 f'''16->) \tuplet 6/4 { d'''16-^( ais''16 gis''16 f''16-- d''16 d''16-.) } |
<< { \tuplet 3/2 { cis''8-> fis''8 fis''8-- } g''4 r8 fis''8 gis''8-> fis''8 } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \tuplet 3/2 { des'''8^\markup{\tiny \italic "altiss. ad lib."} fis'''8 fis'''8 } g'''4 r8 fis'''8 gis'''8 fis'''8 } >> |
\tuplet 6/4 { fis''16 b''16-. e'''16-^ d'''16-> g''16 d''16 } a'16( b'16 a''16-> e''16) b'8-- fis'8-> r4 |
fis'8 e'8-- d'4-> \tuplet 3/2 { cis'8->( ges'8 f'8) } r8 g'8 |
g'16-> c''16 f''8-- \tuplet 3/2 { bes''8( ees'8 d'8->) } r8 e'8-> r8 fis'8 |
r4 f'16( d'16 c'16 c'16) b16( ees'16 ges'16 a'16) a'4-- | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "6. Brushfire Math" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Up swing · thirds cycles & reharmonized ii–Vs. Devices: outside-in, side-slip, superimposition, bebop, pentatonic. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { b1*8/16:maj7 d1*8/16:7 g1*8/16:maj7 bes1*8/16:7 ees1*8/16:maj7 ges1*8/16:7.5+.9+ b1*16/16:maj7 a1*8/16:m7 d1*8/16:7.5+.9+ g1*8/16:m7 c1*8/16:7.5+.9+ f1*8/16:m7 bes1*8/16:7.5+.9+ ees1*8/16:m7 aes1*8/16:7.5+.9+ des1*16/16:maj7 fis1*8/16:m7 f1*8/16:7.11+ e1*16/16:maj7 aes1*8/16:m7 g1*8/16:7.11+ fis1*16/16:maj7 g1*16/16:maj7 a1*16/16:7.11+ ees1*16/16:maj7 f1*16/16:sus4.7 e1*8/16:m7 g1*8/16:7 c1*8/16:maj7 ees1*8/16:7 aes1*8/16:maj7 a1*8/16:7.5+.9+ } }
\new Staff = "main" { \time 4/4 \tempo "Up swing" 4 = 280 \accidentalStyle modern d''8\mf a'8 \tuplet 6/4 { b'16( fis'16 f'16-> gis'16-> ais'16 dis''16) } dis''8-> aes''8-. g''16->( e''16 c''8) |
f'8 aes'8 g'8 fis'8 \tuplet 3/2 { e'8( cis'8 a'8->) } \tuplet 6/4 { ges'16-^( b16 ees'16 ees'16 aes'16-> d''16-.) } |
d''8 b'8-> aes'8( e'16 d'16--) \tuplet 5/4 { ees'16( c'16 dis'16-. f'16 a'16) } c''16( dis''16 f''16 e''16->) |
r4 \tuplet 3/2 { e''8( g''8 ais''8) } \tuplet 3/2 { c'''8->( e'''8-> c'''8) } ais''16-. g''16 e''16 dis''16 |
r16 d''16 b'16-. c''16 r8 c''8 c''16( f''16 ees''16-> gis''16) \tuplet 3/2 { f''8 bes''8 gis''8 } |
gis''16->( des'''16 fis''16-> b''16) \tuplet 6/4 { ges''16( cis''16-> d''16-> bes'16 f'16 f'16-.) } \tuplet 6/4 { g'16( d''16 b''16 c'''16 a''16 f'''16) } dis'''16-- c'''16-^ aes''16 e''16-. |
ees''4 f''8 g''8-> r4 ges''8 e''16 d''16-> |
\tuplet 3/2 { e''8( b'8-. ges'8) } \tuplet 5/4 { aes'16 ges'16 des'16 aes'16-> bes'16-> } r16 e''16 d''16 a'16 b'16( a''16-- ges''16-> d''16) |
bes''16 g''16 ees''16 f''16 c''16-.( ees''16 g''16 f''16) g'8 bes'16-> ees''16 c''8-> ees'8 |
f'8( d'16 bes'16->) \tuplet 6/4 { e'16 cis'16 e'16 a'16-. fis''16 dis''16 } r4 \tuplet 6/4 { ees''16 f''16 bes''16-> g''16 g''16 f''16-> } |
g''8-> d''16 a'16 \tuplet 3/2 { e'8( a''8 e''8) } r16 dis''16( gis''16 cis'''16->) r16 b''16->( e''16-. b'16) |
b'8( bes'16 aes'16-^) ges'8-- f'8 fis'16( gis'16 c''8) \tuplet 6/4 { dis''16( fis''16 gis''16 c'''16-. dis'''16 f'''16) } |
fis''8 b''8 e'''8-^ a''8 \tuplet 3/2 { gis''8 cis'''8-> fis''8 } e'''4 |
r4 e'''16 cis'''16 b''8 r8 fis''8 \tuplet 3/2 { b''8 cis'''8-- e'''8 } |
\tuplet 3/2 { f'''8( d'''8 bes''8) } aes''8 f''16 d''16 \tuplet 3/2 { bes'8 aes'8-^ f'8-. } g'4-- |
r16 cis'16 ees'16-- aes'16-. r16 fis'16 bes'16 aes'16-. g'8-> a'8 c''16-^( f''16-^ c''16 d''16->) |
\tuplet 3/2 { e''8( b'8 ges'8) } \tuplet 3/2 { cis'8( ees''8-. aes''8) } g''16( c'''16-> f'''16-> bes''16) bes''8 f''8 |
r4 e''16( d''16 cis''8->) c''4 d''8-> e''8-- |
e''8-. a''8 fis''8( b''16 a''16) \tuplet 3/2 { aes''8 b''8-> d'''8 } e'''8 des'''8 |
c'''16( g''16 bes''16 f''16) g''8-. c'''8-> r4 c'''4-. | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "7. Night Shift Dialect" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Burnout swing · thirds cycles & reharmonized ii–Vs. Devices: bebop, triad pair, superimposition, wide enclosures, pentatonic. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { b1*16/16:maj7 des1*16/16:7.11+ g1*16/16:maj7 a1*16/16:sus4.7 fis1*16/16:m7 b1*16/16:7 des1*32/16:maj7 des1*8/16:m7 ges1*8/16:7.5+.9+ b1*8/16:m7 e1*8/16:7.5+.9+ a1*8/16:m7 d1*8/16:7.5+.9+ g1*8/16:m7 c1*8/16:7.5+.9+ f1*16/16:maj7 ees1*16/16:maj7 f1*16/16:7.11+ b1*16/16:maj7 des1*16/16:sus4.7 bes1*16/16:m7 b1*8/16:m7 bes1*8/16:m7 e1*16/16:7.5+.9+ } }
\new Staff = "main" { \time 4/4 \tempo "Burnout swing" 4 = 320 \accidentalStyle modern c''16(\mf dis''16 f''8) a''8 c'''8-> dis'''4 f'''8-. dis'''8 |
\tuplet 3/2 { f'''8( des'''8 aes''8->) } g''16 ees''16 bes'16 aes'16-> f'16( des'16-. bes'8) ees'4 |
\tuplet 6/4 { e'16-> a'16 fis'16 b'16-^ a'16-. cis''16 } \tuplet 6/4 { b'16( e''16 cis''16 fis''16 e''16-> a''16) } r4 \tuplet 6/4 { fis''16( cis''16 e''16-. b'16-> cis''16 a'16-^) } |
\tuplet 6/4 { bes'16->( g'16 ees'16-> cis'16-. dis'16-- g'16) } ais'16-.( cis''16 dis''16 g''16) ais''4 cis'''8 d'''8-> |
f''8 g''16 fis''16-> bes'8 gis'8 \tuplet 6/4 { a'16( dis''16 f''16 e''16-- fis''16 dis'''16->) } e'''8-. dis'''8 |
g''16( f''16 fis''16 cis'''16) r8 ais''8 b''4 r4 |
r16 b''16-.( g''16 f''16) d''8-> b'8 g'16( f'16-- d'8->) b8 d'8 |
f'16 g'16 b'16 d''16 r16 f''16( g''16 b''16) d'''8 f'''8 d'''16( b''16 g''16 f''16) |
ees'4 f'16 e'16 ees''8 r8 d''8-> e''8 ges''8 |
fis''8 a'8 d'8 b8-> r4 c'8 d'16-- e'16 |
e'16 c'16 g'8 d'16-> a'16 fis'8 \tuplet 3/2 { f'8( bes'8 d''8) } \tuplet 3/2 { ees''8->( gis''8-> c'''8) } |
c'''16 ees'''16 c'''16-- aes''16 ges''8-. f''8 a'8 b'8-> bes'16-> b16-> des'16 c'16-> |
b8 d'8-> r4 \tuplet 6/4 { e'16( a'16-. e'16 g'16 a'16 d''16) } a'16->( b'16-> d''8) |
d''8 c''8 a'8-> ges'16 d'16 c'8 d'8 fis'16( a'16 c''16-> d''16) |
\tuplet 6/4 { c''16( f''16-> a''16 g''16 d'''16 b''16) } c'''8 f'''8 a''8 d'''8 g''8 b''8 |
c'''8\f dis'''8 f'''16 dis'''16 c'''16 a''16 \tuplet 3/2 { f''8 dis''8 dis''8 } r4 |
ees''16 aes''16 ges''8 b''8 aes''16-. ees''16 ges''8 des''8-. \tuplet 6/4 { ees''16->( b'16 des''16 aes'16-> b'16 ges'16-.) } |
f'8-^ ees'8-> r16 d'16 des'16-> c'16 g'8-. e'8-- f'16( f'16 g'16 aes'16) |
r8 gis'8-> r4 \tuplet 5/4 { g'16 c''16 bes'16-- ees''16 c''16-> } f''8 ees''8 |
e''8-.( g''16 c'''16) d'''16( f'''16 ais''16-> c'''16) g''8 e'''8-> f'''4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "8. Steel Origami" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Fast swing · thirds cycles & reharmonized ii–Vs. Devices: pentatonic, side-slip, wide, triad pair, 4ths. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { c1*8/16:m7 f1*8/16:7.5+.9+ bes1*8/16:m7 ees1*8/16:7.5+.9+ aes1*8/16:m7 des1*8/16:7.5+.9+ fis1*8/16:m7 b1*8/16:7.5+.9+ e1*16/16:maj7 fis1*16/16:maj7 aes1*16/16:7.11+ d1*16/16:maj7 e1*16/16:sus4.7 f1*8/16:m7 aes1*8/16:7 des1*8/16:maj7 e1*8/16:7 a1*8/16:maj7 bes1*8/16:7.5+.9+ ees1*16/16:maj7 g1*8/16:maj7 d1*8/16:7.5+.9+ b1*8/16:maj7 fis1*8/16:7 ees1*8/16:maj7 bes1*8/16:7 g1*16/16:maj7 d1*16/16:m7 ees1*8/16:m7 d1*8/16:m7 aes1*16/16:7.5+.9+ } }
\new Staff = "main" { \time 4/4 \tempo "Fast swing" 4 = 260 \accidentalStyle modern \tuplet 3/2 { c''8-> a'8 g'8 } d'16( g'16 f'16-- d'16) gis'8 ges'8 des'8-> ees'8 |
e'8 ges'8 c'8( c'16-> f'16->) g'16 ais'16 d''16 c''16 b'16( des''16 fis''16 e''16-^) |
ges''8( b''16-- e'''16) \tuplet 5/4 { d'''16( des'''16 ges''16-> b''16 e'''16-^) } \tuplet 3/2 { fis''8->( b''8 a''8) } e''8 b'8-> |
\tuplet 6/4 { c''16-- a'16 g'16 cis''16 b'16 fis'16 } r8 gis'8 r4 g'8 f'8 |
\tuplet 6/4 { b16->( cis''16 fis'16 cis''16 cis'16 gis'16) } b16 b'16-> e'8 \tuplet 3/2 { dis''8-> fis'8 e''8 } dis'16->( b'16-^ b16 gis'16) |
r8 ais'8-. fis'16( cis'16-- gis'16-> dis'16) \tuplet 6/4 { c'16 cis'16-> fis'16 ais'16 gis''16-> dis''16 } c''8 cis''8 |
c''8 aes''8 ees'''16( f'''16-. bes''16 d''16) ees''8( aes'16 c'16->) r8 bes'8 |
a'8 d''8-> g''16 c'''16 cis''8 r4 fis''16-.( b''16-^ a''16 d''16) |
e'''8 cis''8-. r16 cis'''16-> cis''16 e'''16 a''16 e'''16 e''8 cis'''16( b'16 b''16 e''16) |
b'8 des''8-> r16 c''16( g'16-> bes'16) \tuplet 3/2 { aes''8 f'8-> aes''8 } f'8 aes''8 |
\tuplet 3/2 { aes''8 g''8 f''8-> } r4 r8 e''8-^ fis''4 |
r8 g''8 c'''16 b''16 dis'''8 cis'''16 ges''16 bes''16-> e'''16-> \tuplet 3/2 { aes''8 b''8 bes''8 } |
\tuplet 3/2 { b''8 aes''8 e''8 } \tuplet 3/2 { des''8( bes'8-> ges'8) } \tuplet 5/4 { e'16 ees'16 bes'16-^ g'16 f'16 } r16 a'16( c'16 ees'16) |
r4 ees'8 d'16-> cis'16 c'8 d'8 ees'4 |
\tuplet 3/2 { dis'8( fis'8 b'8) } gis''16 f''16 cis''8-> cis''16 gis'16 dis'16-. f'16 r16 dis''16-> gis''16-> cis'''16 |
c'''8 b''8 r4 g'16->( aes''16 aes'16 bes''16) bes'8 g''8 |
aes''8-> ees''8 \tuplet 6/4 { ais'16( c''16 g''16-> c'''16-- f'''16-. e'''16) } r16 a''16 d'''16 g''16 cis'''8-^( aes''16-. dis''16->) |
d''8 g''8 c'''16-^ bes''16 b'16 ges'16 \tuplet 6/4 { cis'16 gis'16 a'16 d''16 g''16 c'''16 } c''16-- g'16-. d'16-> a'16 |
des'8 c''8 c'8 bes'8 \tuplet 5/4 { c'16 c''16 d'16-. e''16-^ c'16 } \tuplet 3/2 { a'8( d'8-> d''8) } |
e''8->\p aes''16 b''16 r4 a''16 ges''16 d'''16-> e'''16 b''4-^ | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "9. Crosswind" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Up swing · thirds cycles & reharmonized ii–Vs. Devices: outside-in, triad pair, bebop, side-slip, wide. Small staff = optional altissimo. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { e1*16/16:m7 f1*8/16:m7 e1*8/16:m7 bes1*16/16:7.5+.9+ e1*16/16:m7 g1*8/16:m7 c1*8/16:7.5+.9+ f1*16/16:maj7 ees1*8/16:m7 aes1*8/16:7.5+.9+ des1*16/16:maj7 b1*8/16:m7 e1*8/16:7.5+.9+ a1*16/16:maj7 des1*8/16:maj7 aes1*8/16:7.5+.9+ f1*8/16:maj7 c1*8/16:7 a1*8/16:maj7 e1*8/16:7 des1*16/16:maj7 f1*8/16:m7 bes1*8/16:7.5+.9+ ees1*8/16:m7 aes1*8/16:7.5+.9+ des1*8/16:m7 ges1*8/16:7.5+.9+ b1*8/16:m7 e1*8/16:7.5+.9+ a1*16/16:maj7 f1*8/16:maj7 c1*8/16:7.5+.9+ } }
\new Staff = "main" { \time 4/4 \tempo "Up swing" 4 = 300 \accidentalStyle modern \tuplet 3/2 { d''8( g'8 b8) } \tuplet 3/2 { a'8 e'8 cis''8 } d''16( b''16-^ g''16 a''16) cis'''8 e''8 |
\tuplet 3/2 { f'''8( ees''8 ees'''8) } c''16 d'''16-> g''16-. f'''16 g''16( d'''16 b''16 a''16->) e''8 cis''8-> |
c'8 aes'8-> \tuplet 3/2 { c'8( bes'8-> c'8) } aes'8-^ c'8 aes'16( c'16-> aes'16 c'16) |
g'16 b16 g'8 b8 cis''8 e'4 r4 |
\tuplet 5/4 { dis'16 aes'16 fis'16-> bes'16 gis'16 } des''16 c''16 d''16 f''16 r8 dis''8 \tuplet 3/2 { aes''8( c'''8 des'''8) } |
ees'''16( b''16 ges''16-. gis'16) cis''8-> f''8 \tuplet 3/2 { ges''8 ees''8 d''8 } des''16( c''16 b'16 a'16) |
aes'8-^ g'8 ges'8 g'8 aes'8-- bes'8 \tuplet 3/2 { aes'8( e''8 c'''8->) } |
<< { c'''8\mf bes''8-> a''8 aes''8 r4 g''8 f''8 } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { c''''8^\markup{\tiny \italic "altiss. ad lib."} bes'''8 a'''8 aes'''8 r4 g'''8 f'''8 } >> |
cis'''8 b'8 gis''8 a'8 des''8 gis'8 g'8 e'8 |
dis'8 bes'8 \tuplet 3/2 { f'8-> c'8 f'8 } r8 bes'8-> a'16 e'16 cis'16-> gis'16 |
aes'8-> e'8 ees'8 f'8 r16 e'16-.( d'16 c'16) \tuplet 3/2 { b8 c'8 d'8 } |
\tuplet 6/4 { bes'16( aes'16 dis'16-- f'16 ees''16 c''16) } c''16 f''16-> a''16 a''16 r4 a''8( g''16 f''16) |
\tuplet 3/2 { e''8 cis''8 a'8 } b8 dis'8 ees'8-> c'8-> b8 d'8 |
des'8 aes'8-> \tuplet 5/4 { f'16->( bes'16 g'16-- ees'16 f'16) } \tuplet 3/2 { aes'8( des'8-> bes'8) } \tuplet 6/4 { g'16 ees'16 f'16 aes'16-> des''16 bes''16 } |
bes''8 a''8-- r8 bes''8 d''8 d'''16 d''16 bes''16( g'16 aes''16 c''16->) |
r4 r8 c''8-> des''16 aes'16-> bes'8-> f'16 e'16-. ges'16 ges'16-> |
e'8 aes'8 b'16-^ ges''16 des''8-> ees''8-- des''8-. \tuplet 5/4 { bes'16-> a'16 g'16-> d'16-^ e'16-^ } |
dis'16-- gis'16 gis'16 a'16 r8 a'8 g'8 c'8-> e'8 d'8-> |
r8 d'8-^ r4 \tuplet 3/2 { ais'8( f''8-> e''8) } a''16->( cis'''16 fis''8-^) |
r8 f''8 r8 e''8 \tuplet 6/4 { dis''16( aes''16 c'''16 des'''16 fis''16 bes''16) } c'''4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "10. Pressure Front" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Medium-up swing · thirds cycles & reharmonized ii–Vs. Devices: outside-in, triad pair, side-slip, bebop, pentatonic. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { a1*8/16:m7 d1*8/16:7.5+.9+ g1*8/16:m7 c1*8/16:7.5+.9+ f1*8/16:m7 bes1*8/16:7.5+.9+ ees1*8/16:m7 aes1*8/16:7.5+.9+ des1*16/16:maj7 b1*8/16:m7 d1*8/16:7 g1*8/16:maj7 bes1*8/16:7 ees1*8/16:maj7 e1*8/16:7.5+.9+ a1*16/16:maj7 d1*16/16:m7 ees1*8/16:m7 d1*8/16:m7 aes1*16/16:7.5+.9+ d1*16/16:m7 aes1*16/16:m7 des1*16/16:7 ees1*32/16:maj7 b1*16/16:m7 e1*16/16:7 fis1*16/16:maj7 } }
\new Staff = "main" { \time 4/4 \tempo "Medium-up swing" 4 = 240 \accidentalStyle modern c''4\mf ees''16( d''16 des''16 c''16) \tuplet 3/2 { cis''8-> fis''8 f''8 } ees''8 c''8 |
r8 c''8 b'4-. \tuplet 3/2 { c''8->( a'8 aes'8) } c''8 e''8 |
\tuplet 3/2 { ees''8( c''8 aes'8) } f'8 d'8 d'8-> g'8 ges'16 bes'16-> d''8 |
\tuplet 3/2 { d''8( b''8 g''8) } \tuplet 6/4 { a''16-> ges''16 bes''16 des'''16 ees'''16-^ c'''16 } r4 r8 c'''8-> |
des'''16 fis''16 e'''8-. fis''8 f'''8 ees'''8 c'''8 g''8 c'''8 |
\tuplet 3/2 { d'''8 f'''8 f'''8 } e'''16 cis'''16-^ b''8 b''8-> c'''8 \tuplet 5/4 { cis'''16-. d'''16 des'''16 c'''16-. b''16 } |
r4 ais''16-> ees'''16 ees'''16 b''16 c'''16 ees''16 aes'16 f'16 \tuplet 3/2 { bes'8( d'8 c'8-^) } |
\tuplet 3/2 { bes'8( g'8 ees'8--) } a'8-> f'8 c'8 c'8 \tuplet 3/2 { f'8 d'8 g'8-> } |
g'16->\f d'16 a'8 e'8 dis'8 r16 gis'16( a'16-> cis'16) e'8 cis'8-> |
\tuplet 6/4 { d'16( g'16 e'16-> a'16 g'16-. b'16) } r8 a'8 r16 d''16( b'16 e''16) \tuplet 3/2 { d''8( g''8 e''8->) } |
\tuplet 3/2 { ees''8-^ des''8 ees''8 } r4 \tuplet 3/2 { ees''8( b'8-> ges'8->) } \tuplet 3/2 { f'8( f'8 c''8) } |
c''8--( f''16 a''16-^) bes''4-> aes''16( b''16 e'''16 ges''16) d'''4 |
c'''16 a''16 f''16 g'16 b'8 d''16 c''16 r4 \tuplet 6/4 { a'16 f'16 g'16 b16-^ d'16 c'16-> } |
aes'16->( f'16 des'16 ees'16) des''8 bes'8-> \tuplet 6/4 { f'16( aes'16 f''16 ees''16-> bes'16 des''16) } bes''8 aes''8-> |
g''8 c'''8 \tuplet 3/2 { f'''8-> ees'''8 a''8 } e''8( b'16 ges'16) ges'16 b'16 ees''16-. b''16 |
b''16( cis'''16 e'''16 e'''16-.) \tuplet 3/2 { e'''8 des'''8-> gis''8 } b''16( b''16 cis'''16-. e'''16->) r8 e'''8 |
r4 ees'''8-> f'''8 \tuplet 3/2 { c'''8( a''8-. bes''8) } bes''8-> g''8 |
a''8-> c'''8 \tuplet 3/2 { d'''8 f'''8-> d'''8-> } c'''8 e'''8 \tuplet 5/4 { e'''16( b''16-. cis'''16 gis''16 b''16) } |
\tuplet 3/2 { b''8-.( d'''8 e'''8) } \tuplet 3/2 { e'''8 e'''8 d'''8-^ } \tuplet 3/2 { b''8( fis''8 b''8) } r4 |
ais''8\mp c'''16 f'''16 dis'''16( dis'''16 c'''16 gis''16) ais''8 ais''8-. c'''4-> | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "11. Hollow Point Blue" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Up swing · thirds cycles & reharmonized ii–Vs. Devices: superimposition, triad pair, outside-in, wide, wide enclosures. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { bes1*16/16:maj7 c1*16/16:7.11+ fis1*16/16:maj7 aes1*16/16:sus4.7 g1*8/16:m7 c1*8/16:7.5+.9+ f1*8/16:m7 bes1*8/16:7.5+.9+ ees1*8/16:m7 aes1*8/16:7.5+.9+ des1*8/16:m7 ges1*8/16:7.5+.9+ b1*16/16:maj7 ees1*8/16:maj7 fis1*8/16:7 b1*8/16:maj7 d1*8/16:7 g1*8/16:maj7 bes1*8/16:7.5+.9+ ees1*16/16:maj7 aes1*8/16:m7 b1*8/16:7 e1*8/16:maj7 g1*8/16:7 c1*8/16:maj7 des1*8/16:7.5+.9+ fis1*16/16:maj7 e1*8/16:m7 g1*8/16:7 c1*8/16:maj7 ees1*8/16:7 aes1*8/16:maj7 a1*8/16:7.5+.9+ } }
\new Staff = "main" { \time 4/4 \tempo "Up swing" 4 = 280 \accidentalStyle modern bes'8->\mf d''8 r8 f''8 e''8-> g''16-^ c'''16-- r8 d'''8 |
c'''16( e'''16 g''16 d'''16) fis''8-> a''16 g''16 \tuplet 6/4 { e'''16( c'''16 d''16-^ fis''16 a''16-> g''16) } e''16 c''16-. d'16 fis'16-> |
r8 cis''8 cis'8 dis''8-> cis'16( f''16 dis'16-> fis''16) f'8-> fis''8 |
ges''8 des'''8 bes''8 des'''8 f'''8-. aes''8-. ges''8-> bes'8 |
r4 \tuplet 6/4 { cis'16( ees'16 d'16 a'16-- b'16 bes'16) } a'8 fis'8 fis'8 bes'8-. |
a'8 d''8 g''16-^ c'''16-> c'''16 aes''16 ees'''4 \tuplet 5/4 { cis'''16( d'''16-. cis'''16 ees'''16 d'''16) } |
d''16 e''16 ees''8-. a''16( b''16 bes''8) bes''8 aes''8 aes''8 ges''8 |
\tuplet 3/2 { f'''8 ees'''8 e'''8 } c''8 d''8 \tuplet 6/4 { dis'16( d''16-. d'16 bes'16 d'16 ges''16) } r4 |
g''8-. b''16 a''16 d'''8 b''8 g''8 g''8 fis''8 ais''8-^ |
r16 b''16 aes''16 e''16 r8 d''8-> g'8 f'8-> \tuplet 6/4 { fis'16( d'16 c'16-> cis'16 d'16 c'16) } |
c'8 a'8 \tuplet 3/2 { gis'8 ais'8 ais'8 } a'16 b'16-> c''8 r4 |
cis''16( f'16 aes'16 g'16->) g'8 b8-> ges'8 ges''16 ges'16-> aes''8 ges'8 |
g'16 bes'16 ees'8 c'8 a'8 \tuplet 3/2 { f'8 g'8-> ees''8 } \tuplet 3/2 { bes''8 a''8 f'''8 } |
f'''8 bes''8-> \tuplet 6/4 { ees'''16 aes''16 f'''16-> f'''16 ees'''16-> b''16 } \tuplet 3/2 { b'8 dis'''8 cis''8-> } \tuplet 3/2 { a''8-. a'8-> a''8 } |
gis'8-> dis''8 \tuplet 6/4 { e'16 gis''16 e'16-> b'16 cis'16 cis''16 } c''8 d''8-> r4 |
des''16( bes'16 f'8) \tuplet 6/4 { aes'16-- aes'16 f'16 g'16-> e'16 b16 } a'8 des'8-> a'16( des'16-. a'8) |
g''8-. f''8 fis''16 dis'''16 c'''16 cis'''16 a'8 b'8 \tuplet 3/2 { ais'8( e''8 fis''8) } |
fis''8-.\ff g''8 r8 gis''8 \tuplet 6/4 { aes''16-. f''16-> des''16 b'16 aes'16 f'16-^ } des'16 b16 des'16 b16 |
b8->( c'16-> d'16) r4 \tuplet 3/2 { d'8 b8 d'8-> } e'16( aes'16 b'16 des''16) |
cis''16-.( fis''16 b''16 a''16) r16 aes''16 g''16 g''16-- f''16( c'''16 a''16 bes''16) dis'''4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "12. Signal Chain" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Burnout swing · thirds cycles & reharmonized ii–Vs. Devices: superimposition, 4ths, bebop, wide, triad pair. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { ees1*16/16:maj7 f1*16/16:7.11+ b1*16/16:maj7 des1*16/16:sus4.7 aes1*8/16:m7 des1*8/16:7.5+.9+ fis1*16/16:maj7 e1*8/16:m7 a1*8/16:7.5+.9+ d1*16/16:maj7 c1*8/16:m7 f1*8/16:7.5+.9+ bes1*16/16:maj7 des1*16/16:m7 fis1*16/16:7 aes1*32/16:maj7 e1*16/16:maj7 fis1*16/16:7.11+ c1*16/16:maj7 d1*16/16:sus4.7 a1*8/16:maj7 e1*8/16:7.5+.9+ des1*8/16:maj7 aes1*8/16:7 } }
\new Staff = "main" { \time 4/4 \tempo "Burnout swing" 4 = 320 \accidentalStyle modern r16 g''16( ees'16 g''16) f'8 f''8 d'8 c''8 c'8 ees''8 |
d'8 ees''8-. d'16( ees''16 d'16 f''16->) r8 g'8 a''16-> d''16 a''8 |
\tuplet 3/2 { gis''8 cis'''8 fis''8 } e'''8 fis''8 r4 b''16( e'''16 d'''16 gis''16) |
\tuplet 5/4 { ges''16( b''16-> ees'''16-> ges''16 des'''16--) } bes''8 b''8 ges''16-. ees''16 des''16 bes'16 ges'8 ges'8-> |
ges'8-> b'8 ees''8 f''16 aes''16 g''4-^ r4 |
\tuplet 6/4 { fis''16 cis''16 ais'16 c'16 dis'16 gis'16 } \tuplet 3/2 { fis'8 cis'8 ais'8 } \tuplet 5/4 { dis'16( c'16-. gis'16 ais'16 cis'16->) } \tuplet 6/4 { fis'16 dis''16 c''16 gis'16 ais'16 cis''16 } |
c''8 a'8 f'16 ees'16 c'16 d'16-> r16 a'16( b16-> ges'16) b16 ges'16-> b16 g'16-> |
r8 fis'8-> b'8 e''8-> \tuplet 3/2 { d''8 d'8 a'8 } \tuplet 3/2 { e'8-. fis'8-> fis'8 } |
f'8-. c'8 \tuplet 3/2 { g'8-.( d'8 d'8->) } des'8 ees'16 f'16 r4 |
f'8\mp d'8 bes'16( g'16 c'16-> e'16) \tuplet 5/4 { f'16( bes'16-. d''16-> e''16 g''16->) } c'''8 d'''8 |
\tuplet 6/4 { e''16 b''16-> b'16 aes''16 des''16-> aes''16 } bes'8 bes''8 bes'16 bes''16-. aes'16 e''16 des'4 |
r8 c'8 e'8 g'8 \tuplet 5/4 { ais'16--( c''16-. e''16-> g''16 ais''16) } c'''16-> e'''16 c'''16-> ais''16 |
r4 aes''8 fis''8-. g''8 g''8-> \tuplet 3/2 { f''8--( e''8 f''8->) } |
g''16->( aes''16 d'''16 b''16) \tuplet 3/2 { c'''8-. c'''8-> d'''8 } ees'''4 r8 e'''8 |
\tuplet 3/2 { e'''8 b''8 fis''8 } gis''8 e'''8 a''8 d'''8 g''8 e'''8-> |
fis''8-> dis'''8 r4 dis''8 cis'''16-> ais'16 gis''16( gis'16 gis''16 ais'16) |
a'8 d''16 g''16 f''16( fis'16 b'8) \tuplet 5/4 { e''16 d''16 e'16 a'16-> d''16 } r16 c''16->( g'16 d'16) |
r8 d'8 a'8 e'8 b8 e'8 a'16( d''16 c''16-- fis'16) |
\tuplet 3/2 { e'8 a'8 cis''8 } dis''8-> fis''8 f''8 g''8 r4 |
\tuplet 3/2 { f''8--( aes''8 des'''8) } g''8-> bes''8 bes''8-> aes''8-> g''4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "13. Riptide Theory" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Fast swing · thirds cycles & reharmonized ii–Vs. Devices: wide, superimposition, bebop, pentatonic, outside-in. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { fis1*8/16:m7 f1*8/16:7.11+ e1*16/16:maj7 ees1*8/16:m7 d1*8/16:7.11+ des1*16/16:maj7 fis1*8/16:maj7 des1*8/16:7.5+.9+ bes1*8/16:maj7 f1*8/16:7 d1*8/16:maj7 a1*8/16:7 fis1*16/16:maj7 e1*16/16:m7 a1*16/16:7 b1*32/16:maj7 ees1*8/16:maj7 bes1*8/16:7.5+.9+ g1*8/16:maj7 d1*8/16:7 b1*8/16:maj7 fis1*8/16:7 ees1*16/16:maj7 ees1*8/16:m7 d1*8/16:7.11+ des1*16/16:maj7 b1*16/16:m7 e1*16/16:7 } }
\new Staff = "main" { \time 4/4 \tempo "Fast swing" 4 = 260 \accidentalStyle modern c''16(\mf a'16 f'16 g'16) a'16( cis''16 e''8-^) ees''8 f''8 bes''16-> g''16 g''8-^ |
fis''8 dis''16 ais'16 cis''16 cis''16 ais'8 \tuplet 3/2 { fis'8( gis'8-> gis'8->) } \tuplet 6/4 { fis'16 cis'16-> dis'16 dis'16 fis'16 ais'16 } |
\tuplet 3/2 { bes'8-> c''8 des''8 } r4 e''8( cis''16 d''16) \tuplet 3/2 { d''8->( e''8 fis''8->) } |
\tuplet 3/2 { ges''8( des''8 aes'8) } bes'8 e''8-^ \tuplet 6/4 { b'16( fis'16 aes'16 aes'16 des'16 f'16) } ees'8 c''8 |
r8 c''8 e''8->( g''16 f''16) \tuplet 6/4 { e''16 d''16 a'16 b'16-- b'16 a'16 } e'8 g'8 |
r4 \tuplet 6/4 { a'16( e'16 cis'16 ges'16 fis'16 a'16) } r8 a'8-> g'8 f'8-. |
\tuplet 5/4 { f'16( gis'16 b'16 cis''16 f''16) } gis''8 fis''8-. aes''16 f''16-> cis''16-. bes'16 g'16( g'16-> d''16-- cis'''16) |
r8 f''8 r8 f'''8 \tuplet 3/2 { fis''8->( dis'''8 cis''8->) } r8 f'''8-> |
r8 ais''8-> c'''8 f'''8 \tuplet 6/4 { dis'''16-> f'''16 f'''16 c'''16 ees'''16-> d'''16-^ } e'''16( d'''16 cis'''16 d'''16) |
\tuplet 3/2 { f'''8( f'''8-> cis'''8) } r4 ees'''8-> d'''8 r8 cis'''8-^ |
\tuplet 3/2 { b'8 fis''8 ais'8 } gis''8-> cis''16 ais''16-> cis''8-> ais''8 dis''8 ais''8-> |
r8 fis'8-- r4 \tuplet 6/4 { ais''16( ais'16 gis''16 ais'16 ais''16 dis''16) } b''8-. ais'8-> |
\tuplet 3/2 { c'''8 d''8-> ees'''8-> } d''16( f'''16 d''8) c'4-> \tuplet 3/2 { c''8-- d'8 bes'8-> } |
b'16( cis''16 f''16 aes''16) r8 fis''8 r8 fis''8-^ dis''16( e''16-. c''16 fis'16) |
r4 fis'8 f'16 dis'16 e'16-> cis'16-- b16-- b16-> \tuplet 6/4 { b16 cis'16-> e'16-. gis'16 e'16 fis'16 } |
c''16 a'16 f'16 g'16 f''8-> d''16 a'16 \tuplet 5/4 { c''16( a''16 g''16 d''16 f''16) } c''8 d''8 |
\tuplet 3/2 { bes''8( des''8 des'''8) } bes'8-. des'''8 cis'''16( ees'''16 des'''16 bes''16) g''8 fis''8 |
g''16 e''16 c''16 bes'16 g'8-^ e'8 c'16 e'16 g'16 bes'16 \tuplet 5/4 { c''16-> e''16 g''16 bes''16 c'''16 } |
r4 \tuplet 3/2 { d''8--( b''8 gis'8->) } a''16( d''16 a''16 b'16) b''16--( cis''16 a''8) |
ais''8-> cis'''16 ees'''16-> cis'''4 bes''8 g''8 gis''4-> | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "14. Graphite" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Up swing · thirds cycles & reharmonized ii–Vs. Devices: superimposition, bebop, 4ths, pentatonic, side-slip. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { bes1*16/16:m7 b1*8/16:m7 bes1*8/16:m7 e1*16/16:7.5+.9+ bes1*16/16:m7 b1*8/16:maj7 d1*8/16:7 g1*8/16:maj7 bes1*8/16:7 ees1*8/16:maj7 ges1*8/16:7.5+.9+ b1*16/16:maj7 e1*8/16:m7 a1*8/16:7.5+.9+ d1*16/16:maj7 c1*8/16:m7 f1*8/16:7.5+.9+ bes1*16/16:maj7 aes1*8/16:m7 des1*8/16:7.5+.9+ fis1*16/16:maj7 g1*8/16:m7 c1*8/16:7.5+.9+ f1*16/16:maj7 ees1*8/16:m7 aes1*8/16:7.5+.9+ des1*16/16:maj7 b1*8/16:m7 e1*8/16:7.5+.9+ a1*16/16:maj7 } }
\new Staff = "main" { \time 4/4 \tempo "Up swing" 4 = 300 \accidentalStyle modern r8 c''8-. ees''8 g''8 f''16-> f''16 g''16-> c'''16 \tuplet 3/2 { bes''8 bes''8 g''8 } |
fis''4 \tuplet 3/2 { e''8( dis''8 e''8) } ees''8 f''8 g''8 c'''8 |
c'''8 a''8 f''16-> ees''16 c''16 a'16 \tuplet 3/2 { f'8->( ees'8 d'8) } r4 |
des'4 fis'8-> b'8 \tuplet 5/4 { a'16( f'16 c'16 g'16-> a'16) } ees'16 aes'16 des''16 fis''16 |
r8 fis''8 g''8 gis''8-> \tuplet 6/4 { g''16( d''16-> a'16 b'16 b''16 e'''16) } \tuplet 6/4 { a''16( g''16 c'''16 g''16 d''16-. e''16) } |
e''16 cis''16 a'16 b'16 b'16( a'16 e'16-> fis'16) \tuplet 6/4 { e'16 aes'16-> b'16-> d''16 e''16 aes''16-- } b''16( d'''16 e'''16 d'''16) |
d'''8 c'''8 a''8-. g''8 g''8( ges''16 e''16) r4 |
dis''4 gis''16-^ cis'''16 b''8 f''8-- c''16 g'16-. a'8 gis''8 |
\tuplet 3/2 { g''8( d''8 a'8) } \tuplet 3/2 { e'8( b''8 fis''8) } g''16( dis''16-> cis''16 bes'16) \tuplet 6/4 { g'16-> dis'16-> cis'16 dis'16-> g'16-> g'16 } |
cis''8 b'8-^ fis'8 gis'8-. fis''16( e''16 b'16-> cis''16) \tuplet 3/2 { b''8( gis''8 e''8) } |
e''8 ees''8 r4 e''8 des''8 bes'16 ges'16 e'16 ees'16 |
d'16( g'16 c''8) r8 f''8-> e'8 b8 ges'8 cis'8-> |
r8 des'8 r4 \tuplet 6/4 { des'16 d'16 g'16 e'16-> f'16 f'16 } \tuplet 5/4 { g'16-^( f'16 e'16 d'16 e'16) } |
dis'8 f'8 \tuplet 6/4 { fis'16-> f'16-> dis'16 d'16 cis'16 c'16-> } r16 cis'16-> d'16 dis'16 f'8-- fis'8 |
f'16--( c'16 g'8->) a'8 e'16-- a'16 aes'8-. fis'8 r4 |
\tuplet 3/2 { f'8-> c'8 g'8-. } \tuplet 3/2 { a'8 e'8-> a'8-> } d''16( g''16 f'8) ais'8 ees''16 cis''16 |
des''8 ges''8 b''8 e'''8-> e'''8 d'''8-> c'''16->( b''16 a''8) |
r8 e''8-> \tuplet 3/2 { fis''8->( b''8 f'''8) } r4 \tuplet 3/2 { ees'''8( bes''8-^ c'''8->) } |
b''16( fis''16-> cis''8) r16 gis'16-^( a''16-- d'''16) ees'''8 gis''16-> des'''16 c'''8 f'''16 ais''16-> |
\tuplet 3/2 { b''8 cis'''8 dis'''8 } dis'''16-> dis'''16 cis'''16 b''16 fis''8 b''8 cis'''4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "15. Lantern Code" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Straight 16ths, angular · thirds cycles & reharmonized ii–Vs. Devices: side-slip, 4ths, wide enclosures, pentatonic, bebop. Small staff = optional altissimo. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { a1*8/16:m7 aes1*8/16:7.11+ g1*16/16:maj7 bes1*16/16:m7 b1*8/16:m7 bes1*8/16:m7 e1*16/16:7.5+.9+ bes1*16/16:m7 fis1*16/16:m7 b1*16/16:7 des1*32/16:maj7 c1*8/16:maj7 ees1*8/16:7 aes1*8/16:maj7 b1*8/16:7 e1*8/16:maj7 g1*8/16:7.5+.9+ c1*16/16:maj7 bes1*16/16:maj7 c1*16/16:7.11+ } }
\new Staff = "main" { \time 4/4 \tempo "Straight 16ths, angular" 4 = 144 \accidentalStyle modern \tuplet 3/2 { c''8 g'8-- d'8 } \tuplet 6/4 { e'16( a'16 d''16-. g''16-^ f''16 fis'16) } \tuplet 6/4 { d'16 b16 c'16 b16-> des'16 c'16 } b8 cis'8-> |
cis'16 bes'16-> b16 f'16-. g'16 fis'16 ees''16-- cis''16 d''16->( cis'16 bes'8) b16-.( c'16 bes'16-> b16) |
des'8-> aes'8 \tuplet 5/4 { ees'16( bes'16 des'16 fis'16 b'16) } bes'16( f'16-. c'16 d'16) aes'16( des''8 fis''16) |
g''16-> d''8-> a'16-> gis'16( dis'8 ais'16) bes'8( aes'16 g'16) r4 |
g'16( c''16-> ais'16 d''16) c''16( f''16 d''16 g''16-.) f''16( ais''16 g''16 c'''16) ais''16 f''16 g''16 d''16 |
\tuplet 3/2 { des''8( fis''8 b''8) } e'''16( ees''16 bes'16 f'16) c'8 c''16 g'16 d'16( e'16-^ aes'16 ees'16) |
r4 f'8 d''16 ais''16-> c'''16-> g''16-> e''16 cis'''16-> \tuplet 3/2 { a''8( b''8-> dis'''8) } |
\tuplet 3/2 { f'''8( d'''8 dis'''8) } ais'8( c''16-- b'16->) d'16 e'16 dis'16 c''16-. ais'8. b'16 |
bes'8 g'16-> ees'16 f'16-. f'16 ees'16 c'16 r16 c'16( c'16-> ees'16) r4 |
g'16( f'16 f'16 g'16) c''8 bes'8-- bes'16 c''16-> f''16 ees''16 ees''16->( f''8-> bes''16) |
fis'16( aes'16 g'16-- bes'16) \tuplet 6/4 { c'16-- b16 cis'16-. bes'16 b16 cis'16 } r16 des'16 c'16 des'16 r4 |
c'16( d'16-. f'16-> bes'16) f'16( g'16 bes'16 d''16) cis''16( gis'16 dis'16-^ f'16) a'8( d''16 g''16) |
a''16 c'''16 f'''16 b''16-> gis''16( b''16 e'''16 ais''16-^) ais''8. aes''16 g''16( f''16-> ees''16 f''16) |
<< { e''8-. fis''8 b''16->( a''16 a''16 fis''16) r4 d''16-^( e''16 e''16 d''16) } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { e'''8^\markup{\tiny \italic "altiss. ad lib."} fis'''8 b'''16 a'''16 a'''16 fis'''16 r4 d'''16 e'''16 e'''16 d'''16 } >> |
d''16 a'8 e'16 \tuplet 3/2 { b8 bes'8 dis''8-^ } aes''16( ges''8-> c''16) g'16->( d'16 a'16-> bes'16->) |
\tuplet 3/2 { bes'8 f'8 g'8 } d'16( f'16 c'16 d'16->) c'16-> c'16-. f'16 d'16 g'4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "16. Fast Weather" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Straight 16ths, angular · thirds cycles & reharmonized ii–Vs. Devices: superimposition, outside-in, side-slip, wide, pentatonic. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { fis1*8/16:maj7 a1*8/16:7 d1*8/16:maj7 f1*8/16:7 bes1*8/16:maj7 des1*8/16:7.5+.9+ fis1*16/16:maj7 fis1*8/16:m7 b1*8/16:7.5+.9+ e1*8/16:m7 a1*8/16:7.5+.9+ d1*8/16:m7 g1*8/16:7.5+.9+ c1*8/16:m7 f1*8/16:7.5+.9+ bes1*16/16:maj7 c1*16/16:m7 f1*16/16:7 g1*32/16:maj7 e1*8/16:m7 ees1*8/16:7.11+ d1*16/16:maj7 ees1*8/16:m7 d1*8/16:7.11+ } }
\new Staff = "main" { \time 4/4 \tempo "Straight 16ths, angular" 4 = 132 \accidentalStyle modern c''8\mf ais'8 f'8. gis'16 fis''16->( fis'8-- g''16) \tuplet 6/4 { fis'16 g''16-> b'16 fis''16 a'16-^ e''16 } |
ees''8. cis''16-> bes'16( g'16 ees'16 cis'16) \tuplet 3/2 { f''8( g'8 f''8) } a'16( g''16 f'8) |
e'16(\ff b8-. fis'16) r16 gis'16 bes'16 d''16 d''16 c''16 a'16 ges'16-> \tuplet 5/4 { d'16->( c'16-^ d'16 ges'16 f'16->) } |
r4 e'16 b16 fis'16-> gis'16 cis'16--( fis'8-. b'16) cis''16( fis'16 ais'16 ais'16) |
\tuplet 3/2 { b'8->( d''8 f''8) } g''16( b''16-> a''8->) \tuplet 6/4 { aes''16( dis''16 ais'16 c''16 fis''16 b''16) } b''16 g''16-> d'''16 dis'''16-> |
fis''16-> e'''16 cis''16 cis'''16 cis''16( cis'''16 cis''8->) cis''16->( bes'16 ges'16 f'16) \tuplet 3/2 { c'8( a'8 g'8) } |
\tuplet 3/2 { g'8( a'8 b'8) } r4 c''8 f''8 ais''16( aes''16 ees''16 ais'16) |
\tuplet 6/4 { a'16 c''16 f''16 d''16-> d''16 f''16-. } a''16 g''16 g''16-. f''16 e''16( d''16-> b'16 gis'16) e'8( d'16 ees'16) |
ees'16 b8 dis'16 r4 \tuplet 5/4 { fis'16( a'16 b'16 dis''16 fis''16) } a''16( b''8 a''16->) |
gis''8.-> b''16 cis'''16( f'''16-> des'''16 b''16) \tuplet 3/2 { aes''8( f''8 des''8) } b'16 aes'16 f'16 ees'16 |
\tuplet 5/4 { bes'16-. g'16-. ees'16 f'16-- ees''16 } \tuplet 3/2 { c''8( g'8 bes'8) } g''16 f''16 c''16 ees''16 c'''16( bes''16 f''16 g''16) |
\tuplet 6/4 { e'''16--( fis''16 e'''16 e''16 e'''16 d''16) } r4 e'''16( a''16 e'''16 g''16) e'''16 g''16-> d'''16 fis''16-> |
r16 d'''16 g''16 d'''16 d''16 d'''16 g''8-^ e'''8 d''8 d'''16( g''16 d'''16-. e''16) |
e''8 d''16 cis''16 r4 e''8 gis'8-> b'16-> bes'16 g'16 ees'16 |
dis'16-^ g'16 ais'16-- cis''16 dis''16-. g''16 ais''8 cis'''16-. ees'''16-> cis'''16 bes''16 g''16 ees''16 cis''16 cis''16 |
d''16->( g'16 b'16-> bes'16->) des''16 ges''8 aes''16 gis''16( f''16 des''16 b'16) c''4-. | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "17. Vertigo Street" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Straight 16ths, angular · thirds cycles & reharmonized ii–Vs. Devices: 4ths, side-slip, bebop, wide, outside-in. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { a1*8/16:m7 d1*8/16:7.5+.9+ g1*8/16:m7 c1*8/16:7.5+.9+ f1*8/16:m7 bes1*8/16:7.5+.9+ ees1*8/16:m7 aes1*8/16:7.5+.9+ des1*16/16:maj7 bes1*8/16:maj7 des1*8/16:7 fis1*8/16:maj7 a1*8/16:7 d1*8/16:maj7 f1*8/16:7.5+.9+ bes1*16/16:maj7 d1*8/16:m7 g1*8/16:7.5+.9+ c1*8/16:m7 f1*8/16:7.5+.9+ bes1*8/16:m7 ees1*8/16:7.5+.9+ aes1*8/16:m7 des1*8/16:7.5+.9+ fis1*16/16:maj7 ees1*8/16:m7 aes1*8/16:7.5+.9+ des1*16/16:maj7 } }
\new Staff = "main" { \time 4/4 \tempo "Straight 16ths, angular" 4 = 126 \accidentalStyle modern g''16(\mf g'16 g''16 e'16) g''16-^( fis'8 e''16-.) ees''16 gis''16 des'''8-> b''16 c''16 g'16 d'16-> |
\tuplet 3/2 { dis'8( f'8 aes'8) } g'16( e'16 c'16 d'16) \tuplet 3/2 { e'8->( a'8-- aes'8) } c'8.-> dis'16 |
ees'8. f'16 g'16( aes'16 a'16 bes'16) a'16( d''16-> g''16 c'''16) b''8 cis'''16-> d'''16 |
d'''16(\ff g''16 c'''16 bes''16) bes''16( aes''8 ges''16) r4 r16 ges''16( aes''16 a''16) |
aes''8 ees''16 bes'16 r16 f'16-> g''16 c'''16 f'''8 ees'''8 f''16 bes''16 ees'''16 des'''16-> |
des'''16 fis''16 b''16 e'''16 d'''8-. bes''16-> d'''16 d'''16( g''16-> c'''16 bes''16) bes''16( aes''16-- f''8) |
g''16( d''16 a'16 e'16) dis'16-- ais'16-- f'16 g'16 fis'8. cis'16 aes'16( ees'16 d'16 cis'16->) |
dis'16 bes'16 a'8 fis''8-> d'''8 e'''16-^ b''16-. a''16 e''16-^ r4 |
\tuplet 6/4 { e''16( b'16 fis'16 gis'16-> d''16 a'16) } e'16( fis'16 f''16-> c''16) g'8 a'8 e''8-- a''8 |
a''16-. e''16-. b'16-- fis'16 g''16 d''16 a'16 b'16-> d''16 b'16 fis'16 a'16 aes'16-> ais'16 cis''16 f''16-> |
\tuplet 6/4 { f''16->( c'''16 a''16 bes''16-> d'''16 b''16--) } c'''16-. c'''16-. d'''8 des'''16( gis''8 ees''16) ais'8 b''8 |
des''16 des'''16 c''16-> aes''16 \tuplet 6/4 { g'16( f''16-> g'16 f''16 bes'16-. aes''16->) } g''16->( a''16 g''8-^) r4 |
r16 ges''16( aes''16 bes''16-.) b''16-. c'''16 des'''16 ees'''16-> d'''16 g''16-> c'''16 f'''16 e'''8 b''8-> |
b''16( fis''16 cis''8) gis'16-^ d'''16-> g''16 c'''16 f'''16( f'''16 c'''16 ais''16) cis'''16-. fis''16 c'''16 f'''16 |
r4 f'''16 c'''16 g''16 a''16 f'''8. ais''16-. r16 f'''16 f''16 e'''16 |
fis''16 d'''16 a''16-> aes''16 e''16( b'16 aes'16 f'16) des'16 bes'16 ees'8 g'4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "18. Basalt" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Straight 16ths, angular · thirds cycles & reharmonized ii–Vs. Devices: bebop, pentatonic, side-slip, wide enclosures, 4ths. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { aes1*8/16:m7 des1*8/16:7.5+.9+ fis1*8/16:m7 b1*8/16:7.5+.9+ e1*8/16:m7 a1*8/16:7.5+.9+ d1*8/16:m7 g1*8/16:7.5+.9+ c1*16/16:maj7 g1*16/16:maj7 a1*16/16:7.11+ ees1*16/16:maj7 f1*16/16:sus4.7 b1*8/16:m7 e1*8/16:7.5+.9+ a1*8/16:m7 d1*8/16:7.5+.9+ g1*8/16:m7 c1*8/16:7.5+.9+ f1*8/16:m7 bes1*8/16:7.5+.9+ ees1*16/16:maj7 aes1*16/16:m7 a1*8/16:m7 aes1*8/16:m7 } }
\new Staff = "main" { \time 4/4 \tempo "Straight 16ths, angular" 4 = 132 \accidentalStyle modern b'16\mf ges'16 des'8-> r16 ees'16 des''16-. ges''16 \tuplet 6/4 { b'16( d''16-- g''16 e''16 g'16 a'16) } d''16-. b'16 d'16 e'16 |
dis'8. cis'16 b16( b8-- b16) b8 ges'16 cis'16-- aes'16 d'16 g'16-^ c''16 |
b'16( e''16 cis''8) fis''8 e''8-> dis''16-- g''16-. f''16 bes''16-. r4 |
\tuplet 3/2 { c'''8->( dis'''8 f'''8) } \tuplet 6/4 { f'''16 e'''16-> e'''16 e'''16-> e'''16 e'''16 } ees'''16-^( ais''16-> f''8) c''8 cis'''8 |
ees'''8. bes''16 f''16 c''16 des'''16-> fis''16-> e'''16 a''16 d'''16-. g''16-> e'''8. b''16-- |
r4 b''16 e'''16-> a''16 g''16 cis'''16( aes''16 ees''16-^ ais'16) d'''16->( a''16 e''16 b'16) |
b'8-> e''8-^ \tuplet 3/2 { a''8 d'''8 a'8-- } e'16( b8 cis'16) g'16 d'16 a'16-. b16 |
\tuplet 6/4 { c'16( g'16 d'16 e'16-. c'16 f'16) } bes'16->( aes'16-> c'16-> f'16) bes'8 ees''8 r16 c'16( g'16 d'16) |
d'8 a'16-> e'16 b16-> ees'16 gis'8 r4 cis''8 ges''16 d'16 |
\tuplet 3/2 { b8( b8-> cis'8->) } b16 e'16 cis'16 b16 g'16( f'16-> c'16 d'16) c''8 ais'8 |
c''16 g'8 fis'16 b'8. e''16 ees''8->( c''16 gis'16) bes'16 bes'8 gis'16 |
r4 ees'16( cis'16 d'16 c''16) r16 bes''16 g''16 aes''16 c''16-> a'16 bes'16 des'''16 |
g''8 e'''16 f'''16 d''16( e''16-> ees''16 d'''16--) \tuplet 3/2 { d'''8-^ g''8-> c'''8 } \tuplet 6/4 { f'''16 cis'''16 aes''16 dis''16 f''16 b''16 } |
c'''16\mp d'''16 f'''16-^ f'''16-> f'''16 d'''16 c'''16-> g''16 \tuplet 3/2 { c'''8 d'''8-> f'''8 } r4 |
des'''16-> bes''16-. b''16 bes'16 g'16->( aes'8 bes'16) c'16( b8 c'16) bes'16 b8 des'16 |
c'8( f'16 ais'16) ees''16-> b16 fis'16-> cis'16 des'8 ges'16-> b'16 a'4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "19. Afterburn" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Straight 16ths, angular · thirds cycles & reharmonized ii–Vs. Devices: wide enclosures, superimposition, triad pair, side-slip, bebop. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { des1*16/16:m7 d1*8/16:m7 des1*8/16:m7 g1*16/16:7.5+.9+ des1*16/16:m7 bes1*8/16:m7 des1*8/16:7 fis1*8/16:maj7 a1*8/16:7 d1*8/16:maj7 ees1*8/16:7.5+.9+ aes1*16/16:maj7 ees1*16/16:m7 aes1*16/16:7 bes1*32/16:maj7 a1*16/16:maj7 b1*16/16:7.11+ f1*16/16:maj7 g1*16/16:sus4.7 } }
\new Staff = "main" { \time 4/4 \tempo "Straight 16ths, angular" 4 = 132 \accidentalStyle modern b'8\mf aes'8 \tuplet 3/2 { e'8( ges'8-> bes'8) } des'8. b16 e'16 aes'8-> ges''16-^ |
\tuplet 3/2 { f''8 c''8 a'8 } g'16 d'16-^ b16 a'16 b'16--( aes'16 e'16 ges'16) bes'8-. des'16 b16-> |
c''8 ais'16-> b'16-> g''16( e''8 f''16) \tuplet 6/4 { e'''16->( fis''16-> f'''16-- f''16 d''16-> ees''16) } fis'16( aes'16-> g'16 fis''16--) |
ges''16-- a''16 c'''16 d'''16 r4 c'''16( a''16-> ges''8) d''16 c''8-> b'16 |
b'16( aes'16-. e'16 d'16) b16 d'16 des'8-. ees'16( b16 ges'16 f'16->) r16 aes'16( des'16 ees'16) |
cis'16 ais'16 fis''16 gis''16 dis'''16( c'''16-^ cis'''16 fis''16) aes'16 fis'16-> g'16 ees'16-> \tuplet 3/2 { c'8( cis'8 d'8->) } |
d'8( fis'16 a'16) b16 gis'16 e'16 fis'16 g'16( f'16-- d'16 c'16) \tuplet 5/4 { b16( des'16 fis'16 e'16 e'16) } |
des'16->( b16-> c'16 d'16) b16 c'16 b16 des'16 r4 c'8 a'16 g'16 |
g'16( e'8 des'16) r16 e'16-- g'16 a'16 des''16-> e''16 g''16-> a''16 \tuplet 5/4 { des'''16->( e'''16 des'''16 a''16 ges''16) } |
ges''8 bes'8 des'16( c'16 aes'16 ees''16) r4 ges''8 des'''16 bes''16 |
bes''16-.( d'''16 f'''16 g''16) e'''16( c'''16 bes''16-. f''16) d''16( c''16 g'16 e'16) f'16( d'16-- bes'16-> g'16) |
c'16 e'16 f'16 bes'16 \tuplet 6/4 { d''16 e''16 g''16 c'''16-. d'''16 f'''16 } bes''16( c'''16-- g''16 e'''16) f'''16( d'''16 bes''16 g''16) |
r4 g''16-> ais''16-- cis'''8 dis'''8( cis'''16 bes''16->) g''16( dis''16 cis''16 cis''16) |
d'''8 e'''8 dis'''16 b''16 gis''16 a''16 \tuplet 5/4 { cis''16( ais'16 b'16 gis''16 bes''16) } a''8 f''8 |
ges''16( ees''16 b'16 a'16->) ges'16 ees'16 b16 dis'16-> \tuplet 5/4 { fis'16 a'16 b'16 dis''16 fis''16 } a''16 b''16 dis'''16 e'''16 |
fis''8\mf des'''8-> r4 aes''16-> g''16 c'''16 f'''16 ais''4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "20. Jagged Halo" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Straight 16ths, angular · thirds cycles & reharmonized ii–Vs. Devices: triad pair, bebop, side-slip, superimposition, wide. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { c1*16/16:m7 f1*16/16:7 g1*32/16:maj7 bes1*16/16:m7 b1*8/16:m7 bes1*8/16:m7 e1*16/16:7.5+.9+ bes1*16/16:m7 a1*8/16:maj7 c1*8/16:7 f1*8/16:maj7 aes1*8/16:7 des1*8/16:maj7 e1*8/16:7.5+.9+ a1*16/16:maj7 des1*8/16:m7 c1*8/16:7.11+ b1*16/16:maj7 c1*8/16:m7 f1*8/16:7.5+.9+ bes1*8/16:m7 ees1*8/16:7.5+.9+ } }
\new Staff = "main" { \time 4/4 \tempo "Straight 16ths, angular" 4 = 152 \accidentalStyle modern a''16->\mf c''16 ees'''8 ees''16( bes''16-^ ees''16 ees'''16) r16 ees''16( bes''16 d''16) \tuplet 5/4 { d'''16( d''16-> ees'''16 g''16 ees'''16) } |
d''16( d'''16-^ ees''16 d'''16) f''8 c'''16-. c''16 d'''8-> d''8 a''16 c''16 c'''16-> f''16 |
d'''16( b'8 a''16) b'16( g''16 fis'16 g''16) \tuplet 3/2 { e'8-> fis''8 a'8 } g''8 b'16 g''16 |
\tuplet 6/4 { a'16( fis''16-. g'16 a''16 g'16-- fis''16) } fis'16( d''8 g'16) \tuplet 3/2 { a''8 a'8-> a''8-- } fis'16->( d''16 g'16 d''16->) |
r4 \tuplet 3/2 { d''8( fis''8 a''8) } \tuplet 6/4 { aes''16( b''16 aes''16 des''16 f'16 ees'16) } g'8. bes'16 |
ais'16-^ d''16-. f''8-- gis''8 bes''16 a''16 r16 f'''16 g''16 f'''16 r16 des''16 aes''16-^ f'16 |
f'8 gis'8-> ais'16-.( d''16 f''16 gis''16) ais''16 d'''8 d'''16-^ r4 |
\tuplet 3/2 { e'''8 b''8 fis''8 } \tuplet 3/2 { aes''8( d'''8 g''8->) } c'''16( bes''8 ees'''16) \tuplet 5/4 { aes''16( des'''16-> aes''16 ees''16-> bes'16) } |
a'16->\mp cis''16 e''16-> b''16 fis''8. dis''16 ees''16 b'16 a'16 bes'16-> r4 |
a'16-- f''8 c'''16 b''16-- g''8 d'''16 d'''16( c'''16-> a''16 ges''16-.) d''8( c''16 c''16) |
c''16-^( d''16-> fis''16-> a''16) c'''16 d'''16 c'''16 c'''16 r16 gis'16->( ges''16 gis'16->) c'''16( c''16 e'''16 gis''16--) |
fis''16 dis''16 e''16-> e''16 dis''8. e''16-> f''16 fis''16 gis''8 r4 |
r16 e'''16->( ees''16 bes''16) \tuplet 5/4 { b'16-. des'''16 bes'16 bes''16 ees''16-> } e''16 des''8 bes'16-- \tuplet 6/4 { fis'16-.( e'16 cis'16-> e'16 fis'16 e'16) } |
r16 fis'16->( b'16 e''16) r16 a''16( d'16 a'16) r16 gis'16-> cis''16 fis''16-> b''16( ais'16 f'16 c'16) |
c'16( f'16-> d'16 ees'16) a'16-.( fis'16 g'16 g'16) gis'16( e'8-- d'16->) b16( d'16-^ e'16 ees'16->) |
f'16-. aes'16 des'16 ees'16-. bes'8( g'16-> aes'16) r4 g'4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "21. Overclock" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Straight 16ths, angular · thirds cycles & reharmonized ii–Vs. Devices: triad pair, superimposition, 4ths, side-slip, pentatonic. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { c1*8/16:maj7 ees1*8/16:7 aes1*8/16:maj7 b1*8/16:7 e1*8/16:maj7 g1*8/16:7.5+.9+ c1*16/16:maj7 des1*8/16:m7 e1*8/16:7 a1*8/16:maj7 c1*8/16:7 f1*8/16:maj7 ges1*8/16:7.5+.9+ b1*16/16:maj7 ees1*8/16:m7 d1*8/16:7.11+ des1*16/16:maj7 b1*8/16:maj7 d1*8/16:7 g1*8/16:maj7 bes1*8/16:7 ees1*8/16:maj7 ges1*8/16:7.5+.9+ b1*16/16:maj7 f1*8/16:m7 bes1*8/16:7.5+.9+ ees1*16/16:maj7 } }
\new Staff = "main" { \time 4/4 \tempo "Straight 16ths, angular" 4 = 152 \accidentalStyle modern b'16->\mf cis''16-> f''8-> \tuplet 3/2 { gis''8->( b''8 b''8--) } c'''16 a''16 ges''16-> d''16-> c''16-.( a'16 fis'16 g'16) |
aes'16-^( ges'16 ees'16 cis'16) g'16 f'16 c'16-- d'16 e'8( cis'16 a'16) dis'16->( b16 fis'16 a'16) |
r16 gis'16 cis''16-^ fis''16-- \tuplet 6/4 { e''16 ais'16 f'16 c'16 d'16 fis'16-> } f'16-- g'16-> aes'8-. r4 |
g'16( e''8 c'''16) d'''16( a''16 fis''16 e'''16) \tuplet 5/4 { g''16 c'''16-> a''16 d''16 fis'16 } g'16 c'16 e'16 d'16 |
r16 e'16( b'16 bes'16) ees''8-- aes''8 \tuplet 3/2 { a''8( e''8 fis''8) } d''16 e''16 b'16 d''16-> |
cis''16-> gis'16 dis'16 f'16 b'16( e''16-- a''16 d'''16) \tuplet 5/4 { cis'''16( f'''16-^ des'''16-. b''16 bes''16-^) } r4 |
\tuplet 3/2 { a''8( b''8 ees'''8->) } b''16-> a''8 a''16-. a''16( c'''8 dis'''16) f'''8 e'''8-- |
dis'''16( cis'''16 ais''16 f''16) \tuplet 6/4 { ais''16-.( cis'''16-> dis'''16 f'''16 dis'''16-. cis'''16->) } ais''16( f''16 ais''16 cis'''16) dis'''16 f'''16-> dis'''16 cis'''16 |
des'''16->( aes''16 ees''16 bes'16) ees'''16( aes''16 des'''16 b''16) a''16 d''16 fis'16 e'16 \tuplet 6/4 { gis'16( b16 d'16-. a'16 fis'16-> gis'16->) } |
\tuplet 6/4 { a'16 d''16-- fis''16 e'''16-- b''16 aes''16 } aes''16 des''16-> f'16-^ ees'16 g'16->( bes'8 des'16) r4 |
dis'8. fis'16-. b8 cis'16 gis'16 g'16( c''16 e''8) fis''16( a''16-> d'''16 e'''16) |
\tuplet 3/2 { gis''8( ees'''8-> c'''8) } r16 b''16-> g''16 d''16-> cis''16( e''16 g''16 a''16->) \tuplet 6/4 { cis'''16 e'''16 des'''16 a''16-> g''16 aes''16-> } |
g''16 d''16 a'16 b'16 \tuplet 6/4 { a''16-- d'''16 g''16 f'''16 g''16 c'''16 } r4 c'''16->( d'''16 e'''8) |
dis'''16 fis''16 b''16-. cis'''16 \tuplet 3/2 { gis''8-> f'''8 fis''8-> } dis'''8 b''16 gis''16 f''16( cis''16-> b'16 fis'16) |
f'16-> bes'8 ees''16 \tuplet 3/2 { aes''8 ees'8-^ bes'8-> } r16 e'16 ges'16 b'16 aes'16 b16 cis'16 ges'16 |
f'16 c'16 g'16 a'16 a'16->( d''16-> g''16 c'''16) r4 bes'4-> | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "22. Shatterline" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 · Straight 16ths, angular · thirds cycles & reharmonized ii–Vs. Devices: side-slip, outside-in, bebop, wide enclosures, wide. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { f1*8/16:m7 bes1*8/16:7.5+.9+ ees1*16/16:maj7 des1*8/16:m7 ges1*8/16:7.5+.9+ b1*16/16:maj7 a1*8/16:m7 d1*8/16:7.5+.9+ g1*16/16:maj7 d1*8/16:m7 g1*8/16:7.5+.9+ c1*16/16:maj7 bes1*8/16:m7 ees1*8/16:7.5+.9+ aes1*16/16:maj7 fis1*8/16:m7 b1*8/16:7.5+.9+ e1*16/16:maj7 f1*16/16:m7 fis1*8/16:m7 f1*8/16:m7 b1*16/16:7.5+.9+ f1*16/16:m7 } }
\new Staff = "main" { \time 4/4 \tempo "Straight 16ths, angular" 4 = 138 \accidentalStyle modern r16 ees'16( ees''16 f'16->) ees''16 g'16 ees''16-. g'16 a'8( g'16-> f'16->) \tuplet 5/4 { c'16 b16-. b16-. b16 b16 } |
d''16 g'16 ees''16-> f'16 \tuplet 6/4 { d''16->( g'16-. f''16-> d'16 d''16 f'16-.) } ees''8. f'16 d''16->( f'16 g''16 ees'16->) |
\tuplet 3/2 { ees''8 e'8 aes''8 } e'8 e''16 aes'16 r16 g'16( dis''16-> bes''16->) \tuplet 6/4 { des'''16( gis''16 f'''16 e'''16 d'''16-> bes''16->) } |
r4 a''16( d'''16 g''8) c'''16-.( g''16 d''16 dis''16->) fis''8. ais''16 |
c'''16-> g''8 d''16 c''16-. f''16 bes''16-> gis''16 e'''16-> d''16 bes''16 b'16 \tuplet 5/4 { bes''16( bes'16-> c'''16 d''16 b''16) } |
\tuplet 3/2 { f'''8( ees'''8-> ais''8) } c'''8 gis''8-> r4 ais''16( b''16-> d''16 fis'16) |
des'16( b16-^ c'16 des'16) b16 c'16-^ b8-. c'16 f'16 f'8-> ees'8. b16 |
\tuplet 6/4 { b16 c'16 d'16 e'16 d'16 c'16 } d'16( a'16 fis'16 g'16) r4 g'16( gis'16 a'16-. b'16-.) |
r16 b'16 e''16 a''16 d'''16( des'''16-> aes''16 des'''16) c''8( ais'16 b'16) \tuplet 6/4 { c'16 bes'16 b16 aes'16 fis'16 g'16 } |
ges'16( cis'16 aes'16 ees'16) e'16 a'16 d''16 c''16 ges'16( des'16 c'16 ees'16) aes'16 f''16 d''16 c''16-. |
d''16-> f''16 ais''16 c'''16 a''16 cis'''16-- e'''16 b''16-- b'16( dis'''16-^ dis''16 dis'''16->) r4 |
f'''16 c'''16-> a''16 b'16 \tuplet 5/4 { d''16( g''16-. f''16 c''16-. a'16) } r16 b16( b16 e'16) gis'16( fis''16 cis''16-> gis'16) |
\tuplet 3/2 { aes''8-> f'8 g''8-- } g'16->( aes''16-^ g'16-> aes''16-.) aes'16->( c'''16 f''8) ees'''16( ees''16 ees'''16-^ c''16) |
\tuplet 5/4 { ais'16 dis''16-. g''16 a''16 c'''16 } \tuplet 3/2 { cis'''8 e'''8-> a''8 } aes'16( c'''16 d''16 f'''16) aes''16-.( ees'''16 d''16 f'''16) |
e''16 d''16-> dis''8 r4 fis'8 aes'16-^ g'16 c'16->( bes'16 b16 c'16) |
c'16( d'8 ees'16) f'16-. g'16-> aes'16 g'16 f'16( ees'8 d'16) c'4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "23. Wolf Interval" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"5/4 · Even 8ths, 5/4 · odd-meter cycles & tritone-sub ii–Vs. Devices: side-slip, outside-in, bebop, wide enclosures, 4ths. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { a1*40/16:m7 bes1*20/16:m7 a1*20/16:7.11+ aes1*20/16:maj7 f1*20/16:maj7 aes1*20/16:7 des1*20/16:maj7 c1*20/16:m7 b1*20/16:7.11+ bes1*20/16:maj7 ees1*20/16:maj7 b1*40/16:m7 c1*40/16:m7 } }
\new Staff = "main" { \time 5/4 \tempo "Even 8ths, 5/4" 4 = 240 \accidentalStyle modern c''8\mf g'8-> d'8 e'8 des''16( aes'16 dis'16 ais'16) \tuplet 5/4 { c''16-> f''16 ais''16 ees'''16 bes'16 } f'16( c'16 d'16 c''16) |
g'8-. d'8-- e'16 e'16-> d'8 d'16-> b16 c'8 d'8-> b8-> c'16->( c'16-- des'16 c'16-.) |
d'16-> a'16 fis''8-> aes''8 e'''8 r4 b''16 d'''16 d'''16 ees'''16 f'''8 des'''8 |
cis'''16( fis''16-. b''8) a''8 dis'''8 bes''8 f''8-> c''16( b''16 e'''16 a''16) d'''8 a''8 |
aes''8 b''8-> e'''16( des'''16-> des'''16 b''16->) \tuplet 3/2 { fis''8 aes''8-> aes''8 } \tuplet 3/2 { b''8( c'''8 aes''8-^) } ees''16 d''16 bes'16-> g'16 |
r4 aes'8 f'8 ees'16( c'16 ees'16 d'16) b16 b16 b16-> b16 r8 b8 |
c'16( f'16-^ bes'16 aes'16) des'8-> aes'8 \tuplet 3/2 { ees'8 f'8-. ees'8-. } r8 aes'8 \tuplet 3/2 { des''8( ges''8-> des'8) } |
g'16( a'16 aes'16 d''16) \tuplet 3/2 { c''8( des''8 b8) } des'16( c'16 c''16 d''16->) r4 des''16( ees'16 c'16 des'16) |
\tuplet 5/4 { ees'16->( aes'16 fis'16-- bes'16 gis'16) } des''8 bes'8 ees''8 g'8 \tuplet 3/2 { a'8( d''8 c''8) } \tuplet 5/4 { d'16 f'16-> a'16-> g'16 c'16 } |
b16( e'16-> a'16 d''16) b16 fis'16 cis'8-> r8 gis'8 dis'16 gis'16 cis''16 b'16 \tuplet 3/2 { cis'8( fis'8 b'8->) } |
cis'16-^( ees'16 d'16 b'16) gis'16 a'16-- c'''16 a''16 bes''8 fis''8 \tuplet 3/2 { e'''8 f'''8 ees''8 } cis''8-. d''8 |
r4 d'8 e'8-. ees'16( d''16 e''16 ees''16) r8 fis'8 aes'16-> g'16-^ e''16 cis''16 |
\tuplet 3/2 { cis''8( gis'8 dis'8) } r8 ais'8 d''16( g''16 c'''16-. f'''16) r8 fis''8-> r8 cis''8 |
gis'8 ais'8 r4 d''16( g''16 c'''16 bes''16) cis''8-> gis'8-> dis'16-> ais'16 e''16 a''16 |
\tuplet 3/2 { b''8 e'''8 gis''8 } des'''8 fis''8 bes''16( b''16 gis''16 e'''16) ees'''8 g''8-> bes''8 f'''8 |
r8 a''8 c'''8 bes''8 r4 g''8-> ees'''8 f''4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "24. Carbon Bloom" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"7/8 · 2+2+3 groove · odd-meter cycles & tritone-sub ii–Vs. Devices: triad pair, superimposition, pentatonic, side-slip, bebop. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { a1*28/16:sus4.7 aes1*14/16:m7.5- b1*14/16:maj7 d1*14/16:7 g1*14/16:maj7 c1*28/16:sus4.7 des1*14/16:m7 c1*14/16:7.11+ b1*14/16:maj7 aes1*14/16:maj7 b1*14/16:7 e1*14/16:maj7 f1*14/16:maj7 aes1*14/16:7 des1*14/16:maj7 c1*28/16:m7 f1*14/16:maj7 aes1*14/16:7 des1*14/16:maj7 a1*28/16:m7 } }
\new Staff = "main" { \time 2,2,3 7/8 \tempo "2+2+3 groove" 8 = 330 \accidentalStyle modern b'16(\mf a'16 e'16 g'16) g'8 e'8-> b8( d'8 d'16 e'16--) |
a'16( g'16 g'16-. a'16) d''8-- b'8 b'8-> d''8 g''8 |
g''16( a''16 des'''16-> e'''16) des'''8 a''8 g''8( e''8 ges''8) |
fis''8 dis'''8-> b''8 cis'''8 r8 f'''8 gis''8 |
g''8 a''8 r4 c'''16 e'''16 c'''16 a''16-> g''16-. d''16-. |
dis''16( fis''16 gis''16 c'''16) r8 ees'''8 c'''16 aes''16 fis''8 fis''8 |
f''8--\mf e''8-- d''16( c''16 a'16 bes'16) bes'16 a'16 g'16 f'16 d'16 b16 |
c'8 c'8-> b8 c'8 r4. |
b16 e'16 aes'16 ges''16-> des''8 bes'8 b'8-.( e''8-- aes''8) |
g''8 bes''8 d'''8 c'''8 c'''16 bes''16 f''8-^ g''8 |
g''8 ais''8 c'''16( e'''16 c'''16 ais''16) g''8-. e''8 dis''8 |
\tuplet 3/2 { ees''8 c'''8 aes''8 } bes''16( d'''16 f''16 ees''16) aes'16-.( c'16-> bes'8-> f'8) |
b'16( a'16 e'16 fis'16-^) e''16 cis''16 a'16 b'16 a''16-> fis''16 cis''8 e''8 |
e''16 b'16 gis'16 fis'16-> r4 cis'8( ais'8 gis'8) |
a'16(\ff f'16-- c'8) \tuplet 3/2 { g'8( d'8 b8) } c'16-- f'16-> a'8 g''8-^ |
\tuplet 5/4 { ges''16->( bes''16-. aes''16 des'''16 bes''16) } ges''16( aes''16 ees''8) ges''8 bes''8 aes''8 |
\tuplet 3/2 { aes''8 f''8 des''8 } r8 bes'8 g'16-.( ees'16 des'16 f'16 aes'16 g'16) |
aes'8 ees'8 bes'8 f'8-- e'8-> a'8-> d''16-. g''16 |
ees'8-> d'8 g'8 c''8-. f''16( c'16 g'16-. d'16 e'16 c'16) |
r4 b16( d'16 g'16 e'16->) e'16->( g'16 b'16 a'16-. a'16 b'16-.) |
bes'16( ges'16 aes'16-. ees'16) ges'8 des'8-- ees'8 des'8 des'8 |
des'8 ees'8-- bes'16->( g'16 aes'8) aes'8-^ a'8 bes'8 |
c''16-.(\p g'16 d'16 e'16->) bes'16->( f'16-. c'16-^ b16) r4. |
e'8 a'8 d''16-. b16 fis'16 cis'16-> gis'4. | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "25. Smoke Geometry" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"9/8 · 3+3+3, driving · odd-meter cycles & tritone-sub ii–Vs. Devices: 4ths, wide, pentatonic, side-slip, wide enclosures. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { f1*36/16:sus4.7 des1*36/16:7.11+ d1*36/16:7.11+ bes1*18/16:m7 g1*18/16:maj7 bes1*18/16:7 ees1*18/16:maj7 aes1*36/16:sus4.7 c1*18/16:7.5+.9+ a1*36/16:7.11+ e1*18/16:maj7 g1*18/16:7 c1*18/16:maj7 } }
\new Staff = "main" { \time 9/8 \tempo "3+3+3, driving" 8 = 340 \accidentalStyle modern c'16\mf c''16 c'16 bes'16 c'16-. bes'16 c'8( d''8-> c'16 c''16) f'8( f''8 ees'16 f''16) |
d'16-. d''16 g'8-> d''8 d'8 bes'8 ees'16-. d''16 ees'8( bes'8 c'8->) |
b8 b8-> b16-> b16 \tuplet 4/3 { b8-> b8 b8-> des'8 } b4-> b8 |
\tuplet 4/3 { b8-. b8 b8 b8-- } b8( des'8-. b8->) b16 b16 b16 b16 b16-> b16 |
fis'16-> b16 c''8-> d'8 c''8 d'8 e''16 fis'16 d''8 fis'8 fis''8 |
r4. fis'8( a''8 fis'16 d''16) d'16( d''16-> b8 fis'8) |
f'16( c'16 g'8-. d'8) des'8 fis'8-> b'8-- a'4 f'8 |
fis''8->( aes''8 g''16 cis''16) ais'16-^ b'16 aes''8 f''8-^ fis''16( c''16 ais'8-- b'8->) |
bes'16( ees''16 aes''8-> des'''8) aes'8( ees'8 bes'8) c'8-> f'8-. c'16 g'16 |
cis''8( ees''8 d''8) d'8( e'8-- ees'16 cis'16) ees'8( d'8-^ ees'8) |
r8 e'8 a'8 r4. d''8( g''8 d'8--) |
a'16 e'16 ges'16-. ges'16 b'16-> bes'16 ees''16->( aes''16 des'''16-> aes'16-> ees'16 bes'16) c'8 ges'8 b'8-> |
des'16( b16-> c'8-> b'8-.) des''8( c''8 d'8) b8( c'8 a'8) |
dis'8 f'8 bes'16 aes'16 c'16 c'16 f'8 dis'8 aes'16( b16 d'8-. g'8) |
r8 e'8 a'8 g'16( d'16-^ e'8 d''8) r4. |
f''16-.\mp a''16 c'''8-> g''8 d'''8 b''8 gis''8-> e'''8( cis'''8 fis''8->) |
f''16 g''16-- a''16 d'''16-> a''16-. g''16 f''16( c''16-- f''16 d''16-> c''16 g'16) c''4 a'8-> |
a'8( b'8 d''8) fis''16-> d''16 e''8 fis''8 b''4. | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "26. Ironwood" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"11/8 · 3+3+3+2 groove · odd-meter cycles & tritone-sub ii–Vs. Devices: side-slip, wide, 4ths, bebop, triad pair. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { aes1*22/16:maj7 b1*22/16:7 e1*22/16:maj7 b1*22/16:maj7 e1*44/16:m7 f1*22/16:m7 e1*22/16:7.11+ ees1*22/16:maj7 b1*44/16:m7 e1*44/16:7.11+ c1*22/16:maj7 e1*22/16:maj7 } }
\new Staff = "main" { \time 3,3,3,2 11/8 \tempo "3+3+3+2 groove" 8 = 320 \accidentalStyle modern c''8\mf g'8 d'16 a'16 \tuplet 4/3 { bes'8( ees''8 aes''8 des'''8-.) } aes'16->( cis''16-> fis''16 b''16 g'16 d'16) a'16 b16-> f'16-^ bes'16 |
fis''16 gis'16-. a''8 gis'8 fis''8 gis'8 fis''16 b'16 a''8 b'8 gis''16 gis'16 gis''16( b'16-. gis''16-> b'16-.) |
b'4 e'8-^ gis'16->( fis'16-> cis'8 ais'8) b'8 gis''8 e'''8 r8 fis''8 |
r4. fis''8( b'8-^ dis'8-.) cis'8-- gis'8-> f''8 \tuplet 3/2 { fis''8( dis'''8-> b''8) } |
c'''8->( bes''8 f''16 g''16) g''16 ais''16-> d'''16 c'''16 c'''16 bes''16-. \tuplet 4/3 { f''8 g''8-> g''8 ais''8 } d'''16( c'''16-. b''16-^ a''16) |
fis''8\f cis''8 fis''8-> a''8 b''8 e'''16 b''16 a''16-.( fis''16 cis''16 fis''16 a''16 b''16) e'''8 b''8-. |
c''16->\f aes''16 c''8-. d'''8 r8 d''8-> c'''8 aes'16 aes''16 aes'16-. c'''16 d''16 ees'''16 \tuplet 3/2 { ees''8 c'''8 aes'8 } |
ais'4 f'8 r4. g'8( ees'8 d'16 b16) b8 b8 |
r8 c'8 g'8 d'16 a'16 ees'16 gis'16-> cis''16 ges''16 f'8( c'8 g'8-.) a'16 d'16 g'8 |
a'8( g'8 f'8) c'16( f'16-^ d'16 c'16 c'16 c'16->) d'8 f'8 a'16 f'16 r8 g'8-> |
b8 cis'8-- fis'8 e'16 gis'16 fis'8-- cis'8 e'8 cis''8-> b'16 fis'16 gis'16-> fis''16 e''16 b'16 |
c''16->( f''16 dis''16 g''16 f''16 ais''16) g''8 c'''8 ais''16 f''16-> r4. \tuplet 5/4 { g''16-^ dis''16 f''16-> c''16-> ees''16 } |
fis'16 a'16 d''16-> b'16 d'16 e'16-- a'8-> fis'8 b8-> b8 e'8 d'8 fis'16->( e'16 b16 d'16--) |
d'16 g'16 c''8 f''8 c'8 g'8 d'16 a'16 b8-^ e'8 a'8-- g'8 b8 |
d'8 e'8 a'8 g'16 g'16 a'16 d''16-> cis''16 ais'16 gis'8 dis'8-> gis'16 fis'16 dis'4-> | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "27. Static Horizon" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"7/4 · Even 8ths, 7/4 · odd-meter cycles & tritone-sub ii–Vs. Devices: triad pair, wide enclosures, bebop, wide, pentatonic. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { des1*28/16:maj7 e1*28/16:7 a1*28/16:maj7 bes1*28/16:maj7 fis1*28/16:maj7 e1*28/16:m7 ees1*28/16:7.11+ d1*28/16:maj7 a1*28/16:m7.5- c1*28/16:maj7 ees1*28/16:7 aes1*28/16:maj7 ees1*28/16:m7 } }
\new Staff = "main" { \time 7/4 \tempo "Even 8ths, 7/4" 4 = 220 \accidentalStyle modern \tuplet 5/4 { aes''16( aes'16-. ees''16 des'16 c''16) } des'8 bes'8 des'8 ees''8-^ r8 f'8 r8 aes''8 c''16-> bes''16 des''16-. ees'''16 des''16-> aes''16 c''8-- |
c'''16 ais''16-^ b''8 fis''16( dis'''16 e'''16 a''16) g''16->( gis''16 ees'''16 cis'''16) d'''16 f''16 dis''16 e''16-> r8 cis'''8 ais''16-> b''16 bes'16 g'16-- gis'8 ais'8 |
a'8 cis''8 e''16->( b''16-> fis''16 dis''16) r4 \tuplet 3/2 { e''8( a''8 cis'''8--) } fis''16-^( b''16-- dis'''16 e'''16->) cis'''16( a''16 b'16 dis''16) fis''8 e''8 |
\tuplet 3/2 { e''8 f''8 e''8 } d''16 c''16 bes'16 a'16-^ \tuplet 3/2 { g'8-> ges'8-> e'8 } cis'8 d'8-> r4 d'16-- g'16 e'8 f'16( f'16 fis'8) |
c'16( c'16 f'16-> dis'16) gis'16 f'16 c'16 dis'16 c''16 ais'16 f'16 gis'16 r8 f''8 dis''8 ais'8-- r8 c''8 r8 ais''8-^ |
\tuplet 3/2 { a''8( b''8 e'''8) } \tuplet 5/4 { cis'''16( cis'''16 b''16 fis''16 a''16) } r4 a''8 b''8 e'''16 cis'''16 cis'''16 b''16-> fis''8 a''8 a''16 b''16 e'''16 cis'''16-> |
ees''8 bes''8-> des''16( ees'''16-> des''16 des'''16) f''16 f'''16-- des''8 c'''16( ees''16 f'''16 ees''16) c'''8 f''8 f'''8 des''8-^ bes''16 bes'16 f''16 g'16-> |
fis'16(\p e'16-> b16-- cis'16) \tuplet 3/2 { cis'8 e'8-> gis'8 } r4 \tuplet 3/2 { fis'8-> fis'8-> gis'8 } r8 cis''8-> b'16 b'16-. cis''16 fis''16 \tuplet 3/2 { e''8( e''8 fis''8-.) } |
\tuplet 3/2 { f''8( ees''8-> ais'8) } r8 c''8-^ c''16( bes'16 f'16 g'16) r8 g'8-> f'16-^ c'16 ees'8 ees'8 f'8-> r8 ais'8 |
a'8 gis'8 r4 d''16( b'16 c''16-. c''16) d''16 e''16-> fis''16 g''16 \tuplet 3/2 { gis''8 d'''8 b''8-. } c'''16-^ c'''16 d'''16 e'''16 d'''8 c'''8 |
des'''8 f''8 aes'8-> g'8 r8 bes'8 ees'8-. des'8 \tuplet 3/2 { aes'8-> f'8 g'8-^ } ees''16( bes''16-^ des'''16 aes''16) f'''16 ees'''16 g''8 |
aes''16( ees''16-> c''16 d'16) \tuplet 3/2 { f'8( bes'8 aes'8) } r4 ees'8 c'8 f'16->( d'16 bes'16 c'16) ees'8 aes'8 f''8 d''8 |
des''8-- bes'8-> r8 ges'8 \tuplet 3/2 { ees'8->( c'8 aes'8) } ges'16( bes'16 des'16 c'16) r8 ees'8-> \tuplet 3/2 { aes'8 bes'8 des''8 } ges''4-> | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "28. Heatwave Grammar" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"5/4 · Even 8ths, 5/4 · odd-meter cycles & tritone-sub ii–Vs. Devices: outside-in, 4ths, wide, pentatonic, bebop. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { fis1*20/16:maj7 e1*20/16:m7 ees1*20/16:7.11+ d1*20/16:maj7 des1*20/16:7.5+.9+ e1*20/16:m7.5- f1*20/16:maj7 fis1*20/16:maj7 e1*20/16:m7 ees1*20/16:7.11+ d1*20/16:maj7 ees1*40/16:sus4.7 d1*40/16:7.11+ ees1*20/16:maj7 } }
\new Staff = "main" { \time 5/4 \tempo "Even 8ths, 5/4" 4 = 240 \accidentalStyle modern b'8\mf a'8 fis'8 d'8 fis'16( e'16-- d'16-> b16) cis'16 ais'16 fis'8 r8 f'8 |
e'16( d'16 cis'16 b16) cis'8 d'8 \tuplet 5/4 { e'16( fis'16-> g'16 aes'16 g'16->) } \tuplet 5/4 { e'16 cis'16 d'16 d'16-> cis'16-> } b16( cis'16 d'8-^) |
des'16 aes'16-> ees'16 bes'16 f'8 bes'8 r4 \tuplet 5/4 { ees''16 aes''16 g'16-> d'16-> a'16-> } e'16->( a'16 d''8) |
d''16( a'16 e'16 b16) cis''8 fis''8 b''8 a''8 e''8 b'8 fis'8 cis'8 |
r8 des''8 des'8 bes'8 dis'8 des''8 des'16( ees''16 f'16 ees''16) \tuplet 3/2 { des'8-. ees''8 dis'8 } |
r4 dis'16( gis'16-> cis''16 fis''16) fis'8-^ b'8 e''16->( a''16-. aes'16 ees'16) \tuplet 5/4 { d'16 e'16 fis'16-> g'16 g'16 } |
\tuplet 3/2 { c'8-> d''8-> c'8 } \tuplet 3/2 { g'8->( c'8 c''8) } d'16-> d''16 g'16 f''16 g'16 g''16 c''8 c'''8 a'8 |
\tuplet 3/2 { g'8( e'8 c'8) } r4 \tuplet 3/2 { fis'8-. d'8 a'8-> } ais'8 cis''8-> fis''8 ais''8 |
\tuplet 5/4 { cis''16 cis'''16 d''16-> cis'''16 d''16 } cis'''16( e''16 e'''8) g''16( e'''16 g''16 d'''16) e''16-^ b''16-> e''16 e'''16 r8 g''8 |
g''8 a''8 bes''16( c'''16-> des'''16-> d'''16->) ees'''16 f'''16 ees'''16 d'''16 c'''16 a''16 bes''16 bes''16 r4 |
gis''8 f''8 fis''16-> e''16-> cis''16-> d''16-- \tuplet 3/2 { d''8-> cis''8 b'8 } bes'8 a'8 gis'16 fis'16 e'8 |
e'16 g'16-> b'16 a'16-> \tuplet 3/2 { a'8( b'8-> e''8) } d''8-> d''8 e''16-> a''16 g''16-> g''16-> e''16-> b'16-> d''16-- d''16-> |
\tuplet 3/2 { b'8--( bes'8 c''8-.) } des''8 d''8-- ees''16-^ f''16 g''16 aes''16 r4 bes''8 des'''8 |
\tuplet 3/2 { cis'''8 d'''8 e'''8-> } \tuplet 3/2 { d'''8( e'''8-> cis'''8->) } r8 d'''8 d'''16( e'''16 d'''16 des'''16) c'''16-.( b''16-> a''16 gis''16-.) |
fis''8 d''8-> b'8-> c''8-^ b'16 gis'16 a'16-- a'16-^ gis'8 f'8 fis'8 fis'8 |
r4 \tuplet 5/4 { ges'16 cis'16 gis'16 bes'16-> gis'16-> } cis''8 fis''8-> b''16-> b''16 c'''16 d'''16 d'''4-^ | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "29. Northern Ledger" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"7/8 · 2+2+3 groove · odd-meter cycles & tritone-sub ii–Vs. Devices: wide enclosures, superimposition, bebop, triad pair, wide. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { aes1*14/16:maj7 b1*14/16:7 e1*14/16:maj7 c1*14/16:maj7 ees1*14/16:7 aes1*14/16:maj7 a1*28/16:7.11+ des1*14/16:maj7 d1*14/16:m7 des1*14/16:7.11+ c1*14/16:maj7 a1*14/16:maj7 c1*14/16:7 f1*14/16:maj7 e1*14/16:maj7 aes1*14/16:maj7 b1*14/16:7 e1*14/16:maj7 des1*28/16:m7 d1*14/16:m7 bes1*28/16:7.11+ } }
\new Staff = "main" { \time 2,2,3 7/8 \tempo "2+2+3 groove" 8 = 330 \accidentalStyle modern c''16--\mf ees''16 aes''16-> bes''16 d'''8 f'''8 aes''16-. ees'''16 c'''16 bes''16 f''16 d''16 |
cis''16 a''16 e'''16 fis''16 b''16( dis''16 e''16 a'16) cis'8-> b8 fis'16 dis''16 |
e''8 b'8 \tuplet 3/2 { gis'8( ais'8 cis'8) } r8 fis'8 e'8-. |
a''16 fis''16 g''16 fis'16-^ \tuplet 3/2 { dis'8( e'8 a''8) } r4. |
c''8-^ g''8 f'8 ees''8 g'8-^( f''8 bes'8) |
b'16 d''16 f''16 g''16 b''16( d'''16 f'''16 d'''16) b''8 g''8 f''16-- g''16-. |
r8 f'''8 \tuplet 3/2 { dis'''8-> e'''8-^ f'''8-> } \tuplet 4/3 { dis'''8->( e'''8 c''8 d''8) } |
r4 cis''16( dis'''16-. f'''16 e'''16) \tuplet 4/3 { fis''8( dis'''8-> e'''8 c''8->) } |
\tuplet 3/2 { c''8 bes'8 g'8-> } e'8 c'8 r8 e'8 f'8 |
b16 des'16 c'8-- r8 ges'8 e'16( f'16 des'16-^ b16 c'16 b'16) |
\tuplet 3/2 { b'8->( g'8-. f'8) } d'8-> b8 d'8( f'8 f'8) |
r4 bes'8 c'8 b8( bes'8 c'16 b16) |
r8 a'8 cis'16 e'16 dis'16 fis'16-> b'4 cis''8 |
d''8 f''8-> bes''16 c'''16 e'''16-> g''16-> bes''8 f'''8 d'''8 |
ees'''16( b''16 a''16-- ges''16) r8 e''8 r4. |
\tuplet 5/4 { dis''16 g''16-> ais''16-- cis'''16 dis'''16 } r8 cis'''8 ais''8 g''8 gis''8-. |
g''8 a''8 cis'''16 e'''16-. des'''8 a''16 g''16 e''16-> des''16 a'16 g'16 |
gis'16 ais'16 d''16 f''16 r8 gis''8 ais''8( d'''8 dis'''8) |
dis'''8 f'''8 r4 dis'''16( c'''16 a''16 f''16 dis''16 dis''16) |
ees'''16(\mp c'''16-> des'''16 ees'''16) \tuplet 3/2 { f'''8( e'''8 ges''8) } ees'''8-> e'''8-> d''8 |
c''8\f des''8 f'16-. ees'16 e'16 ees''16 \tuplet 4/3 { f''8->( e''8 c'8 d'8) } |
cis'16( dis'16 g'16 ais'16) cis''8 dis''8-> g''8( ais''8 des'''16 c'''16) |
r8 b''8 aes''8 e''8 d''16-> b'16 aes'16-^ e'16 d'16-> b16 |
\tuplet 3/2 { d'8 e'8 aes'8-> } r4 aes'4. | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "30. Switchyard" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"9/8 · 3+3+3, driving · odd-meter cycles & tritone-sub ii–Vs. Devices: outside-in, bebop, pentatonic, wide, triad pair. Small staff = optional altissimo. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { bes1*18/16:maj7 des1*18/16:7 fis1*18/16:maj7 f1*36/16:sus4.7 des1*36/16:m7 d1*18/16:maj7 f1*18/16:7 bes1*18/16:maj7 g1*36/16:7.11+ c1*36/16:sus4.7 f1*36/16:7.11+ d1*36/16:m7 } }
\new Staff = "main" { \time 9/8 \tempo "3+3+3, driving" 8 = 340 \accidentalStyle modern b'4\mf ges'8 cis'8-> gis'8-> bes'8 \tuplet 4/3 { dis''8 f''8 d''8 a'8 } |
b'16->(\mp ges''16 ees'''16 f'''16-> aes''16 des''16) b'8( ees'8 ges'8) f'8-.( des'8-> aes'8) |
g'8 c''8 e''16-> d'''16 \tuplet 4/3 { a''8->( fis''8 g''8-> fis''8) } ais''8( cis'''8 f'''8) |
g''8 ees'''8 bes''8 r4. d''8( f''8 bes''8) |
bes''8->( g''8-. ees''8) f'16-- bes'16-. d''16 ees''16 bes'16 g'16 bes'8( d'8 f'8) |
e'8->( b8 aes'8) \tuplet 4/3 { des'8( bes'8 ges'8 aes'8) } b8( e'8 des''16 bes'16) |
r4. ges'16( aes'16 b'16 e''16 des'''16 bes''16) ges''8 aes''8 b''8 |
cis'''8( gis''8 f''8->) ees''16 bes'16 g'8 fis'8 gis'4 fis'8 |
e'16 gis'16 b'16 bes'16-^ cis''16 fis''16-> aes''8( g''8-> a''8) bes''4 a''8-. |
<< { a''4\ff g''8-^ ges''8( e''8 cis''8->) r8 d''8 d''8 } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { a'''4^\markup{\tiny \italic "altiss. ad lib."} g'''8 ges'''8 e'''8 des'''8 r8 d'''8 d'''8 } >> |
r4. cis''4 aes'8-> dis'8-> f'8-> ees''8 |
r8 bes'8 f'8-> c'8-^( b8-> cis'8) r8 d'8 b8 |
d'8 b8-. c'8 d'8( b8 c'8) c'16 d'16 b8 c'8 |
c'8 b8 c'16 d'16 b8( c'8 c'8--) b8( c'8 d'8) |
r4. c'8( f'8-> a'8) b'8( d''8 g''8) |
a''16-- c'''16-> f'''16 g''16-> d'''16 b''16 c'''8 a''8 f''16 d''16-> r8 b'8 g'8-- |
g'16-. a'16 d''8 b'8-^ b'8( d''8 g''8) e''8( e''8 g''8) |
b''8( a''8 a''8) g''8( d''8 e''8) e''4.-^ | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "31. Phase Drift" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"11/8 · 3+3+3+2 groove · odd-meter cycles & tritone-sub ii–Vs. Devices: triad pair, pentatonic, outside-in, bebop, side-slip. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { b1*22/16:7.5+.9+ aes1*22/16:maj7 b1*22/16:7 e1*22/16:maj7 ees1*22/16:m7 d1*22/16:7.11+ des1*22/16:maj7 a1*44/16:sus4.7 aes1*22/16:m7 g1*22/16:7.11+ fis1*22/16:maj7 b1*22/16:maj7 d1*22/16:7 g1*22/16:maj7 } }
\new Staff = "main" { \time 3,3,3,2 11/8 \tempo "3+3+3+2 groove" 8 = 320 \accidentalStyle modern b'8\mf ges'8 cis'8 gis'16( cis''16 fis''16 b''16-> a''16 dis''16) bes'8 a'8-> g'8-- \tuplet 3/2 { f'8 dis'8 dis'8 } |
e'8 a'8 d''16 c''16 cis'8 fis'8-> b'8 a'16 aes'16 ees'16 bes'16-. c'16 g'16 c''16->( f''16-> bes''16 aes'16) |
f''8( d''8-^ ais'8) c''16 bes''16 g''16 d''16 cis''16 b'16-- a'16 e'16-> a'16 fis'16 e'16 b16 r4 |
c'8( g'8 d'16 a'16->) c'16 f'16 ais'16 dis''16-- d'16 a'16 e'16 b16 b16-> c'16 b16 c'16 cis'8 dis'8 |
g'8 d''8 b''8 des'''8-- a''8 e'''16-> d'''16 des'''16( bes''16 ges''16 aes'16-- c''16 ees''16-^) des''8 bes'8 |
a'16-> d''16 fis''16 e'''16 b''16 gis''16 r4. a''16 d'''16-> fis''8 b''8 e'''16 gis''16 a''16 fis''16-> |
aes''16-> b''16-^ des'''8 fis''8 des'''8 b''8 f'''16 ees'''16 bes''8-- c'''8 g''16-> bes''16 r8 ees'''8 |
d'''16 b''16-^ g''16 d'''16 fis''16 a''16 g''16 b'16 d'16 d'16 a'16 fis''16 r4. r8 g''8 |
\tuplet 4/3 { d'''8-> b''8 d'''8 fis''8 } a''8 g''8 b'16 d'16-> \tuplet 4/3 { d'8->( a'8 fis''8 g''8) } d'''8 b''8 |
b''16 ees'''16 ges''16 aes''16-> f'''16 des'''16 \tuplet 4/3 { b''8 ges''8 ees''8 des''8 } aes'16 f'16 ges'16 ees'16 b16 aes'16 des'16-^ f'16-- ges'8 |
a'8( fis'8 g'8) g'8( ges'8 f'8) e'8-. f'8 e'8-^ r8 d'8 |
d'8( e'8 a'8) fis'8( fis'8-> a'8) r4. gis'16-- fis'16 f'8-. |
e'8(\f a'8-^ d''8) c''8->( c'8 g'8) d'16->( a'16 d'16-. g'16 g'16 gis'16->) \tuplet 3/2 { ais'8( gis'8 ais'8) } |
c''16 g'16 e'16-. fis'16 a'16-> d'16-> c'4 e'8 \tuplet 4/3 { g'8-^( d''8 a'8 fis'8->) } g'8-> c''8-. |
b'16(\f d''16-^ g''16 e'''16 cis'''16-> a''16->) b''8( d'''8 g''8->) cis'''8( e'''8 a''16 g''16) d'''4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "32. Thunder Ledger" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"7/4 · Even 8ths, 7/4 · odd-meter cycles & tritone-sub ii–Vs. Devices: 4ths, wide enclosures, wide, triad pair, pentatonic. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { d1*28/16:m7.5- b1*28/16:maj7 d1*28/16:7 g1*28/16:maj7 aes1*28/16:maj7 b1*28/16:7 e1*28/16:maj7 f1*56/16:7.11+ c1*56/16:m7 f1*28/16:m7.5- aes1*28/16:7.5+.9+ } }
\new Staff = "main" { \time 7/4 \tempo "Even 8ths, 7/4" 4 = 220 \accidentalStyle modern c''16(\mf g'16 d'16 a'16->) \tuplet 5/4 { d''16( g''16 c'''16 f'''16 f''16->) } c''16( g'16-> d'16 d''16->) g''16 c'''16 bes''16-. e''16 b'16( fis'16 aes'16 d''16) g''16 c'''16-. bes''16-- e''16 a''8 d'''8 |
r8 ais'8 b''16 cis''16-^ b''16-> gis'16 dis''16( fis'16-. cis''16 fis'16->) fis''8 ais'8-^ b''8 cis''8-. dis'''16 gis''16 dis'''16 gis''16 r8 dis'''8 |
\tuplet 3/2 { cis'''8->( ees'''8-- d'''8) } r4 \tuplet 5/4 { e''16--( cis''16-> d''16 g'16 f'16) } \tuplet 5/4 { fis'16( b'16-> des''16 c''16 g''16) } f''16--( fis''16 des'''16 b''16) c'''16( e'''16 cis'''16 d'''16) ees'''8 cis'''8 |
e'''8 cis'''8 \tuplet 3/2 { d'''8( cis'''8 ees'''8) } d'''8 cis''8 ees''8 d''8 cis'16->( ees'16 d'16 cis''16--) ees''16->( d''16 aes''16 fis''16) r8 g''8 |
d'''8 e'''8 ees'''16( b'16 des''8) c''8 e'8 \tuplet 3/2 { d'8-- ees'8 d''8 } r4 b'8-> c''8 \tuplet 3/2 { b8 des'8 c'8-. } |
\tuplet 3/2 { cis'8 bes'8 b8 } \tuplet 3/2 { ais'8--( c''8 b'8) } d'8 e'8 dis'16-> c'16 bes'16 b16 f'16 g'16 fis'16-> cis''16 r8 ais'8 b'8 gis''8 |
dis'''16( f'''16 e'''8) \tuplet 5/4 { d''16( e''16 dis''16 dis'16 f'16) } e'8 ais'8 \tuplet 5/4 { c''16->( b'16 c'16 ais'16 b16) } fis'16( dis'16 e'16 ais'16->) r4 c'16 b16 f'16-> dis'16-> |
\tuplet 3/2 { ees'8( bes'8 f'8) } \tuplet 5/4 { c'16 g'16-. c''16 f''16 bes''16 } a'16-> d''16 g''16 c'''16-> b'8 ges'8-- cis'8 ees'8-> a'16( e'16 b16 cis'16) b'16-. ges'16 cis'8-. |
ees'16( d''16-- g''16 c'''16) r4 bes''16( b'16 ges'8) cis'16 gis'16 d''16-> g''16 c'''8-> f'''8 c''8-- f''8-^ r8 ais''8 |
bes''8 g''8 ees''16 c''16 a'16 f'16 ees'16 bes'16 g'8-> r4 f'8 a'8 c'16-> ees'16 g'16 bes'16 a'8 c''8 |
f''8 g''8 bes''8-. ees'''8 f'''16( c'''16 a''16-> bes''16) g''16( ees''16-> c''16 a'16) \tuplet 3/2 { f'8( ees'8 bes'8--) } \tuplet 5/4 { g'16 f'16 a'16 c'16 ees'16 } \tuplet 3/2 { g'8 bes'8 a'8 } |
des'16 bes'16-. b16 c''16 r8 bes'8-> \tuplet 3/2 { b'8 des'8 bes'8 } b16-.( bes'16 c'16 b16) r4 c'16( bes'16-> b16-> g'16) \tuplet 3/2 { a'8( aes'8 f''8) } |
a'16( b'16 e''16 d''16) e'16 ges'16 b'16-. a'16 b16->( d'16 ges'8) e'16-.( a'16 ges'16 d'16) r8 e'8 r4 d''4-> | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "33. Cobalt Run" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"5/4 · Even 8ths, 5/4 · odd-meter cycles & tritone-sub ii–Vs. Devices: wide enclosures, 4ths, triad pair, pentatonic, bebop. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { b1*20/16:maj7 d1*20/16:7 g1*20/16:maj7 g1*20/16:maj7 bes1*20/16:7 ees1*20/16:maj7 bes1*20/16:m7 a1*20/16:7.11+ aes1*20/16:maj7 ees1*40/16:sus4.7 aes1*40/16:sus4.7 f1*20/16:7.5+.9+ fis1*20/16:m7.5- g1*20/16:m7.5- } }
\new Staff = "main" { \time 5/4 \tempo "Even 8ths, 5/4" 4 = 240 \accidentalStyle modern r8 b'8-> r8 dis''8 fis''16->( f''16 gis''8) cis'''8 dis'''8-> b''8 fis''8-> |
b'16 des''16 c''8 des'8 b8 \tuplet 3/2 { c'8( b8 des'8) } r4 c'8 cis'8-^ |
\tuplet 3/2 { cis'8 fis'8-. b'8 } a'8 b8 \tuplet 3/2 { e'8--( a'8 g'8) } b8 e'8 \tuplet 3/2 { a'8( d''8-> b8) } |
b8 b8-- \tuplet 3/2 { b8->( b8 b8) } \tuplet 3/2 { b8->( b8-. cis'8) } \tuplet 5/4 { b16( b16-^ b16 b16 b16) } b8 b8-> |
c'8-> ees'8 \tuplet 3/2 { aes'8 d'8 bes'8 } f'8-> aes'8 \tuplet 5/4 { ees''16-- c'''16 d'''16 bes''16 f'''16 } r4 |
\tuplet 3/2 { f'''8-. ees'''8 c'''8 } \tuplet 3/2 { a''8-> bes''8 bes''8-- } a''8 bes''8 b''16( c'''16 d'''8) ees'''16--( f'''16-^ ees'''16 d'''16) |
ees'''16 c'''16 g''16 bes''16 \tuplet 3/2 { bes''8-> c'''8-> f'''8-> } r8 ees'''8 ees'''16-> c'''16-> g''16-> bes''16 \tuplet 3/2 { bes''8 c'''8 f'''8 } |
dis'''16 f'''16-- e'''16 fis''16-> dis'''16( e'''16-- dis''16 c''16) r4 cis''16( f'16 dis'16 e'16) dis''8 c''8 |
c''16 aes''16-. ees'''16 f'''16-^ bes''8 d''8-. ees''8 aes'8 c'8 bes'8 \tuplet 5/4 { f'16( d''16-> ees''16 c'''16 aes''16) } |
\tuplet 3/2 { aes''8 f''8-- des''8 } ees'8 aes'8 c''16->( des''16 aes'16 f'16-^) \tuplet 5/4 { aes'16( c'16 ees'16-> des'16-> f'16->) } aes'16 ees''16-> c''16 aes'16 |
r4 aes'8 des''8-> \tuplet 3/2 { f''8 ees'''8 c'''8 } aes''16 aes''16 des'''16 f'''16 \tuplet 5/4 { c'''16->( ees'''16 aes''16 aes''16 f'''16-.) } |
\tuplet 3/2 { f'''8 bes''8 ees'''8-> } r8 des'''8-^ f'''16 c'''16-. g''8 a''8 des'''8 \tuplet 3/2 { ges''8( b''8 e'''8->) } |
c'''16 g''16-^ d''8 a'8 bes''8 \tuplet 3/2 { ees'''8( aes''8 ges''8) } r4 \tuplet 5/4 { c'''16-> g''16 d''16 e''16-> des'''16-> } |
des'''8 f'''8-. \tuplet 3/2 { gis''8-> ees'''8-> ges''8 } b''16-> gis''16 f'''8 des'''16( ees''16-^ ges''16 b''16) gis''16 f''16 des''16 ees'16-> |
d'16->( a'16 fis'16 b16) \tuplet 3/2 { gis'8 e'8 fis'8 } a'16( d'16-> b'16 gis'16) e'16->( fis'16 a'16-^ d''16-^) b''16( gis''16 e''16-. fis''16--) |
\tuplet 5/4 { f''16-- gis''16 des'''16 bes''16 bes''16 } aes''16 ees''16 f''16 f''16 ees''16 bes'16 des''16 des''16-> \tuplet 5/4 { bes'16 f'16 aes'16-> aes'16 f'16 } des'4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "34. Night Market" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"7/8 · 2+2+3 groove · odd-meter cycles & tritone-sub ii–Vs. Devices: 4ths, triad pair, bebop, wide enclosures, superimposition. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { c1*14/16:maj7 ees1*14/16:7 aes1*14/16:maj7 e1*28/16:m7 a1*28/16:m7 e1*28/16:7.11+ des1*14/16:maj7 e1*14/16:7 a1*14/16:maj7 bes1*14/16:maj7 des1*14/16:7 fis1*14/16:maj7 ees1*28/16:m7 c1*14/16:maj7 ees1*14/16:7 aes1*14/16:maj7 b1*28/16:m7 c1*28/16:sus4.7 } }
\new Staff = "main" { \time 2,2,3 7/8 \tempo "2+2+3 groove" 8 = 330 \accidentalStyle modern c''8->\mf d''8 e''8 fis''8 g''8( gis''8 a''8--) |
aes''16 f'''16 des'''8 r8 ees'''8 g''8 bes''8-> aes''16 des''16 |
\tuplet 3/2 { ees''8 aes'8 c'8 } bes'16->( f'16 d''16 ees''16-.) \tuplet 4/3 { c'''8( aes''8 bes''8 d'''8) } |
\tuplet 3/2 { d'''8 g''8 c'''8 } ais''16-. e'''16 b''16 fis''16 gis''8( e'''8-. a''16 d'''16->) |
\tuplet 5/4 { c'''16( e'''16 b''16 fis''16 cis''16) } cis'''16( aes''16 dis''16 f''16) r4. |
fis''8-. dis'''8-> e'''16-> f'''16 dis'''16 e'''16-> b'8( des''8-> c''16-> f'16) |
\tuplet 3/2 { dis'8->( e'8 fis''8) } aes''16 g''16 f'16-> dis'16 e'16( des''16 b'16 c''16-> d'16 b16) |
cis'8 dis'8-> g'16 ais'16 cis''16-> dis''16 \tuplet 4/3 { g''8( ais''8-> cis'''8-> ees'''8) } |
\tuplet 5/4 { cis'''16 ais''16 g''16 ees''16-> cis''16-> } r8 d''8-> r4. |
\tuplet 5/4 { des''16 aes''16 f'''16-^ g''16 bes''16 } r8 ees''8-> des''16-> f'16 aes'16 g'16 ees'16 bes'16 |
\tuplet 3/2 { a'8( f'8 ees'8) } \tuplet 3/2 { c'8( dis'8 f'8->) } a'8 c''8 d''8 |
\tuplet 3/2 { b''8 gis''8 a''8 } r4 d''8 c''8 cis''8-> |
d''8\ff b'8 \tuplet 3/2 { aes'8 e'8 d'8-> } b8 d'8-- d'8 |
r8 des'8 ees'8 des'8 c'8-> b8-> c'8-. |
cis'8 ais'8 fis'16 dis'16 gis'16 c'16 cis'16 fis'16-> ais'8 c''8 |
bes'8\p ges''8 des'''8 ees'''8 aes''8 c''8 des''8-^ |
\tuplet 3/2 { ges'8-. bes'8 aes'8-- } r8 ees'8-> r4. |
e'16( cis'16 e'16-> fis'16) ais'8 cis''8 e''8 fis''8 e''8 |
f''8 des''8 \tuplet 3/2 { aes'8-^ g'8 ees'8 } bes'16( aes'16 des'8 f'8) |
ees'8-> aes'8-> \tuplet 3/2 { c'8 d'8-> bes'8 } \tuplet 4/3 { f'8( aes'8 ees''8 c'''8) } |
ees'''8 cis'''8-> d'''8-> cis'''8 r8 ees'''8 d'''8 |
\tuplet 3/2 { cis'''8( ees'''8 d'''8) } cis'''16( ees'''16 d'''16 cis'''16-.) ees'''8 d'''8 ais'8-> |
r4 bes'16 ges'16 e'8 cis'8( e'8 fis'16 bes'16->) |
cis''8 e''8 fis''16->( bes''16 cis'''16 e'''16) f'''4. | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "35. Ember Logic" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"9/8 · 3+3+3, driving · odd-meter cycles & tritone-sub ii–Vs. Devices: superimposition, outside-in, bebop, side-slip, triad pair. Small staff = optional altissimo. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { e1*18/16:maj7 g1*18/16:7 c1*18/16:maj7 bes1*18/16:m7 a1*18/16:7.11+ aes1*18/16:maj7 ees1*18/16:maj7 fis1*18/16:7 b1*18/16:maj7 fis1*18/16:m7 f1*18/16:7.11+ e1*18/16:maj7 f1*18/16:maj7 d1*18/16:m7.5- bes1*18/16:maj7 des1*18/16:7 fis1*18/16:maj7 d1*18/16:m7 } }
\new Staff = "main" { \time 9/8 \tempo "3+3+3, driving" 8 = 340 \accidentalStyle modern r8 c''8-- f''8 ais''8 dis'''8 ais'8-> dis''8->( e''8 b'16-. gis'16) |
a'8( f'8 c'8--) g'8( d'8 b8->) c'16 f'16 a'16 g''16-> d''16 b'16-- |
c''4-. g''8-> e'''8( fis''8 a''8) r4. |
a''16 d'''16 g''16 f'''16 des'''16-. aes''16 ees''8 bes'8-> b''16 des'''16 aes''8 f''8 g'16 aes'16-> |
gis'16 cis''16-. fis''16 e''16-^ c''16 g'16 r8 d'8 a'8-- \tuplet 4/3 { a'8 e''8 cis'''8 cis'''8 } |
b''8 d'''8-^ ees'''8 r8 c'''8 g''8 r4. |
aes''16-.\p ees''16 bes'8-^ c''8 bes'8 f'8 c'8-> g'4 a'8 |
b'8 gis'8 e'16 cis'16 ais'8 fis'8 e'8 gis'16-^( b16 ais'16 cis'16-> fis'16-> gis'16) |
\tuplet 4/3 { b8->( d'8 g'8 e'8) } \tuplet 4/3 { a'8( g'8-- d'8 e'8-.) } dis'8-.( cis'8 dis'16 dis'16) |
e'16 c'16 e'16 g'16 ais'16-> c''16 e''8 g''8 ais''16-. c'''16 e'''8 c'''8 a''8 |
des'''8-. ges''8 bes'16 aes'16 c'16-> ees'16 c'8 f'8 a'8( b'8 d''16-> g''16) |
<< { r8 g''8 e''8-> r4. r8 e''8-. dis''8-- } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { r8 g'''8^\markup{\tiny \italic "altiss. ad lib."} e'''8 r4. r8 e'''8 dis'''8 } >> |
e''8(\mf des''8 bes'8) ges'8( e'8-> cis'16 e'16) fis'8-.( bes'8 a'8) |
aes'16 dis'16 bes'8 c'8-> fis'4 b'8-^ bes'8( f'8 c'8) |
bes'16-.\mp f'16 d''16 e''16-> c'''16-^ g''16 bes''8( d'''8 f''8) e''8 g'8-> c'8 |
e'8( g'8 c'16 d'16) a'8( ges'8 ees''8) b''16-. des'''16-- aes''8-> f'''8-> |
fis''16( ais''16 cis''16-- c''16 dis'16 gis'16) fis'16( cis'16 ais'16 c''16 gis''16-> dis'''16) r4. |
f'''8--( a''8-> c''8) b'16( d'16 g'8-. f'8->) c'4. | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "36. Granite Tide" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"11/8 · 3+3+3+2 groove · odd-meter cycles & tritone-sub ii–Vs. Devices: side-slip, outside-in, pentatonic, superimposition, triad pair. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { a1*22/16:m7 c1*22/16:7.5+.9+ g1*22/16:m7 fis1*22/16:7.11+ f1*22/16:maj7 bes1*22/16:maj7 des1*22/16:7 fis1*22/16:maj7 fis1*22/16:maj7 a1*22/16:7 d1*22/16:maj7 ees1*22/16:maj7 fis1*22/16:7 b1*22/16:maj7 c1*22/16:m7.5- } }
\new Staff = "main" { \time 3,3,3,2 11/8 \tempo "3+3+3+2 groove" 8 = 320 \accidentalStyle modern c''8(\mf g'8-> e'16 fis'16-.) a'8 d'8-. c'16 e'16-. g'16 d''16-> a'16 fis'16 g'16 c''16-> r8 e''8 |
e''16 des'''16 a''16-> b''16 d'''16 g''16 e''16( a'16 des'16 b16-> g'16 d''16) des''16->( a''16-> e'''16 e'''16-> dis'''16 des'''16) \tuplet 5/4 { bes''16( g''16 aes''16 aes''16-> e''16--) } |
f''8 d''8 bes'8-> g'16( e'16 c'16 bes'16 d'16 f'16) e'8-> g'8 c''8 d''16( f''16 bes''8) |
a''16\ff f''16 dis''16 c''16-> a'16 f'16 dis'16( c'16 dis'16 f'16 a'16 c''16) dis''16 f''16 a''16 c'''16-> dis'''16 f'''16 dis'''16 c'''16 a''16 ais''16-^ |
r4. c'''16 f'''16-> bes''16 gis''16 bes''16 f''16 e''8 a''8 d'''8 \tuplet 3/2 { c'''8 f''8-> ais''8 } |
bes''8 f''8-> d''8 c''8( g'8 e'8) f'8( d'8 bes'16 g'16) \tuplet 3/2 { c'8 e'8-- f'8 } |
c''8 a'8-> f'8 r4. g'8-.( f''8 d''8->) des''16 c''16 des''16 f''16 |
ais'8-.( c''8-- f''8->) dis''16 f'16 gis'8 c''8 ais'16( c'16 dis'8 gis'8) f'8-> ais'8 |
a'8( e'8-> b16-^ fis'16) g'8( c''8 f''8->) dis''16 a'16 ais'8 fis'8 cis'16( c'16 f'8) |
r8 e'8-- g'8 b'4 a'8 a'8( b'8-> e''8) r4 |
dis''4 fis''8 gis''4 c'''8 ees'''16( c'''16 gis''16 fis''16 ees''16-> c''16) gis'16 fis'16 ees'16 cis'16 |
b16 e'16 gis'16 bes'16 cis''16 fis''16 gis''8->( b''8 e'''16 fis''16) cis'''16 f'''16 d'''8 ees'''8 ees'''16-.( f'''16 d'''8->) |
c'''16( ais''16 g''16-> e''16 c''16 ais'16->) r4. g'8( e'8 c'8) e'8-> e'8 |
e'8 b8 d'8 b8 b8 e'16-> d'16 dis'8 b8 fis'8 r8 dis'8 |
ees'8-> aes'8 c''8 r8 bes''8-> f''8 d''16 ees''16 aes''16 c'''16-- bes''16 f'''16 d'''4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "37. Skyline Fracture" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"7/4 · Even 8ths, 7/4 · odd-meter cycles & tritone-sub ii–Vs. Devices: bebop, pentatonic, 4ths, wide enclosures, triad pair. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { e1*28/16:m7.5- f1*28/16:maj7 aes1*28/16:7 des1*28/16:maj7 fis1*28/16:maj7 a1*28/16:7 d1*28/16:maj7 f1*28/16:m7 e1*28/16:7.11+ ees1*28/16:maj7 bes1*28/16:7.5+.9+ des1*56/16:m7 } }
\new Staff = "main" { \time 7/4 \tempo "Even 8ths, 7/4" 4 = 220 \accidentalStyle modern c''8--\mf d''8 a''16( fis''16-> g''16 g''16-.) \tuplet 3/2 { a''8 bes''8 c'''8 } d'''16-. e'''16-. d'''16-> c'''16 a''8 bes''8-. r8 bes''8 \tuplet 5/4 { a''16 g''16-. fis''16 e''16-- d''16 } |
d''16 b'16-> g'8 a'8 a'8 g'16-> d'16 e'16-. e'16-> d'8 b8 b16( b16 d'8) g'16 e'16 e'16-> g'16 \tuplet 3/2 { b'8( a'8 a'8) } |
aes'8\mf ees'8 r4 bes'16( c'16 ges'16-> des'16) aes'16 ees'16 bes'16 ees''16 \tuplet 3/2 { aes''8-. ges''8 c''8 } \tuplet 5/4 { g'16->( d'16 a'16-> aes'16-. des''16) } ges''8 e''8 |
\tuplet 3/2 { ees''8 f''8 bes''8 } g''16-. aes''16 aes''8 des'''16( b''16 c'''16-. c'''16) des'''8 ees'''8 r4 f'''16( des'''16-> b''16-. c'''16) c'''8 bes''8 |
ais''16 fis''16 cis''8 dis'16( gis'16-> c''8->) cis''16( ais'16 fis'8) gis'16( c'16 dis'16-^ cis'16) \tuplet 5/4 { fis'16--( ais'16 gis''16 dis''16 c''16-^) } cis''8 fis''8-> ais''16( gis''16 dis'''16 c'''16->) |
b''16( a''16 aes''16-> g''16) fis''16( e''16 d''8) cis''16-> d''16-> cis''16-. a'16 \tuplet 3/2 { fis'8-> g'8-^ g'8 } r4 fis'16-. g'16 gis'16 a'16 r8 b'8 |
gis''8 bes''8 \tuplet 5/4 { a''16 cis'''16 ees'''16 d'''16-- cis'''16 } ees'''8-^ d'''8 \tuplet 3/2 { ees''8( cis''8-- d''8->) } r8 gis''8 bes''16-> a''16 e''8-- cis''8-> d''8-. |
d''8\ff g''8-> c'''16--( f'''16-. bes'16-> f'16->) c'8-> g'8 c''16 f''16 bes''16 aes''16 aes'8 ees'8 r4 bes'8 c'8 |
r8 b8 \tuplet 3/2 { gis'8 e'8 ais'8-> } fis'16->( cis'16 e'16-. gis'16) b8 fis'8-> cis'8 ais'8-> b16( e'16-> gis'16 fis''16) \tuplet 3/2 { cis''8 ais'8 b'8 } |
bes'16->( ees''16-^ aes''16 ges''16) c''16 f''16 bes''8 aes''16( d''16 g''8) c'''8 f'''8 ees''8 bes'8 f'16 c'16-. d''16-. a'16 \tuplet 3/2 { e'8( b8 f''8) } |
r4 b''16 aes''16-> e''8-> ges''16-.( cis''16-> e''16-> aes''16) ges''8 aes'8 \tuplet 3/2 { b'8 e''8 cis''8-> } e'8 ges'8 \tuplet 3/2 { b'8 aes'8 b8 } |
ges'16( ees'16 e'8) c''16 d''16 des''16 ges'16 \tuplet 3/2 { ees'8-. e'8 c'8-. } bes'8 b8 \tuplet 5/4 { des'16( bes'16 b16 f'16-> ees'16-.) } e'8 c'8 r4 |
bes'16 b16 ees''16 c''16 des''16( f'16-> ees'16-- e'16) c'8 bes'8 r8 b8-> ees'8 f'8 \tuplet 5/4 { e'16-^ ees''16 f''16-. e''16 bes''16-. } c'''4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "38. Quicksilver" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"5/4 · Even 8ths, 5/4 · odd-meter cycles & tritone-sub ii–Vs. Devices: superimposition, 4ths, bebop, outside-in, wide enclosures. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { b1*40/16:m7 fis1*20/16:m7 f1*20/16:7.11+ e1*20/16:maj7 a1*20/16:maj7 c1*20/16:7 f1*20/16:maj7 aes1*40/16:m7 a1*20/16:maj7 c1*20/16:7 f1*20/16:maj7 bes1*20/16:m7 a1*20/16:7.11+ aes1*20/16:maj7 } }
\new Staff = "main" { \time 5/4 \tempo "Even 8ths, 5/4" 4 = 240 \accidentalStyle modern \tuplet 3/2 { bes''8( gis''8 a''8->) } ais'8 c''8 b'16-> gis''16 bes''8 a''8 ais'8 c''16( b'16 cis'''8->) |
\tuplet 5/4 { ees'''16 d'''16 cis'''16 ees'''16 d'''16 } f''8 g''8 \tuplet 3/2 { fis''8 cis'''8-> ees'''8 } d'''16 cis''16-. ees''16 d''16 r4 |
r8 d''8 \tuplet 3/2 { a'8->( c''8 g'8) } a'8-> f'8-> \tuplet 3/2 { e'8->( a'8 cis''8-.) } r8 e''8 |
ees''8 gis''8 des'''16 ges''16 d''16 a'16 r4 \tuplet 3/2 { e'8( fis'8 b'8) } e''16( a''16-> d'''16 a'16) |
a'8-- c''8-. dis''16( f''16-^ a''8) c'''8 dis'''8 f'''8-> dis'''8 c'''8-- dis'''8-> |
\tuplet 3/2 { d'''8( f'''8 d'''8) } bes''16 gis''16 f''16-> d''16 bes'16( gis'16-> f'16 d'16) f'16( gis'16 ais'16-> d''16) f''16 gis''16-. bes''16-> gis''16-. |
\tuplet 3/2 { aes''8( f''8-> des''8) } b'8 aes'8 f'8-> des'8 r4 b8 e'8-> |
\tuplet 3/2 { dis'8 bes'8 f'8 } g'8 c'8 f'8 bes'8 aes'16-> c'16-- c'16 f'16-- \tuplet 3/2 { a'8-> b8-> a'8-^ } |
a'16 c'16-> f'16-- d'16 b8 g'8 a'16-> f''16-> c'''16 b''16-> g''8 d'''8 f'''8 a''8 |
r4 c'''8 b''8 b''16-^( ges''16 ees''16-. des''16) \tuplet 3/2 { aes'8 f'8 ges'8 } ees'8 b8 |
\tuplet 5/4 { cis'16->( dis'16 g'16 ais'16 cis''16->) } \tuplet 3/2 { dis''8( g''8-. ais''8) } cis'''16-> dis'''16 cis'''16 bes''16-> g''16( dis''16 cis''8) bes'8 gis'8 |
des'8-- b8-> \tuplet 3/2 { c'8( b8-^ des'8-^) } c'8-> aes'8 fis'8 g'8 b'16( des''16-> c''16-> b16) |
r4 \tuplet 3/2 { b8( dis'8 fis'8-.) } a'8 b'8-. \tuplet 3/2 { dis''8( fis''8 a''8) } b''16( ees'''16-. b''16 a''16) |
e'''16 fis''16 f'''16-. g''16-> a''16( aes''16 d''16-> c''16) des''16 g'16 e'16 f'16-> c''16 d''16 des''16 c'''16-> a''16 bes''16 g''16 e'''16 |
e'''16( b''16 fis''16 gis''16) e'''8 a''8 r4 d'''16 g''16 e'''16 b''16-^ \tuplet 3/2 { fis''8 gis''8 e'''8 } |
e'''16 f'''16-> e'''16 d'''16 b''8 c'''8 \tuplet 5/4 { c'''16 bes''16 aes''16 g''16 f''16 } \tuplet 3/2 { d''8( ees''8 ees''8) } e''4 | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "39. Dust Devil" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"7/8 · 2+2+3 groove · odd-meter cycles & tritone-sub ii–Vs. Devices: bebop, superimposition, pentatonic, wide enclosures, wide. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { a1*14/16:m7.5- des1*28/16:7.11+ fis1*28/16:sus4.7 bes1*14/16:m7 a1*28/16:sus4.7 f1*14/16:maj7 aes1*14/16:7 des1*14/16:maj7 a1*28/16:sus4.7 bes1*14/16:m7 a1*14/16:7.11+ aes1*14/16:maj7 b1*14/16:m7 a1*14/16:m7 aes1*14/16:7.11+ g1*14/16:maj7 ees1*28/16:7.11+ c1*14/16:m7 e1*14/16:maj7 } }
\new Staff = "main" { \time 2,2,3 7/8 \tempo "2+2+3 groove" 8 = 330 \accidentalStyle modern \tuplet 3/2 { c''8->( aes'8-. ges'8) } \tuplet 3/2 { ees'8( c'8 ees'8-.) } fis'16 gis'16 c''16 ees''16 fis''16 g''16-. |
g''8 f''8 r8 d''8 b'8 g'8 f'8 |
d'8-> b8 d'16 f'16 g'8 b'8 d''8 b'8-^ |
b'8-> d''8-> f''8-> g''8-- b''8( d'''8-> f'''8->) |
r4 d'''16 b''16 g''8 f''4 e''8-> |
ees''16 g''16 f''16 bes''16 g''16( ees''16-> f''16 c''16) ees''4 bes'8 |
e''8 d''8 a'16 b'16 a''16 g''16 d''16( e''16 b'8 d''8-.) |
r4 \tuplet 3/2 { g''8( e''8 g'8-.) } r8 a'8 d''8 |
g''16( e''16-> f''16 f''16-.) b''16( gis''16 a''16 a''16-^) b''8( c'''8 cis'''16-- d'''16) |
r8 ges''8-> r8 aes''8 des'''8( bes''8 ees'''8) |
g''16->( e'''16 f'''8) e'''8 fis''8-> f'''16( e'''16 fis''8 f'''8) |
r4 f'''8 d'''8 bes''8-> aes''8 f''8 |
d''8 bes'8 aes'16( f'16 d'8) f'8-^( aes'8 g'8) |
ges'16( ees'16 b8) ees'8-^ fis'8 a'8 b'8 ees''16 des''16 |
g'16 a'16 d''16 b'16 d'16 e'16-> a'16 g'16 b8-.( b8 e'8) |
r8 f'8-> r4 d'8( c'8-. c'8) |
d'8 f'8 gis'8 ais'8-> d''8 f''8 d''8-> |
d''16( e''16 fis''16-. g''16) \tuplet 5/4 { a''16 b''16 c'''16 fis''16 dis'''16 } e'''4 e'''8 |
f'''16( d'''16 ees'''16-> g''16) a''8 aes''8 r4. |
gis''8-> c'''8-> ees'''8 c'''8 aes''8-. fis''8-> dis''16 fis''16 |
f''16->( des''16 ees''16 bes'16->) r8 des''8 gis'8-.( bes'8-. f'8->) |
aes'8 ees'8 \tuplet 3/2 { f'8( des'8 ees'8->) } aes'8 f'8 bes'16 gis'16 |
r4 g'8-> c''8 a'8 d''8-. c''8-^ |
d'8 e'8 dis'16 ais'16 c''8 b'4. | \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "40. Last Exit East" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"9/8 · 3+3+3, driving · odd-meter cycles & tritone-sub ii–Vs. Devices: side-slip, triad pair, superimposition, outside-in, bebop. Chord symbols are for E♭ alto (written key)." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { aes1*18/16:maj7 b1*18/16:7 e1*18/16:maj7 c1*36/16:sus4.7 des1*36/16:sus4.7 e1*18/16:m7 ees1*18/16:7.11+ d1*18/16:maj7 des1*18/16:maj7 e1*18/16:7 a1*18/16:maj7 d1*18/16:m7.5- aes1*18/16:m7 g1*18/16:7.11+ fis1*18/16:maj7 d1*18/16:maj7 } }
\new Staff = "main" { \time 9/8 \tempo "3+3+3, driving" 8 = 340 \accidentalStyle modern r8 aes''8 ges''8 cis''4 ees''8 des'''16 c'''16 f'''16-> d'''16-- f'''16 f'''16-- |
e'''8 cis'''8 a''8 \tuplet 4/3 { b'8 dis''8 fis''8 e''8 } cis''8-> a'8 b8 |
r8 ais'8 dis'8 g'16( c'16 a'16 f'16 g'16-> fis'16) gis'8( ais'8 gis'8) |
\tuplet 4/3 { a'8-^( e''8 cis'''8-. e'''8) } r4. aes''8( b'8-> a'8) |
cis'8-^ e'8 e'8 b16( bes'16 d'8 f'8) f'8( a'8-^ bes'8) |
a'16 f''16-> c'''8 c'''8 \tuplet 4/3 { g''8 e'''8 f'''8 a''8-. } c'''8-> c'''8 e''8-> |
g'4 f'8 a'16-. aes'16-> ges'16 f'16 ees'16 des'16 c'8 des'8 ges'8 |
\tuplet 4/3 { g'8( d''8 b''8 cis'''8) } r4. a''16 e'''16-. d'''16-- g''16 b''16 a''16 |
a''8 ges''8 d''8 e'16( gis'16 b'16-> a'16 fis'16 g'16) bes'16-- ees'16 c'8 g'8 |
g'16-.( c''16 f''16-> ees''16 gis'16-> dis'16) \tuplet 4/3 { bes'8( c'8-. b8 e'8) } cis'8 d'8-> cis'8-> |
des'8 aes'8 f'8-^ bes'16( g'16-> ees'16 f'16 aes'16 des'16) r4. |
cis'8( fis'8 b'8--) e''16-^ dis'16 gis'16 cis''16-- fis''16-^ fis''16 e''8( ees''8 d''8) |
cis''8( e''8-- a''8) r8 fis''8 dis'''8-> b''16( cis'''16 e'''8 a''8) |
aes''8 bes''8 c'''8 bes''8->( aes''8 g''8->) f''8 e''8 d''8 |
r4. r8 des''8 a'8 g'16( e'16-> des'16 e'16 g'16 ges'16->) |
ges'8( cis'8-> bes'16 ees'16) c'8-. aes'8 g'8 b8( d'8 b8) |
ais'8(\ff fis'8 cis''8) c''16 gis''16 dis'''16-^ fis''16 ais''16 cis''16-> r8 c''8 dis'8-> |
ees'16 c'16 dis'8 fis'8 r8 gis'8-> c''8 cis''4.-> | \bar "|." } >> \layout { indent = 0 } } } }