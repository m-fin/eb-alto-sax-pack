\version "2.24.4"
#(set-global-staff-size 18)

\paper {
  #(set-paper-size "letter")
  top-margin = 12\mm bottom-margin = 12\mm left-margin = 14\mm right-margin = 14\mm
  ragged-last-bottom = ##t
  markup-system-spacing.basic-distance = #8
  system-system-spacing.basic-distance = #13
}
\book { \bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 1" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 260 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key ees \major \tempo "Presto furioso" 8 = 260
\time 2,2,3 7/8 \tuplet 5/4 { ees''16\ff d''16 c''16 bes'16 aes'16 } \tuplet 3/2 { g'8-- f'8-- ees'8-- } d'32 e'32 cis'16 f'8 c'8 |
\time 6,3 9/16 b8.(\ppp cis'8.) c'8 d'16-! |
\time 5/4 \tuplet 6/4 { des'16->\> b16-> bes16-> aes'16-- a'16-> b'16-> } r16 bes'16 aes'16 g'16 f'8. ees'16-^ d'16-. e'8-. cis'16-. d'16-> f'32 d''32 c'''16 bes''16 |
\time 2,2,3 7/8 des'''8(\fff f''8) \tuplet 6/4 { e''16 ges''16 ees''16 g''16 d''16 aes''16 } r8 e''8( cis'''8) |
c'''16(\< bes''8 aes''16) g''8 f''16 ees''16 d''8 c'''8 a''8 |
\time 6/8 f'''16--\fff\< d'''16-- ees''8-- d''8-- e''8( f''8 ges''8) |
\bar "||" \key fis \major \time 5/4 r16 g''16\sfz\< a''16 ais''16 b''16 c'''16 cis'''8-^ c'''8.( ais'16) gis'16 fis'8 eis'16-^ \tuplet 5/4 { dis'16-! cis'16-! b16-> ais16 gis'16-. } |
\time 3,3,3,2 11/8 r8 g'8(\fff fis''8) eis'8.-- e'8.-. g'8.( gis'8.) c'16-. a'16-. b16-. eis'16-. |
\time 4/4 \tuplet 5/4 { b16-. eis'16-. a'16-. eis''16-. a'16-. } gis''8-> cis''16 ais''16 a''16-- b''16-- gis''16-- c'''16-- a''32-- gis''32-> fis''16-! e''8-> |
\time 2,3 5/8 \tuplet 3/2 { c'''8\< eis''8 c'''8 } dis''16( e'''16) eis''16-. fis'''16-. a''16( dis'''16) |
\time 4/4 gis''16\f\< a''16 d''8 \tuplet 5/4 { gis'16( cis''16) ais''16-. a''16-. eis''16 } dis''16 cis''16-! b'16-. ais'16-> gis'16( fis'16 eis'16 dis'16) |
\time 4,4,2,3 13/16 d'16->\ppp e'8 cis'16-- c'8. d'16-^ fis'32( d''32 dis'32 d''32) e'16 ais'16 gis'16 |
\bar "||" \key ges \major \time 2,2,3 7/8 \tuplet 7/4 { g'16->\> a'16 ges'16 bes'16 f'16 ces''16 e'16 } ees'8.-- f'16-- \tuplet 4/3 { e'8( ges'8) ees'8-. g'8-. } |
\time 4/4 ges'16\ff aes'8 f'16 c''16-- des'16-- d''8-- \tuplet 5/4 { e'16-. ees''16-! d'16-. des''16-. e'16 } c''16 d''16 f''8 |
\time 3,2 5/16 c''32( d''32 f'16 g'16) c''8-. |
\time 3/4 \tuplet 3/2 { bes''8-.\p r8 d''8 } ces''32 c''32 des''32 e'32 c''32 a'32 ges''32 f'''32-^ ges'''16-- aes''8-- ges''16-- |
\time 4/4 f''16(\> ees''8.) f'16( des''8.) \tuplet 5/4 { ees''16-- f''16-- r16 ges''16-- aes''16-- } bes''16 ces'''8 des'''16 |
\time 3,3,3,2 11/8 \tuplet 4/3 { c'''8->\p d'''8 ces'''8 ees'''8 } d'''16 e'''16 des'''8 f'''8-^ e'''16( ges'''16) ees'''16-. g''16-. d''16( aes''16) a''4 | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 2" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 240 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key ges \major \tempo "Inquieto" 8 = 240
\time 3,3,3,2 11/8 ges'16\ppp aes'8 bes'16 ces''8-^ des''16( ees''16 f''16 ges''16 aes''16 bes''16) ges'''16( c'''16 bes''16 a''16 aes''16 ees'''16) d'''8 des'''16 e'''16 |
\time 4,3 7/16 d'''16-> des'''32 e'''32 a''16 bes'16 aes'16-> e'8 |
\time 3/4 c'16( aes'16 c''16 e''16) aes''32-> c'''32 e'''32 aes''32 e''32 c''32 aes'32 e'32 des''16-- ces'8-- ges'16-- |
\time 3,2,2 7/8 \tuplet 4/3 { ees'8(\< des'8) bes8-. c'8-. } ees'32( e'32 ges'32 aes''32 ces''32 d''32 f''32 aes''32) f''16-- d''16-- c''16-- bes16-- |
\time 9/8 a'8-.\fp aes''8-. ces''8-. bes''16( aes''16 a''16 f'''16 d'''16 bes''16) ges'''8.( a''8.) |
\time 2,2,3 7/8 r8 bes''16-- c'''16-- ces'''32-- aes''32-- f''16-- d''8-- ces''8-> aes'8-! f'8-- |
\time 4/4 e'16( d'16) des'16-. ces'16-. \tuplet 3/2 { aes'8-> c''8 ees''8 } des''8. c''16 aes'16-> f'16 des'8 |
\time 3,3,3,2 11/8 d'8(\> ees'4) ces''32( a'32) aes''16-. bes'8-. c'''8 ces'''16( a'16) g''16-. ges''16-. e'''16( d'''16) r16 e'''16( g''16 a''16) |
\bar "||" \key bes \major \time 4,4,2,3 13/16 fis''16(\sfz e'''16 c'''16 gis''16) fis''16-- e'''8. fis'''8 f'''16( g''16 e''16) |
\time 4,4,3 11/16 g'8->\p ees''16 e'16 b'16 ees'16 f''16 gis'16-^ e''16 d'''16 bes''16 |
\time 3/4 a''16\< b''16 gis''16 c'''16 des'''32 ees''32 e'16 cis'8-^ e'8 d''16 ees''16 |
\time 2,3 5/8 e''16(\mp c'''16 a''8) gis''4 bes''8-^ |
\time 5/4 \tuplet 5/4 { a''16->\mp\> b''16 gis''16 c'''16 g''16 } \tuplet 5/4 { gis''16-! a''16-. aes''16-- ges'16 ees'16-- } \tuplet 5/4 { d'16 des''16 b'16 a'16 bes'16 } c'''8 d''16 e''16 f''16( gis''16 b''16 d'''16) |
\bar "||" \key bes \major \time 6,3 9/16 \tempo "Più mosso" des'''8--\mp\< c'''8-- b''8-- bes''16 a''8 |
\time 6/8 aes''16-.\p ges''16-. e''16-. d''16-. des''16-. c''16-. b'16( des''16 bes'8 d''8) |
\time 3,2,2 7/8 r8 b'8--\mf aes'8-> g'16 fis'8. f'32 g'32-! e'16 gis'8 |
\time 3,3,3,2 11/8 g'8->\> a'8-- fis'8-! a'16-. b'16-. d''16-. e''16-. g''16-. aes''16-. g''16( a''16 fis''16 bes''16 f''16 b''16) c'''16( ees'''8.) |
\time 4,4,3 11/16 \tuplet 5/4 { c'''16-.\ff b''16-. a'16-. ges''16-. f''16-. } g''16( e''16) des'''16-. a''16-. g''8. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 3" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 300 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key des \major \tempo "Feroce" 8 = 300
\time 3,3,3,2 11/8 ees''8\pp aes'4 ees''16( aes''8 des''16 bes'8) b'8.-> c''8. aes'16 e'16 c'8 |
\time 2,3 5/8 aes'16(\ff\> e''16) ees''16-. e''16-. d'''8-! ees''8-. b''8-> |
\time 9/8 \tuplet 4/3 { d'''8(\ff e''8) ees''8-. ges''8-. } e''8. c''8. e'16 f'16 aes'16 g'16 ees''16 d''16-^ |
\time 5/4 bes''16 a''8 f'''16 e'''32-. ges'''32-. ees'''32-. g''32-. d''32-. aes''32-. des''32-. a''32-. aes''16 bes''16 g''16 b''16-^ bes''16-> c'''32 a''32 des'''16 aes''16 a''16( bes''8 b''16) |
\time 3/8 c'''16--\f d'''8-- ees'''16-- f'''8-- |
\time 4,3 7/16 e'''16\sfz ges'''8 ees'''16 d'''16 e'''16 des'''16 |
\time 4/4 \tuplet 6/4 { c'''16( d'''16 b''16 ees'''16 bes''16 e'''16) } ees'''8-- f'''16-- d'''16-- \tuplet 5/4 { des'''16( ees'''16 r16 c'''16 e'''16) } ees'''16( f'''16 d'''16 ges'''16) |
\time 3,2 5/8 f'''16-. g''16-> e''16-! aes''16-. ees''16-- a''16-- aes''16( bes''16 g''16 b''16) |
\bar "||" \key ges \major \time 9/8 \tempo "A tempo, feroce" \tuplet 4/3 { bes''8( c'''8 a''8 des'''8) } bes''16( aes''8 e''16 d''8) bes'16-> aes'16-> e'8 d'8 |
\time 4/4 ees'8 g'8 bes'16( d''8.) des'''16-> c''16 des'''16 c''16 a''16-- d''16-- bes''16 c''16-> |
\time 4,4,2,3 13/16 ces'''16 c''32 ges''32 a'16 g''16-^ \tuplet 5/4 { c'''16( a''16 r16 ees'''16 ges''16) } \tuplet 3/2 { f''16 g''16 e''16 } g''8-- aes''16-- |
\time 3,2 5/16 ges''8 f''16-^ ges''32 aes''32 bes''32 ces'''32 |
\time 4,3 7/16 \tuplet 5/4 { des'''16(\< ees'''16 f'''16 ges'''16 aes''16) } ges''8 f''16 |
\time 6,3 9/16 e'8(\f d''8 c''8) des'''8. |
\time 3/8 e''16(\< ees'''16) a''16-. g''16-. f'16( ges''16) |
\time 4,4,2,3 13/16 f'''16-.\mp bes''8.-. f'''16-. ees''8.-. ces'''8-> a''16 ees''8 |
\time 5/4 e'''16( d''16 des'''16 f''16) d''8( ces''8) \tuplet 6/4 { c'16 d'16 f'16 d'16 bes'16 ces''16-^ } bes'16-- ces'32-- aes'32-- ces''16-- d''16-- des'''4-- | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 4" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 320 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key ces \major \tempo "Inquieto" 8 = 320
\time 3,2 5/16 g''16->\pp ces''16 f''16 fes''16-. ges''16-. |
\time 5/4 f''4\< fes''16-> ges''16 ees''16 g''16 aes'16 a'16 bes'8-^ c'''32-> d''32-> aes''16-! d''8-. \tuplet 5/4 { fes'''16-- f''16-- r16 fes'''16-- ees''16-- } |
\time 6,3 9/16 fes'4-.\f\> g'8-. ees''16-> f'8 |
\time 3/4 des''4-.\ff d'16( ces'32) c'32-. a'16-. fes''16 d''8-- ces'''16-- c''16-- |
\time 3,2 5/8 bes''8-> ces''4 r16 bes''16 a'16 bes''16-! |
aes'16-. g''16-. ges'8-. ees''8-. des'8 a'16 d'16 |
\bar "||" \key cis \major \time 5/4 r16 eis'16\ff e'16 dis''16-^ eis'16 d''8 ais''16-^ d''16-- dis''8.-- eis'16( e'16 gis'8) \tuplet 7/4 { a'16-. bis16-. e'16-. fis'16-. gis'16-. g''16-. fis''16-. } |
\time 3,3,3,2 11/8 gis''16-.\< ais''16 bis''8-> cis'''8 bis''8 d'''8-. b''8-. ais''16-. bis''16-. a''16-. cis'''16-. gis''16-. d'''16-. dis'''16-> fis'''32 e'''32 dis'''16 cis'''16 |
\time 3,2,2 7/8 b'8(\mp\< gis'8 g''8) fis''16( e''16 cis'''16 bis''16) ais''8-> b'8-! |
\time 9/8 \tuplet 4/3 { a''8(\f cis''8) d'''8-. eis''8-. } e''16-> fis''16 dis''8 g''8 fis''8( gis''8 eis''8) |
\time 6/8 e''8->\ppp fis''8 dis''8 eis''16-> g''8-. gis''16-- a''8-- |
\time 4,4,3 11/16 \tuplet 3/2 { gis''8-. ais''8-. g''8-. } ais''16-- bis''16-- d'''16-- e'''16-- eis'''16( gis''16 fis'16) |
\bar "||" \key fis \major \time 5/4 \tempo "Più mosso" a'8-. c''16-. e'16-. dis'16( cis''16 e'16 d''16) \tuplet 3/2 { dis''8 r8 eis''8-^ } g'8.-> gis''16 g'8( eis''8) |
\time 4,4,3 11/16 e'16-.\< dis''8-. d'16-. dis'16-> e'8 fis'16 eis'16 d''8 |
\time 3/4 \tuplet 3/2 { cis''8-.\sfz ais'8-> g'8-! } fis'16 gis'8. g'16 a'16 fis'8 |
\time 2/4 g'16-.\ppp gis'16-. e''16-. g''16-. a'4-. |
\time 4,4,3 11/16 g''16\mp fis''16 eis'8 gis'16-> b32 d'32 eis'16 gis'16 b32( cis'32) d'16-. e''16-. |
\time 9/8 r8 eis'8 gis'8 \tuplet 4/3 { ais'8( b'8) cis''8-. dis''8-. } eis''4. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 5" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 288 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key a \major \tempo "Volante" 8 = 288
\time 4,3 7/16 cis''16-.\ff g'16-> d''8-. f'16 g''16 gis'16-^ |
\time 2,3 5/8 dis''32-. g'32-. cis''16-. c'8-. ais16( d'8 dis'16 fis'8) |
\time 5/4 fis'16\ppp\< cis''8. \tuplet 5/4 { fis''16 cis''16 e''16 dis''16 c'''16-^ } \tuplet 3/2 { fis''8 cis'''8 e'''8-^ } fis'''8-. gis''16-. fis''16-. e''16-. d''16-. cis''16-. b'16-. |
\time 3,2,2 7/8 a'32(\fff gis'32) fis'16-. e'8-. d'8 \tuplet 3/2 { cis''8 fis'8 cis''8-^ } d''16( dis''16 e''16 fis''16) |
\time 4,4,3 11/16 r8 g''16--\p gis''16-- \tuplet 3/2 { a''8-- r8 ais''8-- } f''32 ees''32 c''16 ais'16 |
\time 4,3 7/16 f'32\fp\< ees'32 c'32 ais32 f'32 ais'32 c''32 dis''32-^ e''8-- fis''16-- |
\time 4,4,2,3 13/16 \tuplet 5/4 { gis''16\sfz a''16 b''16 cis'''16 d'''16 } \tuplet 3/2 { e'''8( fis'''8 gis''8) } \tuplet 3/2 { a''16-- b''16-- cis'''16-- } d'''8 e'''16 |
\time 3,3,3,2 11/8 dis''32-.\p a''32-. b'16-. bes''8-. e''8-. f'''8( e''8 fis'''8) g''8( e'''8 fis''8) ais'8 b''8 |
\bar "||" \key e \major \time 4,4,2,3 13/16 \tempo "Subito meno mosso" cis''16(\> a''16 gis'16 fis''16) e''4-^ dis''16-. cis''16-. b'32-. a'32-. gis'16-. fis'16-. |
\time 2/4 g'8\fp a'8-^ r8 g'16( a'16) |
\time 3/8 g''16-. cis''16-. b''16-. e''16-. cis'''16-. e''16-. |
\time 4,4,2,3 13/16 fis'''16-. g''8-. gis''16-. ais''16-. d'''8-. dis'''16-. d'''8-> cis'''32( a''32 fis''16 d''16) |
\bar "||" \key b \major \time 3/4 r16 dis'16( e''16 ais'16) r16 b'16 cis''16-. dis''16-. e''8( fis''8) |
\time 9/8 gis''32-. a''32-. b''16-. c'''8-. cis'''8-. d''16( dis'''8) f''16-. d'''8-. f''16-. d'''16-. c''16-. gis''16-. b'16-. fis''16-. |
\time 4,4,2,3 13/16 e'16-- d''16-- g'16-- f''16-- fis''16-. gis''8.-. b''16( e''16) b''8-> e'''16-- |
\time 4/4 b''16--\ff e''32-- g'32-- ais16-- dis'16-- d'8-- e'8-- r16 dis'16( f'16 d'16) r8 fis'16( ais'16) |
\time 3/8 d''4. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 6" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 260 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key des \major \tempo "Frenetico" 8 = 260
\time 2,3 5/8 r16 ges'16-.\fp f'16-. ees'16-. \tuplet 4/3 { des''8( bes''8) d''8-. ees'8-. } |
\time 2,2,3 7/8 c''32->\ppp ees'32 c'32 b'32 aes'32 b'32 bes''32 g''32 \tuplet 5/4 { a''16 bes''16 c'''16 des'''16 ees'''16-^ } r8 f'''8 g''8 |
\time 3,2 5/8 bes''8. ges'''8.-^ \tuplet 3/2 { ees'''8 des'''8 c'''8-^ } |
\time 6/8 e''8 des'''8 c'''8 bes''16( a''16) ges''16-. e''16-. des''16( b16) |
\time 4,4,2,3 13/16 \tuplet 5/4 { aes'16-.\< b16-- r16 des'16-- d'16 } r16 ees'16 f'16 ges'16-^ \tuplet 3/2 { aes'16 bes'16 c''16 } des''32( ees''32) f''16-. ges''16-. |
\time 3,2 5/8 r8 bes''8\pp\< c'''8 e''8 ges'''16 e''16 |
\bar "||" \key g \major \time 4,3 7/16 \tuplet 3/2 { d''8->\ff\< c''8 a'8 } f'32( d'32 c'16 a'16) |
\time 4,4,2,3 13/16 \tuplet 5/4 { c''16(\f d''16) f''16-. a''16-. c'''16 } bes''8( gis''8) \tuplet 3/2 { ais''16-. a''16-. gis''16-. } f''16 e'16 cis'16-^ |
\time 4,3 7/16 b16--\f gis'16-- a'16-- ais'16-- b'16-> c''8 |
\time 2,2,3 7/8 a'8.(\> gis'16) e''16( g''8.) f''16( b'16 dis'16 a'16 ais16 d'16) |
\time 5/4 \tuplet 7/4 { f'16(\p b'16 ees''16 a'16 ais16 d'16 fis'16) } f''8. b'16-! \tuplet 3/2 { a'8-- g'8-- fis'8-- } \tuplet 3/2 { g'8 r8 gis'8-^ } a'16-! ais'16 b'8-- |
\bar "||" \key ges \major \time 3,2,2 7/8 aes'8. f'8.-^ aes'16-. c''16-. des''8-. e''32-- aes''32-- c'''32-- des'''32-- e'''32-- aes''32-- e''32-- des''32-- |
\time 2,3 5/8 c''16 aes'8 e'16 ees'8( f'8 d'8) |
\time 3,2 5/16 aes'16->\sfz bes8 \tuplet 3/2 { aes'16-. bes16-. ges'16-. } |
\time 3,2 5/8 aes'16(\pp bes16) ges'16-. ees''16-. ces''16( des'16) \tuplet 5/4 { bes16( des'16 c'16 ces'16 g'16) } |
\time 3/4 f''16\fff e'''16 ees'''8 f'''8.( g''16) ges'''16-> f'''16 ees''8 |
\time 6,3 9/16 \tuplet 4/3 { d'''8\mp des''8 ces'8 bes8 } aes'8. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 7" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 320 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key b \major \tempo "Tempestoso" 8 = 320
\time 9/8 \tuplet 4/3 { f'''8->\ppp\> ais''8 a''8-- cis''8-. } f''16-- ais'16-- a'16-- cis''16-- d''16-- fis'16-- f''8.( ais'8.) |
\time 2/4 b'8-.\pp\< c''8-. cis''16 d''16 dis''8 |
\time 3,2 5/8 e''32\ff f''32 g''16 gis''8 a''8 \tuplet 3/2 { ais'8( cis''8 c'''8) } |
\time 3,2,2 7/8 d''16(\p e'8 c''16 e'8) f'16-> dis''8-- e''16 g''16( fis'''16 ais''16 c''16) |
\time 6,3 9/16 g''16\< fis''16 ais'16 c''16 b'16 gis'16-^ a'8.-- |
\bar "||" \key bes \major \time 9/8 ges'16--\ff ees'16-- b8-- bes8-- a'16 bes'16-- b'16-. des''16-> d''16 ees''16-! f''4( fis''8) |
\time 4,4,3 11/16 e'''32-.\< ees'''32-. bes''16-. d''8-. e''32-- ees''32-- bes'16-- d''8-- des''16-- c''16-- bes'16-- |
\time 2,2,3 7/8 a'8\f gis'8 ges'16( e'16 ees'16 d'16) ees'16-> e'16 f'8 fis'8 |
\time 5/4 f'16-.\< g'8-. e'16-. r8 ees'16 f'16 \tuplet 6/4 { e'16( des'16 bes16 g'16 bes'16 des''16) } \tuplet 3/2 { e''8-. r8 g''8-. } \tuplet 7/4 { bes''16( cis'''16) e'''16-. g''16-. e''16( des''16) bes'16-. } |
\time 4,4,3 11/16 g''16\pp\< cis''16 b''8 \tuplet 7/4 { c''16 des'''16 f''16-> e'''16-. f''16-- d'''16 e''16-! } ees''8.-^ |
\time 3/4 bes'32\fp\> g''32 ges'''16 e'''8-^ f'''16-. aes''16-- bes'16 ges''16-- g'16 ees''16 e''8 |
\bar "||" \key g \major \time 6,3 9/16 g''8->\ppp a'8 fis'8 ais16 f'8 |
\time 4/4 \tuplet 6/4 { ais'16-. f''16-. c'''16-. g''16-. a'16-. gis''16-. } ais'32 f''32 c'''16 g''8-^ fis''16( gis''8.) g''16( a''8 fis''16) |
\time 3,2,2 7/8 r8 c'''8->\fp dis''8 cis'''4 dis'''16( fis'''16 bes''16 fis''16) |
\time 5/4 \tuplet 3/2 { f''8 r8 dis''8 } d''8-> c''8 b'8( a'16 g'16) fis'16-> e'16 d'8 b8 c'16 a'16 |
\time 3/4 gis'8.\> g''16-^ a''16 b''16 c'''8 \tuplet 3/2 { d'''8 e'''8 fis'''8 } |
\time 3/8 g''4.\fff | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 8" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 300 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key bes \major \tempo "Agitato" 8 = 300
\time 4/4 \tuplet 5/4 { aes''16->\ff c''16 aes''16 b'16 ees'16 } \tuplet 7/4 { d'16 cis'16 ees'16 c''16 b''16 d''16 ees''16 } \tuplet 5/4 { c'''16( a''16 bes'16 a''16 c''16) } b'16-. a'32-. aes'32-. g'16-. ges'16-. |
\time 2,3 5/8 e'16(\f ees'8.) d'8.-- c'8.-- |
\time 5/4 \tuplet 7/4 { cis'16-- d'16-- ees'16-- e'16-- fis'16-- g'16-- a'16-- } r8 g'16-- e'16-- c'16( b8 g'16) e'8.-- b'16-- \tuplet 3/2 { e''8 b'8 a'8-^ } |
\time 4,3 7/16 g''8. a'16-. bes''8 d''16 |
\time 6,3 9/16 aes''16-- cis''16-- c'''16-- b'16-- c'''16-- fis''16-- aes''16( d''16 e'''16) |
\time 3/8 g''8( f''8 d'''8) |
\time 6,3 9/16 des'''8. bes'8. b''16 ees''16 b''16-^ |
\bar "||" \key fis \major \time 5/4 \tempo "A tempo, feroce" \tuplet 3/2 { e''8-> cis'''8 c''8 } cis'''32( b'32 ais''32 b'32 gis''32 a'32 g''32 fis'32) eis'8-. dis'8-. r16 cis'16-> b16 ais16 b16 c'16 dis'8 |
\time 3/4 \tuplet 5/4 { fis''16\ppp gis''16 b''16 c''16 d''16 } eis'''16-- fis'''16-- dis'''16-- cis''16-- gis''16-. c''16-. a''16-. d''16-. |
\time 4,4,2,3 13/16 gis''16-- d''8.-- cis''8.( dis''16) d''16-- e''16-- dis''32-> eis''32 d''16 fis''16 |
\time 3,3,3,2 11/8 g'8.\> gis'8. g''32( gis'32 cis'16 dis'8 c'8) r8 g'8-. gis'8-. e'16 c'32 gis'32 c''16 e''16-^ |
\bar "||" \key ges \major \time 5/4 \tuplet 5/4 { ees''16--\sfz\> des''16-> ces''16-! bes'16-> aes'16-. } aes'8-. ges''8-. \tuplet 7/4 { aes'16-> ges'16 d''16 ees''16 c''16 g''16 e''16 } aes''32 ges'''32 d'''32 ees''32 c'''32 g''32 e'''32 bes''32 d''16-- e'''32-- g''32-- f'''16-- ges''16-- |
\time 2,3 5/8 \tuplet 5/4 { c''16--\ff\< des'''16-- ees''16-- d'''16-- e''16-- } ees''16-> f''8 d''16 ges''8 |
\time 2,2,3 7/8 f''32(\fp g''32) e''32-. aes''32-. ees''32( a''32) d''32-. bes''32-. r16 a''16 aes''16 g''16-^ ges''8( f''8 e''8) |
\time 5/4 d''16-.\> des''8-. ces''16-. \tuplet 7/4 { bes'16-> a'16 aes'16 g'16 f'16 e'16 ees'16 } \tuplet 5/4 { d'16 des'16 c'16 ces'16 bes16-^ } \tuplet 3/2 { a'8-- bes'8-- ces''8-- } \tuplet 7/4 { des'16-. bes16-. des'16-. ees'16-. ges'16-. aes'16-. e''16-. } |
\time 6/8 \tuplet 4/3 { ees''8\mf ges'8 a'8 bes8-^ } aes'4.-! | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 9" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 320 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key aes \major \tempo "Agitato" 8 = 320
\time 6,3 9/16 r8 g''8--\fff e'''8-- d'''32-- c'''32-> des''16-- ees'16-- |
\time 4/4 e'16-.\sfz\> c''8.-. \tuplet 5/4 { des''16( d''16 ees''16 e''16 fis''16) } f''16 g''8 e''16-^ \tuplet 7/4 { ees''16 f''16 d''16 ges''16 des''16 g''16 c''16-^ } |
\time 4,4,2,3 13/16 b'16--\ppp des''8.-- d'''8-- fis''8-- \tuplet 3/2 { e'''16 f''16 fis'''16 } e'''16-. des'''16-. bes''16-. |
\time 4/4 g''32( e''32) des''32-. bes'32-. g'32( e'32) des'32-. bes32-. g'16 bes'16 des''16 e''16-^ ees''8.-. des''16-. g''16-. a'16-. e''16-. d'16-. |
\time 3,2 5/8 e'32( g'32 b'16 d''8 e''8) g''16( b''16 d'''16 e'''16) |
\time 6/8 aes''16-- e''16-- c''16-- aes'16-- e'16-- c'16-- aes'4( c''8) |
\time 4,4,2,3 13/16 a'16->\p\> b16 c'16 b'16 d''16( ees'8 g'16) \tuplet 3/2 { ges'16-> aes'16 f'16 } e'32( ges'32 ees'16 g'16) |
\bar "||" \key d \major \time 2,3 5/8 fis'16(\mf aes'16) f'16-. a'16-. gis'32( ais'32 g'16 b'8 fis'8) |
\time 4,3 7/16 f'8-> g'8-. fis'16-- gis'16-- f'16-- |
\time 3/4 cis'16-.\< ais32-. a'32-. ais'16-. cis''16-. \tuplet 6/4 { e'16-. d''16-> cis''16-. bes''16 g''16-! ais''16-. } b''16 cis'''32 d'''32 e'''16 fis'''16 |
\time 3,2 5/8 e'''16(\fff d'''8 cis'''16 b''8) r16 a''16 g''16 fis''16 |
\bar "||" \key fis \major \time 3/4 eis''16-- dis''16-- cis''8-- \tuplet 5/4 { b'16( ais'16 gis'16 fis'16 eis'16) } d''16-- b16-- gis'8-- |
\time 9/8 a''8-> ais''8-> c''8-. b'16-- ais'16-- gis'8-- fis'8-- eis'8 e'8 d'8-^ |
\time 4,4,3 11/16 \tuplet 5/4 { cis'16 c'16 b16 a'16 ais'16-^ } c'''8( b'16 g''16) ais'32 g''32 eis'16 e''16 |
\time 4/4 g'32(\sfz a''32 b'32 eis''32 dis'32 a'32 d'32 b'32) ais'32 fis'32 d'32 ais32 fis'32 ais'32 d''32 fis''32 ais''16 d'''8 fis'''16 \tuplet 3/2 { e'''8-. c'''8-. gis''8-. } |
\time 6,3 9/16 c''8\< cis''4 c''16( b'16 ais'16) |
\time 4,4,3 11/16 \tuplet 7/4 { a'16->\pp\> gis'16-. g'16-! fis'16 eis'16 e'16-. dis'16-- } r16 d'16-. cis'16-. c'16-. ais16( a'8) |
\time 4,3 7/16 g'16\mp fis'16 e'16 dis'16-^ d'8.-^ | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 10" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 288 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key c \major \tempo "Scherzando, molto vivo" 8 = 288
\time 4,3 7/16 f''16\mp gis'8.-^ c'16( a'16 g''16) |
\time 5/4 a''16-- cis'''32-- ees'''32-- g''16-- dis''16-- cis''16( a'16) g'16-. dis'16-. d'8.-- e'16-- ees'16-- d'8-- cis'16-- \tuplet 3/2 { c'8( b8 a'8) } |
\time 4,4,2,3 13/16 \tuplet 3/2 { ais'8->\< b'8 cis''8 } \tuplet 5/4 { d''16( dis''16) fis''16-. ais''16-. d'''16 } f'''8-> ges'''8-> f'''16 |
\time 4,3 7/16 \tuplet 3/2 { ees'''8-.\ff\> c'''8-. ais''8-. } b''16 c'''8 |
\time 4/4 b''16-!\sfz cis'''16-! ais''16-! d'''16-> \tuplet 5/4 { cis'''16 dis'''16 r16 c'''16 e'''16 } \tuplet 5/4 { dis'''16-! f'''16 d'''16 fis'''16-- cis'''16 } r8 b'16 f''16-^ |
\time 3,3,3,2 11/8 dis'8\> f''8 ais'8 b''16 f''16 g''16 a'16 ees''16 f'16 \tuplet 4/3 { cis'8( a'8) cis''8-. f''8-. } a''16-> cis'''16 f'''16 a''16 |
\bar "||" \key e \major \time 3,2,2 7/8 f''16--\sfz\> cis''16-- a'16-- f'16-- cis'16-- a'16-- gis'16 fis'16 e'16 dis'16 cis''16 d''8 c'''16 |
\time 2,3 5/8 cis''16->\ff\< e'16 g'8 a'4( c'8) |
\time 3,3,3,2 11/8 b32\mf gis'32 b'16 d''8 f''8 gis''16-- b''16-- d'''16-- f'''16-- gis''16-- f''16-- r8 d''8 b'8-^ ais'8.-> c''16-> |
\time 4/4 \tuplet 5/4 { b'16 cis''16-- ais'16-- d''16 a'16-! } gis'8-. ais'8-! b'16-. c'8-. a'16-. \tuplet 6/4 { b'16 c''16 a''16-. fis''16 d''16-> cis''16-! } |
\bar "||" \key ces \major \time 3/4 \tuplet 3/2 { c''8-- r8 d''8-- } \tuplet 5/4 { des''16-. ees''16-. c''16-. fes''16-. ces''16-. } bes'16-- c''16-- a'16 des''16-! |
\time 4,4,2,3 13/16 d''16 ees''16 fes''16 f''16 \tuplet 3/2 { ges''8-- g''8-- aes''8-- } ces'''16 des'''16 fes'''8 ges'''16-^ |
\time 3/4 ees'''16\> d'''8 c''16-^ ees'16-. ges'8.-. g'8-- ges'16-- d''16-- |
\time 4/4 r16 fes'16\ppp ees''16 fes'16-^ ges'8.-. aes'16-. bes'8( ces''16 des''16) ees''8.( fes''16) |
\time 3,3,3,2 11/8 g'16-! d'16-> f'8-- aes'8-- g''16-. d'''16-. f''16-. aes''16-. ces'''16-. ges''16-. bes'16 g''16 c'''16 d'''16 fes'''16 ges''16-^ f'16 des''8.-^ |
\time 3/8 d'16(\ff\> ees''16) g'16-. aes''16-. des''16( d'''16) |
\time 3,2 5/16 aes''16-.\pp a''16-. des''16-. c'16 des''16-^ |
\time 3,2,2 7/8 \tuplet 4/3 { f'8--\ff g''8-- c''8-- d'''8-- } \tuplet 3/2 { g''8 fes'''8 bes''8-^ } a''4-. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 11" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 276 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key ees \major \tempo "Feroce" 8 = 276
\time 5/4 \tuplet 3/2 { ees''8\mp a''8 ees''8 } bes''8 aes'16-! a''16-! g'8. aes''16 g''16-- a''16-- fis''16-- bes''16-- \tuplet 7/4 { a''16-. b''16-. aes''16-. c'''16-. g''16-. des'''16-. fis''16-. } |
\time 2/4 f''16-- g''16-- e''16-- aes''16-- g''16-- a''16-- fis''8-- |
\time 3,3,3,2 11/8 e''16( des''16 b'16 ges'16 e'16 cis'16) b8 ges'8 b'8-^ cis''8.-- e''8.-- g''8-. ges''16-. f''16-. |
\time 4/4 \tuplet 3/2 { des'''8 d''8 ees''8 } \tuplet 6/4 { d''16 e''16 cis''16 f''16 c''16 fis''16 } f''16-- g''8-- e''16-- ees''32( f''32) d''16-. fis''8-. |
\time 9/8 d''8.(\p b'8.) d'16-. b16-. f'8-. bes'8-. b'16( c''16) cis''8-. d''8-. |
\bar "||" \key ges \major \time 3,2 5/16 \tempo "A tempo, feroce" ees''16-.\ff\< e''8-. bes'8-. |
\time 3,2 5/8 bes'16\fp ges'16 aes'16 a'16 f'16 e''16-^ d''16-- ces''16-- ees''16-- des''16-- |
\time 3/4 d''8\< ces''16 ees''16 d''16-. ces'''16-. ees''16-. des''16-. \tuplet 5/4 { a''16 ces''16 g''16 a'16 ges''16-^ } |
\time 3,2 5/16 f''16\mp g'16 aes'16 \tuplet 3/2 { bes16-> g'16 ges'16 } |
\time 4,4,2,3 13/16 g'16-- ces''8-- c''16-- \tuplet 7/4 { aes''16( e''16 g'16 a'16 ees''16 bes''16 ces''16) } r16 aes''16-. aes''16-. e''8-. |
\bar "||" \key a \major \time 3,2,2 7/8 \tempo "Tempo I" dis''16-- bes''16-. gis''8 a'8 dis''32 bes''32 gis''32 a'32 d'32 g'32 fis'32 b'32-^ \tuplet 7/4 { dis'16( bes'16 gis'16 a'16 d'16 g'16 fis''16) } |
\time 2,3 5/8 r8 dis'''16\f c'''16 b''16-- gis'8-- g''16-- f''8-- |
\time 4,4,2,3 13/16 r8 d''16\p b'16-^ bes''16 gis'16 f'16 d'16-^ dis'16-> e'16-. f'16 g''8-^ |
\time 6/8 fis'''16\p\> f''16 e'''16 fis''16 e'''16 g''16-^ cis''16 ais''16 c'''16 d''16 g'16 f''16-^ |
\time 2,2,3 7/8 g''32\ppp a''32 ais''32 c''32 dis'''32 e'''32 f'''32 fis'''32-^ \tuplet 3/2 { f'''8-- g''8-- e''8-- } r8 dis''8-> f''8 |
\time 4,4,3 11/16 e''16->\ff d''16 cis''16 b'16 \tuplet 7/4 { a'16 gis'16 fis'16 e'16 d'16 cis'16 b16 } dis'16-. e'16-. cis'16-. |
\time 3/4 r8 e'16 d''16 fis'32( f'32) dis''16-. d'''8-. fis'''4-- | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 12" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 320 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key ees \major \tempo "Feroce" 8 = 320
\time 5/4 \tuplet 5/4 { b16\ppp des''16 b16 bes'16 b16 } \tuplet 5/4 { bes16( aes'16) r16 bes'16-. c''16-. } \tuplet 5/4 { d''16-. ees''16-. f''16-. g''16-. aes''16-. } g''8( a''16 fis''16) f''32( g''32 e''16 aes''8) |
\time 4,3 7/16 g''16-. a''16-. ges''8-. f''8. |
\time 2,2,3 7/8 e''16-.\> fis''8.-. f''16 g''16 e''16 aes''16 \tuplet 4/3 { d'''8 c''8 g''8 aes'8 } |
\time 4,4,2,3 13/16 e''4\mf g'8( ges''16 c''16) aes''8-> f'''16( fis''8) |
\time 2,3 5/8 e''8--\p d''16-- bes'16-. aes''8-> b'8 g''8 |
\bar "||" \key e \major \time 6,3 9/16 \tuplet 4/3 { gis''8-.\ff e'''8-. cis'''8-. b''8-. } gis''8.-^ |
\time 3,2,2 7/8 r8 b''8-. gis''8-. fis''16 e''32 dis''32 cis''16 b'16 a'32 gis'32 fis'16 e'8-^ |
\time 2/4 dis'32\> cis'32 b16 a'8-^ r8 c''16-. cis''16-. |
\time 6/8 \tuplet 4/3 { dis''8(\fff fis'8) a'8-. c''8-. } cis''16( dis''16 e''16 g''16 e'''16 dis'''16) |
\time 2,2,3 7/8 cis'''8-! e''16-> c'''16-> \tuplet 5/4 { ais'16 a''16 r16 b'16 g''16-^ } c''16-- cis'''16-- f''8-- c'''8-- |
\bar "||" \key fis \major \time 2/4 b''8-.\p cis'''16-. ais''16-. a''16-. b''8.-. |
\time 2,3 5/8 ais''32 c'''32 a''32 cis'''32 gis''32 d'''32 g''32 dis'''32 d'''32( e'''32 cis'''16 eis'''8 c'''8) |
\time 4,3 7/16 b''8-> cis'''16 ais''16 a''16( b''16 gis''16) |
\time 4,4,2,3 13/16 \tuplet 5/4 { g''16( a''16) fis''16-. ais''16-. eis''16 } dis''16 cis''8.-^ r16 b'16-. ais'8( fis'16) |
\time 2,2,3 7/8 dis'4\ff\> eis'16( fis'8 gis'16) ais'8.-> b'8. |
\time 5/4 \tuplet 5/4 { cis''16--\sfz dis''16-- r16 eis''16-- fis''16-- } r16 gis''16 ais''16 b''16-^ r16 ais''16( c'''16 a''16) gis''16-- ais''16-- g''8-- gis''4-^ | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 13" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 336 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key f \major \tempo "Volante" 8 = 336
\time 3,3,3,2 11/8 e'''8(\f bes''4) b''8-. cis''4-. c''8-> bes'8-. a'8-. g'8. f'16 |
\time 3/8 e'32(\mf\< d''32 gis'16 f''8 ees'8) |
\time 3,3,3,2 11/8 c''32--\fff d'32-- bes'16-- b8-- a'8-- aes'8 bes'4-^ a'8-- b'8-- gis'8-- g'16-> f'32 e'32 d'16 c'16 |
\time 5/4 d'16\mf dis'8 fis'16-^ g'8( fis'8) e'16-- des'16-- b16-- bes16-- \tuplet 5/4 { g'16( f''16) e'16-. ees'16-. c'16 } \tuplet 3/2 { bes8-- b8-- d'8-- } |
\time 4,4,3 11/16 \tuplet 6/4 { e'16(\sfz f'16 g'16 a'16 bes'16 c''16) } r16 d''16-- e''16-- f''16-- g''8.-. |
a''8-- bes''16-- c'''16-- d'''16 e'''16 f'''8 b''8.-^ |
\time 3,2,2 7/8 cis'''8 e'''8 g''8-^ \tuplet 3/2 { aes''8( g''8 e'''8) } \tuplet 3/2 { c'''8 r8 a''8 } |
\bar "||" \key c \major \time 4/4 r16 c''16-.\fff a'16-> g''16-. c''16( a'8.) ges''16( gis'8.) r16 fis'16 gis'16 dis''16 |
\time 2,3 5/8 \tuplet 7/4 { e''16( f''16) g''16-. a''16-. b''16( c'''16) d'''16-. } e'''16-- f'''16-- ges'''16-- g''16-- fis''16-- e''16-- |
\time 5/4 \tuplet 6/4 { dis''16 d''16 des''16 c''16 b'16 ais'16-^ } \tuplet 6/4 { b''16-> a'16 f''16 fis'16 ees''16 g'16 } c'16( g'32 fis'32 dis''16 g'16) f''16 g'16 dis''8 \tuplet 3/2 { f'''8 g''8 fis''8 } |
\time 3/4 \tuplet 5/4 { f''16(\fp ees'''16 d''16 b''16 gis'16) } b'16-> cis'16 dis'16 a'16 b8. cis'16-^ |
\bar "||" \key ges \major \time 3,3,3,2 11/8 \tuplet 4/3 { bes'8->\fp d'8 ges'8 g'8 } r8 aes'8-- bes'8-- ces''16-> des''16 ees''16 f''16 ges''16 aes''16 bes''8. ces'''16 |
\time 3,2,2 7/8 des'''4\> ees'''8 f'''16-> ges'''8. \tuplet 5/4 { g''16( f''16 ees'16 d'16 ces''16) } |
\time 6/8 a'32--\mf bes32-- des''16-- ees'''8-- e'''8-- a''16( c'''16 des''16 aes''16 g''16 f''16) |
\time 9/8 e''16-. d''16-. des''8-. c''8-. ces''32( a'32 aes'16 g'8 f'8) e''32( ees'''32 ces'''16 d'''8 ces'''8) |
\time 6,3 9/16 bes''8.\fff\< ces''8. a''16( g''8) |
\time 4/4 \tuplet 6/4 { e'''16(\ppp ees''16 ces'''16 d''16 ces'''16 c''16) } \tuplet 3/2 { ces'''8-- bes'8-- e''8-- } des''16( c'16 bes16 des'16) c'16-. ces'16-. g'16-. ces''16-. |
\time 3/4 \tuplet 5/4 { c''16( ees''16) g''16-. ces'''16-. c'''16 } d'''8-- e'''8-- ges'''4-> | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 14" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 300 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key a \major \tempo "Feroce" 8 = 300
\time 3,3,3,2 11/8 bes''16->\f\> a''16-! e'''8-> cis'''8-- ais''16( a''16 e'''16 cis'''16 g''16 f'''16) ais''16( a''8 e'''16 cis'''8) b''16-> a'8. |
\time 3,2 5/16 gis'16\mp fis'8 \tuplet 3/2 { f'16-- g'16-- e'16-- } |
\time 2,2,3 7/8 dis'16\mf f'32 d'32 fis'16 cis'16 c'16-- d'8-> b16-- \tuplet 4/3 { ais8-. c'8-. a'8-. cis''8-. } |
\time 5/4 \tuplet 5/4 { a''16(\pp c'''16 e''16 ees''16 f'16) } \tuplet 7/4 { d'16-- fis'16-- e''16-- ees'''16-- d'''16-- b''16-- ais''16-- } \tuplet 5/4 { fis'''16-- gis''16-- bes''16-- gis'16-- g''16-- } fis''4-> e''16( d''32 cis''32 b'16 a'16) |
\time 3/4 \tuplet 5/4 { gis'16->\sfz fis'16-> r16 e'16-> d'16-. } cis'16 ees'16 c'16 e'16 dis'16( f'16) d'16-. fis'16-. |
\time 3,2 5/16 a'32( cis''32 f''16 a''16) gis''8 |
\bar "||" \key ges \major \time 3,2,2 7/8 e''16\f des''16 a'16 aes'16 e'16 des'16 d'8.( des''16) d''8-> e''16-! g''16-! |
\time 5/4 \tuplet 3/2 { ges''8 f''8 e''8 } ees''16 des''16 ces''16 bes'16-^ aes'16 ges'8 f'16-^ \tuplet 3/2 { ees'8( des'8 ces'8) } \tuplet 6/4 { bes16( ces''16 ees'16 ces''16 des'16 aes'16) } |
\time 3,2,2 7/8 ces'16-!\< g'16-> c'16 g'16-! a'16-! ges''16-! \tuplet 3/2 { aes'8-> ees''8 aes'8 } \tuplet 6/4 { f'16( e'16 d''16 ees'16 ges'16 bes16) } |
\time 2/4 des'16-.\p d'16 ees'8 e'16-- c''32-- e'32-- des''16-- bes'16-- |
\time 3/8 c''16( des''16) ees''16-. f''16-. ges''16( g''16) |
\time 6/8 r8 c''8-- g''8-- r8 ges''8 f''8-^ |
\time 4/4 e''8 d''8-^ des''16( ces''8 bes'16) \tuplet 7/4 { aes'16( ges'16 f'16 ees'16 des'16 ces'16 bes16) } \tuplet 7/4 { aes'16 bes'16 ces''16 des''16 ees''16 f''16 ges''16-^ } |
\bar "||" \key des \major \time 3,2,2 7/8 \tempo "Tempo I" \tuplet 4/3 { f''8 g''8 e''8 aes''8-^ } b'16-> g''16 b'16 c''16 b'8 aes'16 f''16 |
\time 9/8 \tuplet 4/3 { ges'8\< g'8 b8 bes8 } b16-- c'8-- a'16-- ges'8-- d''16 ges'16 aes'16 g'16 a'16 bes16 |
ges'16\sfz\< ees'16 ges'16 a'16 ges''16 a''16 bes'32 des'32 b'16 a''8 bes''8 g''8. ges''8. |
\time 3/8 d'''4.\fff | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 15" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 336 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key cis \major \tempo "Vivacissimo" 8 = 336
\time 5/4 \tuplet 3/2 { fis'8->\ff ais'8 d''8 } fis''16-. ais''8-. d'''16-. eis'''16-. g''16-. eis''16-. cis''16-. dis''4-. r16 gis''16 ais''16 cis'''16 |
\time 4,4,2,3 13/16 dis''16 ais''16 gis''8 dis'''16( ais''32) gis''32-. a''16-. g''16 \tuplet 3/2 { fis''16( e'16 dis'16) } fis'16-> a'8 |
\time 2,2,3 7/8 gis''8.(\mp bis'16) g''32-. a'32-. dis''16-. cis'8-. ais'4( a'8) |
\time 3,3,3,2 11/8 \tuplet 4/3 { fis''8\ff g''8 d''8 e'8-^ } fis'8-- g'8 d'8-. fis'4 g'8 fis'32( e'32 d'32 cis'32 ais32 a'32 ais'32 b'32) |
\time 3/4 ais'8--\p gis'16-- fis'16-- r16 eis'16-> dis'16 cis'16 d'16-. dis'16-! eis'16-- fis'16 |
\bar "||" \key fis \major \time 2,3 5/8 gis'16->\< a'32 ais'32 c''16 cis''16 d''16( dis''16 e''16 fis''16 g''16 gis''16) |
\time 4/4 b'8.\p eis''16 \tuplet 5/4 { cis''16( a'16) fis'16-. eis'16-. cis'16 } r16 a'16( cis''16 eis''16) fis''8 a''16 cis'''16-^ |
\time 4,4,2,3 13/16 c'''16( gis''16 e''16 c''16) gis'32 e'32 c'16 gis'8 \tuplet 3/2 { c''16 e''16 gis''16-^ } e''16-. d''16-. b'16-. |
\time 3,2 5/8 ais'16\> gis'16 fis'16 eis'16 dis'16 cis'16-^ \tuplet 3/2 { b8( ais8 gis'8) } |
\time 4/4 \tuplet 7/4 { a'16\p ais'16 b'16 c''16 d''16 dis''16 e''16 } eis''16( fis''16) g''16-. a''16-. \tuplet 6/4 { g'16-- eis'16-- d'16-- eis'16-- fis'16-- a'16-- } c'16 dis''32 fis''32 a''16 g''16-^ |
\time 2/4 \tuplet 5/4 { ais'16->\f\> fis''16 r16 gis'16 b16 } gis'8 e''16 eis'16 |
\bar "||" \key f \major \time 3,3,3,2 11/8 \tempo "A tempo, feroce" fis'16\ppp g'16 b16 a'16 c''16 ees'16-^ d''8 c''8 b''8-^ f''32 des'''32 g''16 des'''8 dis''8-^ a''16( b'8 g''16) |
\time 2,2,3 7/8 \tuplet 3/2 { gis'8 f''8 gis'8 } g'16 a''16 d''16 a''16 bes''8-- b''4-- |
\time 3/8 c'''16--\mf\> d'''16-- ees'''16-- e'''16-- f'''16-- fis'''16-- |
\time 2,3 5/8 f'''8\f cis'''8 b''32-. d''32-. e'16-. g'8-. dis''8-. |
\time 3,3,3,2 11/8 des'''16--\> c'''16-- des'''16-! bes''16-> cis'''16-. e'''16-! ees'''8.( d'''8.) cis'''16-. ees'''8-. c'''16-. e'''8-. \tuplet 7/4 { dis'''16( f'''16 d'''16 ges'''16 des'''16 g''16 c''16) } |
\time 3/4 d''16->\p\< e''16 f''16 fis'16 g'8-- bes8-- aes'16-> bes32 a'32 bes'16 g''16 |
\time 2,3 5/8 fis''8-.\sfz aes''16-. f''16-. e''4. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 16" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 320 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key f \major \tempo "Frenetico" 8 = 320
\time 3/4 f'16->\p des''16 f'16 dis''16 \tuplet 5/4 { e'16 f''16 ees'16 c''16 d'16-^ } aes'16-. g'8 dis''16-> |
\time 3,2,2 7/8 a'8\mp cis''8 bes''8 des'''16( gis''32 bes''32 c''16 f''16) des'''32-. gis''32-. bes''32-. c'''32-. f''32-. g'32-. dis'32-. fis'32-. |
\time 9/8 \tuplet 4/3 { cis'8 gis'8 bes'8 c''8 } bes'16 a'16 g'16 f'16 e'16 d'16 r8 c'8( bes8) |
\time 3/4 fis'8-.\ppp bes'8-. d''16-. fis''32-. bes''32-. d'''16-. fis'''16-. d'''32-. b''32-. bes''32-. des''32-. f'32-. aes'32-. b32-. aes'32-. |
\time 3,3,3,2 11/8 a''16( d''16 bes''16 gis'16 ees''16 e'16) b'16( dis'8) b'16-. c'8-. g'8-. bes8 g'8 \tuplet 5/4 { e'16 cis'16 b'16 aes'16 f'16-^ } |
\time 6,3 9/16 ges'8.-.\> gis'8.-. bes'16-. b8-. |
\time 9/8 bes8->\ff c'8 a'8 gis'8.-- bes'8.-- a'16-. b'16-. gis'8-. c''8-. |
\time 3,3,3,2 11/8 bes'8.( a'8.) c''8.( aes''8.) a''16 bes''8 c'''16 d'''8 \tuplet 5/4 { e'''16( f'''16 r16 g''16 f''16) } |
\bar "||" \key c \major \time 4/4 f''8-. e'''8-. \tuplet 3/2 { f''8-! e'''8-- gis''8 } f''16 e'''16 gis''8 c''32 cis''32 g'16 ais8 |
\time 3/8 r8 c'8-. cis'8-. |
\time 6/8 c'16(\ppp\> cis'8 g'16 ais'8) r8 a'8-. c''8-. |
\time 5/4 d'''8\pp c''16 b''16 d''16-- b''16-- a'16-- ais''16-- \tuplet 6/4 { a''16( b''16) gis''16-. c'''16-. g''16( cis'''16) } c'''16( d'''16) b''16-. dis'''16-. \tuplet 5/4 { d'''16-. e'''16-. cis'''16-. f'''16-. c'''16-. } |
\time 6/8 b''16--\f\< g''8-- e''16-- c''8-- a''16 b'8 c''16 gis''8-^ |
\time 3,2,2 7/8 b'8(\fff c'8 dis'8) d'16-. b16-. gis'16-. b'16-. bes'16( g'32 e'32 des'16 ais16) |
\time 2/4 g'16-> ais'16 cis''16 e''16 \tuplet 3/2 { f'8-. r8 d''8-. } |
\time 3/4 \tuplet 3/2 { b''8->\> r8 gis''8 } g''16-. a''16-. fis''16-. ais''16-. a''16 b''16 gis''16 c'''16-^ |
\time 2,3 5/8 \tuplet 5/4 { des'''16(\mp e''16 r16 b''16 ais'16) } b''4.-. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 17" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 336 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key a \major \tempo "Leggierissimo" 8 = 336
\time 3,2 5/8 e'16\p c'16 b16 g'16 b'16 c''16-^ r8 e''16 g''16 |
\time 6,3 9/16 ais'32->\fff fis''32 a''16 gis''8 b''8 gis''16( b'16 ais''16) |
\time 5/4 r16 b''16-. c'''16-> dis'''16-. d'''16 f''8 e'''16 g''16 b'16 gis'8 c'16-. ais'16-! fis''16-> a''16-! \tuplet 3/2 { bes''8 a''8 g''8-^ } |
\time 6/8 ais''8.\sfz\< a''8.-^ ais'8-> a''4 |
\time 3,2 5/8 b''16(\f d'''16 f'''8 gis''8) f''32( d''32) b'32-. gis'32-. f'32( d'32) b32-. gis'32-. |
\bar "||" \key ges \major \time 3,3,3,2 11/8 \tempo "Più mosso" r8 ces''8-!\< d''8-> ees''32-- e''32-- f''16-- ges''8-- g''8-- e'''8-> g''8 ees''8 des''8( aes'8) |
\time 4/4 \tuplet 3/2 { ges'8(\pp ees'8 des'8) } ees'16-> e'32 aes'32 ces''16 ees''16 des''8( ces''16 bes'16) aes'16( f'16 ees'8) |
\time 2/4 bes16-- aes'16-- bes'16-- ees''16-- d''16-- des''8-- c''16-- |
\time 4,4,3 11/16 ces''16-. bes'16-. a'16-. aes'16-. ges'16( f'8.) a'8. |
\time 6,3 9/16 g''16(\< des''16 ees'''16 f''16 ges'''16 ces'''16) bes''32-> des''32 bes''16 ees''16 |
\time 6/8 des''16\p\< c''16 aes'8 f'8 des'8. c'8. |
\time 5/4 ces'16(\fff bes8 aes'16) \tuplet 6/4 { g'16( a'16 ges'16 bes'16 f'16 ces''16) } \tuplet 3/2 { bes'8( c''8 a'8) } aes'8-! bes'8-> aes'32 ges'32 f'16 ees'8-^ |
\bar "||" \key b \major \time 3,3,3,2 11/8 \tempo "Tempo I" e'8( g'8 c''8) e''8. g''8.-^ e'''16-! dis'''16 c'''8-. a''8-. \tuplet 6/4 { fis'''16 e'''16 g''16 e''16 cis'''16 b''16 } |
\time 4,3 7/16 c'''8.--\ppp cis''16-- dis'16( d''8) |
\time 3,3,3,2 11/8 cis'''8( e'''8 g''8) r8 ais''8 d''8-. f''4 gis''8-^ cis''16-! gis''8.-> |
\time 3/8 fis'16-.\> dis''16-. cis'16-. g'16-. c'16-. gis'16-. |
\time 2,2,3 7/8 \tuplet 6/4 { b16\ppp g'16 e'16 fis'16 e''16 g''16-^ } ais''16( fis'''16) e'''16-. dis'''16-. d'''16( b''8 a''16 f'''8) |
\time 4,4,3 11/16 g''16-. d''8-. c''16-. a'32-> g'32 d'16 c'8 b8. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 18" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 300 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key aes \major \tempo "Feroce" 8 = 300
\time 3,2 5/8 g''16\ff\> f'16 ges''16 g'16 e''16 aes'16 \tuplet 3/2 { d''8 r8 ees'8 } |
\time 5/4 f'16\f g'16 aes'16 bes'16 \tuplet 7/4 { c''16-- des''16-- ees''16-- f''16-- g''16-- aes''16-- bes''16-- } c'''16( des'''16 ees'''16 f'''16) g''16-. f''8.-> ees''8-- des''8-- |
\time 3,2 5/16 aes'16(\> des'16 bes'16) \tuplet 3/2 { aes''16 des''16 bes''16 } |
\time 4,3 7/16 aes''16(\pp des''8 bes'16) ges'16 ees'8 |
\time 3/8 \tuplet 4/3 { b8-. bes8-. fis'8-. bes'8-. } |
\bar "||" \key cis \major \time 3/4 \tempo "Stringendo" \tuplet 5/4 { a'16--\pp fis'16-! eis'16-- cis'16 a'16-. } gis'16-> ais'32 g'32 b'16 fis'16 eis'8-- g'16-- e'16-- |
\time 6/8 dis'16-. eis'8 d'16-! fis'8-> eis'8-- g'8-. e'8-- |
\time 2,2,3 7/8 \tuplet 3/2 { dis'8 r8 b'8-^ } \tuplet 5/4 { gis'16-- fis'16-- dis''16-- bis'16-- a''16-- } r8 gis'8 g'8-- |
\time 4,4,2,3 13/16 eis'16-.\> e'32-. dis'32-. d'16-. b'16-. \tuplet 5/4 { e'16 ais'16 r16 a'16 dis''16-^ } r16 cis'16 ais'16-- b16-- g'16-- |
\time 2/4 ais'16-.\ppp\< d''16-! dis''16-! fis''16-. ais''8.-. d'''16-. |
\time 3/8 b''16\fp ais''16 a'16 fis'16 e'16 d'16-^ |
\time 4,4,2,3 13/16 e'32-! fis'32 gis'32-- a'32-> b''32-! d''32-. dis''32-> eis'32-. \tuplet 6/4 { g'16-> bis16 ais16 gis'16 a'16 eis'16 } \tuplet 3/2 { g'16( bis'16 ais'16) } b'16 d'16 b'16 |
\bar "||" \key cis \major \time 6/8 \tempo "Subito meno mosso" ais'32( bis'32) a'16-. cis''8-. gis'8 g'16 a'16 fis'16 ais'16 eis'16 b'16 |
\time 4/4 ais'8 bis'8 dis'32( fis'32 gis''16 a''8) b''4-^ r8 ais''16( gis''16) |
\time 2,3 5/8 fis''16 eis''16 dis''16 cis''16 bis'8 d''8 b'8 |
\time 4,4,3 11/16 a'16(\ff g''16 fis''8) \tuplet 3/2 { a''8( eis'''8 d'''8) } a''8.-^ | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 19" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 352 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key f \major \tempo "Frenetico" 8 = 352
\time 9/8 f'8-.\mp\< g'4-. cis'16( ees''16 gis'16 ees''16 d'16 dis''16) g'16( d''8 dis'16 c''8) |
\time 4,3 7/16 fis'16->\f f''16 fis'8 f'16-- g'8-- |
\time 6/8 b16-! g'16-. a'16-. gis''16-! e'''16-! c'''16 b''8-. bes''4-- |
\time 4,4,2,3 13/16 b'8 bes'16 d'16-^ ges'8 cis'16 dis'16-^ c''16 dis''16 b''32 g''32-> aes''16-! b'16 |
\time 6/8 << { c''8-.\sfz d''8-. e''8-. f''16( g''16 a''8 bes''8) } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" \remove "Bar_number_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \key f \major c'''8^\markup{\tiny \italic "altiss. ad lib."} d'''8 e'''8 f'''16 g'''16 a'''8 bes'''8 } >> |
\time 3,2 5/16 c'''8.\fp bes''8 |
\time 2,2,3 7/8 e'''32\sfz f''32 g''32 b'32 bes''32 d''32 a''32 g'32 e''4 \tuplet 4/3 { f''8 fis''8 gis''8 a''8 } |
\time 2/4 \tuplet 3/2 { bes''8-. c'''8-- cis'''8-- } r16 d'''16 e'''16 f'''16-^ |
\bar "||" \key c \major \time 3/4 \tempo "Stringendo" c'''8--\pp cis''8-- r16 dis''16-. e''16-. f''16-. \tuplet 7/4 { g''16( gis''16) a''16-. ais''16-. b''16( cis'''16) d'''16-. } |
\time 9/8 des'''8(\sfz ais''8 g''8) f''8.-. dis''8.-. des''32-> ais'32 g'16 f'8 dis'8 |
\time 6,3 9/16 \tuplet 4/3 { d'8 c'8 b8 a'8-^ } b'32( c''32) d''16-. e''16-. |
\time 2,3 5/8 << { f''16\ppp fis''16 g''8 gis''8-- a''8-. ais''8-> } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" \remove "Bar_number_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \key c \major f'''16^\markup{\tiny \italic "altiss. ad lib."} fis'''16 g'''8 gis'''8 a'''8 ais'''8 } >> |
\time 6/8 r8 b''8\fp c'''8 e'''4-> fis''8 |
\time 3/4 \tuplet 6/4 { e'''16( fis''16 a''16 gis''16 bes'16 d'16) } dis'8 fis'8-^ g'32-> dis'32-! fis'16-- c'8-- |
\time 4,3 7/16 \tuplet 7/4 { g'16\mf dis'16 fis'16 c''16 f''16 b'16 gis'16-^ } g'16-. dis'16-. fis'16-. |
\time 3,2 5/16 des''8->\p\< f'16 des''16-. fis'16-. |
\time 2,3 5/8 gis''32->\p d''32 aes''16 cis''8 d'''4.-> | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 20" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 300 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key bes \major \tempo "Inquieto" 8 = 300
\time 3/4 a''16--\sfz bes''32-- c'''32-- d'''16-- ees'''16-- f'''8-- g''8-- a''32-- bes''32-- c'''32-- d'''32-- ees'''32-- f'''32-- g''32-- f''32-- |
\time 4,4,3 11/16 \tuplet 3/2 { ees''8( r8 d''8) } b''16( ees''16 d'''16 f''16) des'''8( c''16) |
\time 4/4 \tuplet 6/4 { b''16 d''16 c'''16-- b'16-! ges''16-> e'16-! } ees'8. f'16 e'8.( fis'16) \tuplet 3/2 { f'8 g'8 e'8 } |
\time 5/4 f'16-.\fff g''32-. bes''32-. des''16-. e''16-. f'''16-> gis''32 a''32 b''16 cis'''16 c'''16( bes''32) a''32-. aes''16-. fis''16 a'16-> b'32 c''32 d''16 ees'16 \tuplet 3/2 { e'8-. b'8-. d'8-. } |
\time 4,3 7/16 \tuplet 3/2 { b'8( des'8 e'8) } d''16 e'16 cis'16 |
\bar "||" \key f \major \time 2,2,3 7/8 \tuplet 5/4 { bes'16(\p ees'16 bes'16 d'16 gis'16) } b16-. ges'16-. e'16-. cis''16-. ees''8. f'8. |
\time 2/4 d'16-. b8-. gis'16-. g'16-. f'16-. e'8-. |
\time 3,2 5/16 d'32(\f\< f'32) g'16-. bes'16-. cis''16-. c'''16-. |
\time 3/4 \tuplet 5/4 { b''16-.\f bes''16-. r16 des''16-. f'16-. } e''8-- cis''8-- \tuplet 3/2 { bes'8-- b8-- c'8-- } |
\bar "||" \key d \major \time 2,2,3 7/8 \tuplet 3/2 { cis'8\ppp d'8 e'8 } fis'16 g'8 a'16 b'8-. cis''8-. d''8-. |
\time 2,3 5/8 b'4->\< dis'4 a'8-^ |
\time 3,3,3,2 11/8 dis'8.\p\< a'8. g'8-. fis'4-! e'16 d'8 cis'16 b8 \tuplet 3/2 { a'8( b'8 cis''8) } |
\time 2,2,3 7/8 c''8.\ppp\> a'16 r16 f'16( e'16 c'16) g'8. cis'8. |
\time 3/8 d''8->\ppp g'8 d''8 |
\time 4,4,3 11/16 fis'8 cis''16 f'16 f'8-> c''16-> d''16 f''16 c'''8-^ |
\bar "||" \key ees \major \time 3/4 r16 f'''16\sfz\> c'''16 d''16 \tuplet 7/4 { e'16 f'16 b16 g'16 ges''16 a'16 cis'16 } \tuplet 5/4 { e'16( f'16 b16 g'16 fis'16) } |
\time 2,2,3 7/8 r16 g'16-.\p bes16-. cis'16-. \tuplet 7/4 { e'16-. g'16-. a'16-. bes'16-. des''16-. e'16-. fis'16-. } f'32( cis'32 a'16 cis''8 f''8) |
\time 3/8 aes'32(\ff\> b'32 a''16 ges'''8 ees'''8) |
\time 3,2 5/8 r8 des'''8--\mp d'''8-- b''4-> | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 21" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 288 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key ges \major \tempo "Con fuoco" 8 = 288
\time 6,3 9/16 ees'16\ff\> des'16 ces'8 bes8 aes'32( bes32 a'16 f''16) |
\time 3,2 5/16 des'''16->\p e'''16-! ges''16-- e'''8-^ |
\time 4,4,3 11/16 des'''8 d''16 des''16 e''16-. c'''8.-. ces'''8.-^ |
\time 3,2,2 7/8 r8 bes''8\> aes''8-^ r16 ges''16( f''16 ees''16) d''32( e''32 des''32 f''32 c''32 ges''32 ces''32 g''32) |
\time 6,3 9/16 ges''8\fff aes''8 f''8 a''32( bes''32 d'''16 f'''16) |
\time 3/8 \tuplet 4/3 { ges'''8(\mf g''8 ges''8 f''8) } |
\bar "||" \key b \major \time 6,3 9/16 e''32-. d''32-. cis''16-. c''8-. b'8-. c''32-! d''32-- dis''16-! e''16-. |
\time 3,2 5/16 << { dis''16\mp f''8 \tuplet 3/2 { e''16 fis''16 dis''16 } } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" \remove "Bar_number_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \key b \major dis'''16^\markup{\tiny \italic "altiss. ad lib."} f'''8 \tuplet 3/2 { e'''16 fis'''16 dis'''16 } } >> |
\time 4,4,3 11/16 \tuplet 6/4 { d''16-.\mp e''16-. cis''16-. f''16-. c''16-. fis''16-. } \tuplet 3/2 { gis''8( b''8 d'''8) } f'''16( gis''16 f''16) |
\time 2/4 fis''16-. a''8-. b''16-. r16 c'''16( dis'''16 g''16) |
\bar "||" \key a \major \time 3,2,2 7/8 \tuplet 4/3 { gis''8--\fff\< a''8-- b''8-- cis'''8-- } \tuplet 6/4 { dis''16 g'16 fis''16 a'16 f''16 d'''16-^ } \tuplet 6/4 { ais''16( cis''16) a''16-. gis''16-. b''16( cis''16) } |
\time 3,2 5/8 b'16(\pp a'8) gis'16-. fis'8-. e'8 d'8-^ |
\time 6/8 b'32-. a'32-. g'16-. fis'8-. e'8-. ees'16 c'8 ais16 a'8 |
\time 2,3 5/8 r16 ais''16--\ppp\> c'''16 ais''16-> c''16( fis''8 f'16 d''8) |
\bar "||" \key g \major \time 4,4,2,3 13/16 g'16--\pp des''16-! e'8-! dis'16-. f'32-. d'32-. fis'16-. cis'16-. r16 f'16 b'8. |
\time 4,3 7/16 a'16( g'16 a'16 c''16) cis''16 d''16 e''16-^ |
\time 6,3 9/16 \tuplet 4/3 { f''8(\< fis''8 g''8 a''8) } ais''32( b''32 c'''16 cis'''16) |
\time 3,2,2 7/8 \tuplet 4/3 { c'''8-.\f b''8-. a''8-. g''8-. } fis''16-- e''16-- d''16-- c''16-- b'4-- | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 22" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 240 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key aes \major \tempo "Scherzando, molto vivo" 8 = 240
\time 4/4 d''32->\sfz\> e''32 des''32 f''32 c''32 ges''32 b'32 g''32 \tuplet 3/2 { fis''8( r8 aes''8) } g''8( a''16 fis''16) c'''16-- d'''16-- b''16-- aes''16-- |
\time 3,2 5/16 c'''8(\ff\> d'''16) c'''16-- d''16-- |
\time 4/4 a''16\ppp c''8. \tuplet 5/4 { b'16( des''16 bes'16 d''16 a'16) } \tuplet 5/4 { aes'16( bes'16 r16 g'16 b'16) } \tuplet 5/4 { bes'16 c''16 r16 a'16 des''16 } |
\time 3,2,2 7/8 b'16\< bes'16 ges'8 ees'8-^ b8.-. bes16-. aes'8 bes'16 c''16-- |
\time 4,3 7/16 \tuplet 5/4 { des''16-.\mp ees''16-. r16 f''16-. g''16-. } ges''16( d''16 bes'16) |
\time 5/4 ges'8\mf d'8 \tuplet 5/4 { bes16 fis'16 bes'16 d''16 fis''16 } g''8. e''16 \tuplet 5/4 { g''16 bes''16 c''16 aes''16 c''16 } a'16-> aes'16 bes16 fis'16 |
\time 2/4 r16 e''16( f''16 d'''16) \tuplet 7/4 { c'''16( a''16 g'16 ges'16 f'16 d'16 des'16) } |
\bar "||" \key ges \major \time 5/4 r8 ees'16-. e'16-. \tuplet 3/2 { g'8( bes8 ces''8) } \tuplet 3/2 { des'''8 ees'''8 e'''8 } \tuplet 5/4 { d'''16-- ces'''16-- a''16-- e''16-- d''16-- } \tuplet 5/4 { ces''16( a'16 e'16 d'16 ces'16) } |
\time 3,2 5/8 bes'8.-> aes''8. f''16-- aes'16-- g'8-- |
\time 3/4 \tuplet 6/4 { a'16\< ces'''16 d''16 c'''16 ees''16 bes''16 } \tuplet 5/4 { aes''16 g''16 ges'''16 ees'''16 des'''16 } bes''8-- g''8-- |
\time 9/8 aes''4(\pp bes''8) d'''32-! ges''32 aes''16-> des'''8 ees'''8-- d'''16( ges'''8) aes''16-. des'''8-. |
\time 2/4 aes''16( ges''16 ees''16 des''16) aes'4-- |
\time 6/8 ges'16\fp\< ees'16-> des'16-- aes'16-! des''16 ees''16 ces''4( a'8) |
\bar "||" \key a \major \time 2,2,3 7/8 \tempo "A tempo, feroce" b'8->\mf c''16 dis'16 d'16 c'8 b16 cis'8.-> d'8. |
\time 5/4 f''4\mf\> c'''16 e''8. \tuplet 3/2 { d'''8 cis''8 c'''8 } \tuplet 7/4 { dis''16 b''16 dis''16 c'''16 ais'16 gis''16 ais'16 } e'8-. ais'16-. d'16-. |
\time 2,2,3 7/8 cis'16\ff b16 a'16 b'16-^ \tuplet 5/4 { bes'16-. e'16-. cis''16-. fis'16-. gis'16-. } g'16 a'16 fis'16 bes'16 f'16 b'16-^ |
\time 4,3 7/16 ais'8 c''16 a'16-^ b8.-- | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 23" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 336 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key b \major \tempo "Frenetico" 8 = 336
\time 4,3 7/16 \tuplet 3/2 { d'''8--\sfz r8 g''8-- } d''8-! g''16-. |
\time 3,3,3,2 11/8 fis''32-- f''32-- e''16-- dis''8-- d''8-- \tuplet 4/3 { dis''8( e''8 f''8 fis''8) } r8 g''8-> a''8 ais''16 b''16 cis'''8 |
\time 4/4 cis'''16--\ff fis'''16-- c'''16-- b''16-- ais''32-! g''32-. fis'''16-. dis'''8-! d'''16 cis''8 c''16 r8 b'16-. a'16-. |
\time 2/4 c''8\mp dis''8-. fis''16 a''8 c'''16 |
\time 4,4,2,3 13/16 \tuplet 5/4 { b''16 ais''16 gis''16 fis''16 e''16-^ } dis''16( cis''16) b'16-. ais'16-. r16 gis'16-- cis'16-> dis''16 gis'16 |
\time 9/8 ais''16\mp gis'8 f''16 e'8 fis'16( gis'16 ais'16 b'16 cis''16 dis''16) gis'16( fis''16 a'16 e''16 g'16 d''16) |
\time 4,3 7/16 \tuplet 6/4 { gis'16 a''16 cis''16 ais''16 dis''16 cis'''16 } a''16( d''8) |
\bar "||" \key a \major \time 3,3,3,2 11/8 cis''16 c''16 b'16 bes'16 a'16 gis'16-^ g'16( fis'8 e'16 dis'8) d'16-> cis'16 c'16 ais16 a'16 ais'16 gis'16( fis'8 dis'16) |
\time 4,4,2,3 13/16 c''8\ff\> a''8 fis''4-^ r16 a'16 fis''16-- g'8-- |
\time 9/8 gis'16->\fff\> a'16 ais'8 c''8 b'8 a'8 gis'8 c''8-> gis''8 cis'''8 |
\time 3,2,2 7/8 b''16(\ff a''16 gis''8 fis''8) \tuplet 7/4 { g''16 gis''16 a''16 ais''16 b''16 cis'''16 dis'''16-^ } f'''16-- fis'''16-- gis''8-- |
\time 9/8 a''16-.\mf\> b''8-. cis'''16-. d'''8-. cis'''8-- c'''8-- gis''8-- e''8.-- cis''8.-- |
\bar "||" \key b \major \time 3,2 5/8 c''16(\sfz\> gis'16 e'16 cis'16 c'16 gis'16) g'16-- f'8.-- |
\time 4,4,2,3 13/16 \tuplet 3/2 { d'8(\pp r8 ais8) } \tuplet 6/4 { fis'16( ais'16) d''16-. fis''16-. ais''16( d'''16) } fis'''8-^ gis''32( fis''32 e''16 dis''16) |
\time 6,3 9/16 b''16-> dis''16 fis'16 e'16 f'16 c''16 b'16 gis'16 fis'16 |
\time 4,4,3 11/16 \tuplet 7/4 { a'16\< b'16 c'''16 dis'''16 c'''16 b''16 a''16 } fis''8. dis'''16 cis''32-. c'''32-. b''16-. gis''16-. |
\time 4,4,2,3 13/16 \tuplet 3/2 { fis''8\ff e''8 dis''8 } cis''16-> b'16 ais'8 gis'16( fis'16) g'16( e'16 f'16) |
\time 4/4 \tuplet 5/4 { fis'16-. a'16-. r16 c'16-. cis'16-. } f'16-. e'32-> g'32 fis'16-- g'16-> \tuplet 5/4 { ais'16( d''16 r16 fis''16 ais''16) } d'''8-. fis'''16-. ais''16-. |
\time 2,2,3 7/8 \tuplet 5/4 { fis''16-> d''16 r16 ais'16 fis'16 } gis'4-^ e''4.-> | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 24" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 260 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key fis \major \tempo "Presto furioso" 8 = 260
\time 2,3 5/8 \tuplet 3/2 { g''8\mp fis'8 dis'8 } c'8-> ais8 b'8 |
\time 2,2,3 7/8 dis''4-> d''16( e''8.) dis''16 eis''16 d''16 fis''16 cis''16 g''16 |
\time 6/8 fis''16\< gis''16 eis''8 a''8 gis''8-- ais''8-- g''8-- |
\time 3,2,2 7/8 fis''32--\fp gis''32-- eis''16-- a''8-- e''8-- \tuplet 7/4 { dis''16 eis''16-> d''16-. fis''16-> cis''16-> g''16-- c''16 } cis'''16( fis''16) d'''16-. c''16-. |
\time 9/8 cis'''8--\> c''4-- \tuplet 4/3 { cis'8-- d'8-- e'8-- dis'8-- } e'8. dis''8. |
\time 3,3,3,2 11/8 cis'''16\ff c'''16 cis''16 eis'16 a'16 g''16 a''16-> ais''8 b''16 c'''8 cis'''16-- d'''16-- dis'''16-- e'''16-- eis'''16-- fis'''16-- \tuplet 5/4 { g''16( a'16) r16 g''16-. dis'''16-. } |
\time 6/8 b''8-> ais''8 a''8 c'''16-- cis'''16-- eis''16-- gis'16-- g''16-- ais'16-- |
\bar "||" \key ees \major \time 5/4 a'8.-> b'16 bes'16-- c''8-- a'16-- \tuplet 5/4 { aes'16-- g'16-- f'16-- ees'16-- d'16-- } b'8 bes16 aes'16-^ \tuplet 5/4 { bes''16 c'''16 d'''16 ees'''16 fis'''16 } |
\time 4,4,3 11/16 r16 b''16 c''16-> ges'16-> b32-- c'32-- fis'32-- aes'32-- ees''32-- a''32-- des''32-- f'32-- b16-- c'16-- ges'16-- |
\time 9/8 ees'16--\mp d'8-- b16-- a'8-- r8 bes'8 b'8-. bes'16( c''16) a'16-. des''16-. aes'16( d''16) |
\time 6,3 9/16 des''16 ees''16 c''16 e''16 b'16 f''16-^ ees'''8-- fis''16-- |
\bar "||" \key d \major \time 6/8 \tempo "Tempo I" gis''16-> ais'8 fis''16 ais'8 cis'4 ais'8 |
\time 3,3,3,2 11/8 ais'16( f''16 d''8 dis'8) r8 dis'8-. a'8-. r8 g'8-- e''8-- ees''16 cis'32 c'32 a'16 b''16-^ |
\time 3,2,2 7/8 cis'''16-!\ppp e'''16-- f'''16-! d'''16 cis'''16 b''16-> \tuplet 5/4 { ais''16( c'''16) r16 a''16-. cis'''16-. } d'''8.-. dis'''16-. |
\time 4/4 \tuplet 6/4 { e'''16-.\ppp\> f'''16-. g''16-. fis''16-. f''16-. e''16-. } \tuplet 3/2 { ees''8-> cis''8-. c''8-- } b'16-- cis''16-- ais'16-- d''16-- \tuplet 7/4 { cis''16( dis''16) c''16-. e''16-. b'16( f''16) ais'16-. } |
\bar "||" \key a \major \time 2,3 5/8 \tempo "Subito meno mosso" a'8.--\mf b'16-- gis'16-> f'16 e'16 ees'16 cis'16 c'16 |
\time 6/8 r8 d'8-! dis'8 r8 e'8-. f'8-. |
\time 9/8 c''8.-> fis'8. c''8. fis'8.-^ ais'8( cis''8 dis''8) |
\time 4,4,2,3 13/16 fis''16-> ais''16 cis'''8 \tuplet 7/4 { dis'''16 fis'''16-> bes''16 fis''16-> ees''16-. cis''16-. ais'16-> } gis'32-> g'32 gis'32 b32 cis'8. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 25" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 288 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key g \major \tempo "Presto furioso" 8 = 288
\time 6,3 9/16 gis'16(\fp g''16) fis'8-. f''8-. g'8 e''16 |
\time 3/8 d''16--\mf c''16-- b'8-- a'8-- |
\time 2,3 5/8 \tuplet 7/4 { g'16 fis'16 e'16 d'16 c'16 b16 a'16-^ } gis'4 f''8-^ |
\time 2/4 a'16-. f''16-. e'''8-. r16 cis'''16( c'''16 a''16) |
\time 3/4 e''16-> cis'''8-. dis'''16 e'''16-> des'''16 dis''8 e'8.( cis'16) |
\time 3,3,3,2 11/8 e'16(\ff g'8 a'16 c''8) gis'16 e'16 c'16 gis'16 c''16 e''16 gis''8-. c'''4-. b''8.-! cis'''16 |
\time 6/8 c'''16--\pp d'''16-- b''16-- ees'''16-- ais''16-- e'''16-- dis'''16 f'''16 d'''16 fis'''16 des'''16 g''16 |
\bar "||" \key fis \major \time 4,3 7/16 gis''32->\< ais''32 b''32 cis'''32 dis'''32 eis'''32 fis'''32 gis''32 fis''16( eis''16 dis''16) |
\time 6/8 r8 d'''8-.\fp b''8-. \tuplet 4/3 { d'''8( dis''8 fis''8 g'8) } |
\time 6,3 9/16 ais16\p cis'16 c''8 a'8-^ gis'32-- ais'32-- g'16-- b'16-- |
\time 4,4,3 11/16 gis'16-- eis'16-- d'16-- b16-- gis'8-> b'16 dis''16 e''8 fis''16 |
\bar "||" \key ces \major \time 4,4,2,3 13/16 \tempo "Stringendo" \tuplet 7/4 { a''16--\> des'''16 fes'''16-! ges'''16-. a''16-> ges''16-. fes''16-. } \tuplet 3/2 { des''8 r8 a'8 } \tuplet 3/2 { aes'16-> ges'16 fes'16 } ces''16-. f'16-. c''16-. |
\time 2,2,3 7/8 \tuplet 3/2 { ees'8\mp d''8 g'8 } \tuplet 5/4 { ges'16-- f'16-- ees'16-> d'16-. c'16-. } des'8 ees'8 fes'8-^ |
\time 3/4 ges'16 aes'8 bes'16 ces''16-. des''8.-. fes''32-- des'''32-- aes''16-- ces'''8-- |
\time 2,3 5/8 \tuplet 3/2 { d'''8 a''8 ces''8 } d''16 a''8 ces'''16 fes'''8-^ |
\time 4/4 ees'''8\p\> f'''16 d'''16 des'''16 ees'''16 c'''8 ces'''16 bes''16 g''8-^ bes'16-- des'8-- d'16-- |
\time 4,4,2,3 13/16 g'4->\mf g'16( bes16 ces'16 aes'16) r16 g''16 ges''16 aes''8 |
\time 3,2 5/8 g''16-> a''16 ges''16 bes''16 f''16 ces'''16 bes''4 | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 26" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 320 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key des \major \tempo "Tempestoso" 8 = 320
\time 9/8 a''32--\sfz\< d''32-- des'''16-- f''8-- e'''8-- ees''4-> a''8 ees''8.-> b''8.-> |
\time 3,3,3,2 11/8 bes'8.\ff\> a''8. \tuplet 4/3 { b'8( bes''8 e''8 f'''8) } d'''8-- ees''4-- d''16-. ees'8.-. |
\time 4/4 d''16-.\fff\> ees''8-. c''16-. des''16( d''16 ees''16 e''16) f''16( ges''16 g''8) aes''8( bes''16 b''16) |
\time 3/4 bes''16--\ppp aes''16-- f''16-- e''16-- d'''8-> b'16 a'16 b'8-> des'''16-. e'''16-! |
\time 6,3 9/16 bes''16(\pp ees''16 e'''16 f''16 e'''16 bes''16) ges'''16-> f''16 g''16 |
\time 3/8 des''8( aes''4) |
\time 6/8 r8 g''8-.\fp ges''8-. r8 d''8-- b'8-> |
\bar "||" \key aes \major \time 2,2,3 7/8 g'32-. ges'32-. d'16-. b8-. bes8-> c'16 a'16 aes'8.( bes'8.) |
\time 4,4,2,3 13/16 aes'8.\ff d''16 \tuplet 6/4 { ees''16 f''16 g''16 aes''16 bes''16 c'''16-^ } des'''16( ees'''16) f'''8 g''16 |
\time 2/4 << { r8 bes''16-- b''16-> a''8 g''8-> } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" \remove "Bar_number_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \key aes \major r8 bes'''16^\markup{\tiny \italic "altiss. ad lib."} b'''16 a'''8 g'''8 } >> |
\time 9/8 \tuplet 4/3 { a''8(\> b''8 d'''8 ges'''8) } a''16 ges''16-> d''16-- b'16-. a'16-. fis'16-! aes'32-> b'32 d''16 e''8 fis''8 |
\time 4,4,2,3 13/16 aes''8(\f b''8) \tuplet 3/2 { c'''8( des''8 c'''8) } ees''32 a''32 d''32 b''32-^ f''16-- ees'''16-- a''16-- |
\time 4,4,3 11/16 \tuplet 3/2 { ees'''8 aes''8 bes''8-^ } \tuplet 3/2 { des''8-> r8 b''8 } c''32( a'32 f''16 des'''16) |
\time 9/8 bes''32-> b'32 bes'16 g''8 e''8 d'''16-> bes''16 d''16 ees'16 f'16 g'16 r8 aes'8 a'8-^ |
\time 2/4 bes'16\ff b'8 c''16-^ \tuplet 3/2 { des''8 r8 ees''8 } |
\time 4,3 7/16 ges'16-.\< f''16-. d'''8-. fis''8.-! |
\time 6,3 9/16 \tuplet 4/3 { f'''8-.\sfz d'''8-. des'''8-. bes''8-. } g''8.-- | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 27" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 240 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key b \major \tempo "Feroce" 8 = 240
\time 4,4,3 11/16 d''16\ppp\> dis''32 e''32 f''16 fis''16 f''32( g''32 e''32 gis''32 dis''32 a''32 d''32 ais''32) a''8( b''16) |
\time 5/4 r8 ais''16->\mp c'''16 b''8-- gis''16 c''16-! e'16( fis'8 g'16) f''16 a'16 fis'8-^ r16 dis'16 cis''16 ais'16 |
\time 9/8 r8 g'8-.\> f'8-. dis''32-. d'''32-. c''16-. ais'8-. gis''8-. fis'''16 b''16 cis'''16 dis''16 b''16 f''16-^ |
\time 3/8 c'''16-.\p f''16-. e'''16-. g''16-. dis'''16-. fis''16-. |
\time 3,2 5/16 g'16(\fp a'16 b16) \tuplet 3/2 { d'16( f'16 g'16) } |
\time 3/4 fis'16 g''16 ais'16 e''16-^ \tuplet 6/4 { g'16 dis''16 cis'16 ais'16 cis'16 g'16 } gis'8.-. b'16-. |
\bar "||" \key ees \major \time 3,2 5/16 d'16-- ees'16-- d''16-- e'16( aes'16) |
\time 4,4,2,3 13/16 \tuplet 3/2 { e''8-- g'8-- f''8-- } g''16 aes''32 a''32 bes''16 b''16-^ des'''8-> d'''8-> ees'''16-! |
\time 3,3,3,2 11/8 b''16->\ff aes''16 ees''16 c'''16 f'''16 cis'''16 b''8 aes''8 ees''8-^ d''16-. des''8-. c''16-. b'8-. \tuplet 5/4 { bes'16-> a'16 aes'16 g'16 f'16 } |
\time 3/4 \tuplet 3/2 { e'8-. d'8-. cis'8-. } \tuplet 5/4 { c'16( b16 bes16 a'16 b'16) } a'16 f'8.-^ |
\time 6,3 9/16 g'16-.\sfz\< aes'16-! bes'16-- c''16-! d''16 ees''16-. f''16-> g''8 |
\time 4,4,3 11/16 \tuplet 3/2 { fis''8--\f aes''8-- f''8-- } \tuplet 6/4 { e''16-> ges''16 ees''16 g''16 d''16 aes''16 } g''16-. a''16-. fis''16-. |
\time 3/4 \tuplet 3/2 { aes''8\f\< r8 bes''8 } r16 cis'''16 ees'''16 c'''16 a''16-> aes''8-! f'''16-. |
\bar "||" \key ees \major \time 4/4 \tempo "Tempo I" e'''32-.\mp d''32-. aes''32-. fis'32-. c''32-. b32-. aes'32-. bes32-. \tuplet 5/4 { c'16 d'16 ees'16 f'16 g'16-^ } aes'16 bes'16 c''8 d''8.-! ees''16-- |
\time 2,3 5/8 r16 d''16 c''16 bes'16-^ a'32 b'32 aes'16 c''8 g'8-^ |
\time 6/8 \tuplet 4/3 { fis'8-> aes'8 f'8 a'8 } fis'32( d''32) des'''16-. a''8-. bes''8 |
\time 3,3,3,2 11/8 cis''16(\mp c'''16) e''8-. d'''8-. des'''16-- a''16-- f''16-- des''16-- a'16-- f'16-- d'16 des''16 g'16 aes'16 ges''16 c''16 d'4-! | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 28" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 260 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key b \major \tempo "Prestissimo" 8 = 260
\time 9/8 r8 gis'8-.\f\< g'8-. \tuplet 4/3 { fis'8-> f'8-> e'8-- dis'8-- } cis'8. b8. |
\time 5/4 \tuplet 7/4 { c''16(\mf\< dis''16 f''16 g''16 ais''16 b''16 ais''16) } a'16 gis'32 fis''32 e''16 d''16-^ a'32( g'32 e'16 d'8) \tuplet 5/4 { e'16( f'16 r16 gis'16 a'16) } c''4 |
\time 4,4,2,3 13/16 \tuplet 6/4 { b'16--\fp\< ais'16-- gis'16-- fis'16-- e'16-- dis'16-- } f'16-- gis'16 ais'16-. cis''16 r16 f''16-> gis''16 ais''8-^ |
\time 3,3,3,2 11/8 gis''8-.\pp g''8 fis''8-- f''16 dis''8 d''16 cis''8-^ dis''16 e''8 fis''16 gis''8-^ cis''16-. fis''16-> c'''8-> |
\time 3/4 cis'''8-!\> d'''16-- dis'''16-- e'''16( f'''8.) fis'''16 g''16 fis''16 f''16 |
\time 9/8 e''8--\mf dis''8-- cis''8-- b16( g'16 cis'16 g'16 gis'16 ais''16) \tuplet 4/3 { b'8-. ais''8-. cis''8-. ais''8-. } |
\bar "||" \key a \major \time 4,3 7/16 g''32 f''32 d'''32 cis'''32 ais''32 a''32 g''32 fis'32-^ f''16-- dis''16-- c'''16-- |
\time 5/4 a''16-> fis'16 dis'16 e'16 fis'16-- gis'16-- ais'16-- c''16-- cis''16-. d''16-. dis''8-. f''32-- fis''32-- g''32-- gis''32-- a''32-- ais''32-- c'''32-- cis'''32-- d''16-> f''8 g''16-> |
\time 2,3 5/8 f'''16--\mp gis''8-- ais'16-- c'16( b16) c'16-. dis'16-. fis'16( d''16) |
\time 4/4 \tuplet 3/2 { cis''8-- a''8-- c'''8-- } bes''16-> a''8 gis''16 g''16 fis''8 f''16 \tuplet 3/2 { e''8 d''8 c''8-^ } |
\time 9/8 b'8 a'8 gis'8-^ g'16-> fis'8 f'16 e'8 ees'32 cis'32 c'16 b8 a'8 |
\time 2/4 \tuplet 3/2 { gis'8\mf bes'8 g'8-^ } fis'32-> gis'32 f'32 a'32 e'32 bes'32 dis'32 b'32 |
\bar "||" \key aes \major \time 4,3 7/16 bes'8.--\> c''16-- bes''8-! g''16 |
\time 6,3 9/16 e''16(\sfz d''16 b'16 a'16 g'16 f'16) e'16 d''8 |
\time 9/8 des''8.\mp c''8.-^ des'''8( d''8 bes''8) aes'16 ees''16 a'16 bes''16 ees''16 d'''16 |
\time 2,3 5/8 f''32-> g''32-> e'32-! des'32-! bes'32-- aes'32 ges'32-. f'32-! des''4. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 29" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 300 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key cis \major \tempo "Volante" 8 = 300
\time 2,3 5/8 ais''8->\mp cis''8 \tuplet 4/3 { dis''8-> eis''8 fis''8 a''8 } |
\time 4/4 fis''8( eis'''16 e'''16) r16 cis'''16-. ais''16-. g''16-. fis''16( gis''16) eis''16-. a''16-. \tuplet 3/2 { b''8( r8 cis'''8) } |
\time 9/8 \tuplet 4/3 { bis''8( d'''8) b''8-. dis'''8-. } d'''8 bis''4 a'8.-. gis''8.-. |
\time 3,3,3,2 11/8 eis''32( e''32) d'16-. bis8-. a'8 gis'16-. fis'8-. eis'16-. dis'8-. cis'8.-! bis8.-- r16 ais16-- gis'16-- ais'16-- |
\time 3/4 cis'16-- d'16-- e'16-- eis'16-- \tuplet 5/4 { g'16 ais16 cis'16 d'16 e'16 } dis'16-. d'16-. cis'16-. bis16-. |
\time 3,2,2 7/8 ais8.->\> a'8. \tuplet 5/4 { b'16-- cis''16-- dis''16-- eis''16-- fis''16-- } g''32-> b''32 d'''32 fis'''32 g''32 fis''32 d''32 b'32 |
\bar "||" \key f \major \time 2/4 \tuplet 3/2 { fis''8-.\fp r8 g''8-. } \tuplet 6/4 { gis''16( a''16 bes''16 b''16 c'''16 d'''16) } |
\time 5/4 b''16( g''8 dis''16) \tuplet 5/4 { e''16-> f''16 fis''16 gis''16 b''16 } bes''16( c'''16 a''8) gis''8.-. bes''16-. a''32-> b''32 aes''16 c'''8 |
\time 4,4,3 11/16 d'''4\> \tuplet 3/2 { g''8 d''8 c''8 } d'8 bes'16 |
\time 3,2 5/8 \tuplet 4/3 { cis''8\p e''8 g''8 bes''8 } \tuplet 7/4 { a''16( b''16 gis''16 c'''16 g''16 des'''16 fis''16) } |
\time 2,2,3 7/8 \tuplet 7/4 { f''16(\fff g''16) e''16-. aes''16-. dis''16( a''16) d''16-. } des''16( ees''16 c''8) a'8-- ges'8-- dis'8-- |
\time 6,3 9/16 ges'16( gis'16) b'16-. cis'16-. dis'16( e'16) f'16 fis'16 aes'16-^ |
\bar "||" \key e \major \time 2,3 5/8 g''16\fff ais''8. cis'''16( bes''8) cis''16-. b''8-. |
\time 3,2 5/16 cis''16->\ff c''16 b'16 gis''16 e'''16 |
dis'''16\ppp d'''16 cis'''16-^ d''8 |
\time 4,4,2,3 13/16 cis'''8 dis''16 c'''16 f''8-> fis'''16 ais''16 e'''8 dis'''8.-> |
\time 6/8 \tuplet 4/3 { e'''8( d'''8 bes''8 c''8) } dis''4.-> | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 30" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 288 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key bes \major \tempo "Tempestoso" 8 = 288
\time 4,4,3 11/16 \tuplet 6/4 { f''16-.\f des''16-. a'16-! f'16-- cis'16-! a'16 } \tuplet 3/2 { cis''8 r8 f''8 } a''16( cis'''16 f'''16) |
\time 3,2 5/16 ees'''16-.\> d'''16-. c'''16-. \tuplet 3/2 { bes''16 a''16 g''16-^ } |
\time 4,3 7/16 b'8\pp\> aes''16 f''16 d''32-. f''32-! gis'16-. f''16-! |
\time 3,2 5/16 gis''8-.\ppp\< f'''16-. b''8 |
\time 3,2,2 7/8 a''16\mf ees''16 d'''8 cis''8 d'''16-. g''16-> f'''16-! fis''16-. gis'16( a'16 bes16 a'16) |
\bar "||" \key bes \major \time 3,2 5/8 \tuplet 4/3 { bes'8( c'8 a'8 g''8) } r16 b'16-. ges''16-. gis'16-. |
\time 2,3 5/8 \tuplet 6/4 { e''16 gis'16 ges''16 b'16 ges''16 f'16-^ } d''8 ees'8 c'8 |
\time 3,2,2 7/8 aes'4 b8 aes'8 g''16 fis'''16 \tuplet 5/4 { d'''16 b''16 r16 g''16 fis''16-^ } |
\time 3,2 5/16 d''16-.\ff b'16-. g'16-. fis'8 |
\time 3/8 e''16 des''16 e'8-. f'8-! |
\bar "||" \key cis \major \time 3,2,2 7/8 \tempo "Subito meno mosso" fis'16-> cis'16 e'8 gis'8 \tuplet 3/2 { fis'8-! cis''8-> e'8 } fis'16( cis'16) e'16-. gis'16-. |
\time 4,4,3 11/16 eis'4-. \tuplet 7/4 { g'16 a'16 b16 cis'16 e''16 fis'16 g'16-^ } b'16( d''16 dis''16) |
\time 6,3 9/16 b''16->\> d''16 dis'8 ais8 b16 d'8 |
\time 4/4 cis'16->\f\< b8. a'16-> b'16 cis''16 e''16 fis'''16-> e''32 bis''32 dis''16 a''16 bis'16-- g''8-- bis'16-- |
\time 2/4 g''32\pp gis'32 ais''16 e''8-^ \tuplet 6/4 { fis''16-! g''16-! gis''16-. ais''16-> b''16 bis''16-! } |
\time 2,2,3 7/8 cis'''8--\fff e'''16-- g''16-- e''16-> cis''16 b'16 a'16 gis'32( fis'32) eis'16-. dis'8-. cis'8 |
\time 3,3,3,2 11/8 d'16--\< e'16-- eis'16-- fis'16-- g'16-- gis'16-- a'32-- ais'32-- b'16-- bis'8-- cis''8-- \tuplet 4/3 { d''8( e''8 eis''8 fis''8) } e'''16 d'''16 cis''16 ais''16-^ |
\time 4,4,3 11/16 \tuplet 5/4 { bis'16-.\p b'16 d'16-. ais'16-- fis''16-! } \tuplet 3/2 { bis''8-. b''8-. d''8-. } dis''8.-> | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 31" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 352 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key c \major \tempo "Leggierissimo" 8 = 352
\time 2/4 \tuplet 5/4 { a'16--\fff g''16-- f'16-- d''16-- f'16-- } e'32 d'32 c'32 b32 a'32 b'32 c''32 d''32-^ |
\time 3,2,2 7/8 c''16(\mp a'16 b''8 cis''8) b'32-- a''32-- ais''32-- ees'''32-- c'''32-- d''32-- e''32-- cis''32-- b'8.-- a''16-- |
\time 4,3 7/16 g''8 f''8-^ des''32( b'32) g'16-. f'16-. |
\time 6,3 9/16 des'32\> b32 g'16 b'8 cis''8-^ c''16-- b'16-- a'16-- |
\time 2,2,3 7/8 g'8\ff f'8 e'16( d'16) c'16-. b16-. gis'8 b'8 dis'8-^ |
\time 3/4 \tuplet 3/2 { g'8(\ff\> gis'8 e''8) } \tuplet 5/4 { f''16-. g'16-. e'16-. fis'16-. gis'16-. } \tuplet 7/4 { a'16 gis'16 e''16 des'''16 c'''16 b''16 dis''16-^ } |
\bar "||" \key f \major \time 2/4 \tuplet 3/2 { d''8-.\mf e''8-. cis''8-. } \tuplet 5/4 { c''16-> d''16-> r16 b'16-- ees''16-> } |
\time 3,3,3,2 11/8 d''16 e''16 des''16 f''16 c''16 fis''16-^ b'16 a''16 c''8 g''8-^ gis'16( e''16) f'16-. e''16-. f'16( cis''16) f'16-- ees''16-- e'8-- |
\time 2/4 fis'32-- gis'32-- b'32-- cis'32-- bes'32-- ges''32-- g''32-- a'32-- \tuplet 7/4 { aes''16 g''16 b'16 bes'16 g'16 e'16 f'16 } |
\time 3,2 5/16 e'8\mp ees'16 \tuplet 3/2 { d'16( c'16 bes16) } |
\time 9/8 a'8->\< bes'4 c''8-. d''4-. b''16-> c''16-. g''8 bes'8-. |
\bar "||" \key bes \major \time 3,2 5/16 a'32\mp b'32 aes'16 c''16-^ bes'8 |
\time 2/4 g'16-!\mf\< f'8.-- des''8.( fis'16) |
\time 9/8 e'8->\f cis''4 ees'8-- a'8-- bes8-- a'16 d''16 e''8 g''8 |
\time 3,3,3,2 11/8 \tuplet 4/3 { a''8( d'''8 e'''8 g''8) } gis'32( g''32 bes'16 d'8 ees'8) d'16-> e'16 des'8 f'8 e'32 ges'32 ees'32 g'32 d'32 aes'32 cis'32 a'32-^ |
\time 5/4 \tuplet 5/4 { aes''16-- bes'16-- e''16-- fis'16-- ees''16-- } \tuplet 3/2 { f'8-. r8 fis''8-. } ees''16( d'''8.) \tuplet 5/4 { des'''16( c'''16 b''16 bes''16 a''16) } \tuplet 5/4 { g''16-> f''16 ees''16 des''16 c''16 } |
\time 2,2,3 7/8 cis''16-- ees''8-- e''16-- \tuplet 3/2 { fis''8-> r8 g''8 } aes''8 a''8 bes''8-^ |
\time 2/4 r16 d'''16-> g''16 bes''16 \tuplet 7/4 { d''16-- g'16-! bes'16-- f''16 ees'''16-> ges'''16-> b''16 } |
\time 3,2 5/8 d''8-- g''8-- bes''8-- cis''4 | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 32" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 320 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key des \major \tempo "Inquieto" 8 = 320
\time 3/4 \tuplet 5/4 { d'16->\sfz des''16-- r16 f'16-> b'16 } \tuplet 3/2 { d'8-. des''8-. ees'8-. } des''16-> ges'32 aes''32 d''16 bes''16 |
\time 6/8 c'''32-> des'''32 ees'''16 f'''8 ges'''8 r8 e'''8 b''8 |
\time 5/4 \tuplet 7/4 { d'''16(\f ees'''16) ges'''16-. bes''16-. ges''16( ees''16) d''16-. } ees''8( e''8) f''16( g''16 a''16 bes''16) d''16( f'32 des''32 e''16 d'''16) r16 c'''16-> d''16 des'''16 |
\time 6/8 e'''16( d''16) b'8-. bes8-. aes'16 bes'16 des''8 e''8 |
\time 5/4 ees''8-> des'''8-. a''16( c''16) aes''16-. g''16-. \tuplet 3/2 { f'''8 r8 aes''8 } \tuplet 3/2 { ges''8-- r8 f''8-- } \tuplet 5/4 { ees''16 des''16-> c''16-- bes'16-! aes'16-! } |
\bar "||" \key cis \major \time 6/8 fis'16( eis'16) dis'16-. cis'16-. bis16( ais16) a'16 b'16 gis'16 bis'16 g'16 cis''16 |
\time 3,2 5/8 \tuplet 4/3 { dis''8( eis''8 g''8 ais''8) } ais''8-- gis''16-- cis'''16-- |
\time 4,4,2,3 13/16 ais''16(\mp gis''16) cis''16-. b'16-. \tuplet 5/4 { a''16-> bis''16 ais''16 dis'''16 eis''16 } gis''16 b''16 gis''16-- a''16-! ais''16-> |
\time 3/8 cis'''16( d''16) e'16-. gis'16-. bis16( dis'16) |
\time 4/4 \tuplet 6/4 { d''16-- e'16-- eis'16-- d'16-- dis'16-- e'16-- } r16 eis'16( a'16 b'16) dis''8.( eis''16) dis''16( cis''16) bis'16-. ais'16-. |
\time 3,2 5/16 gis'8( fis'16) eis'8-> |
\bar "||" \key ees \major \time 3,2 5/8 r8 g'8-- aes'8-- bes'16-> c''16 d''8 |
\time 3,2 5/16 ees''32->\> f''32 g''16 aes''16 b''8-- |
\time 2/4 des'''8(\p c'''16 b''16) a''16 g''8. |
\time 4/4 f''16\ppp e''16 ees''8 des''16( c''16 b'16 bes'16) \tuplet 7/4 { g'16-. aes'16-. g'16-. aes'16-. bes16-. c'16-. cis'16-. } a'16( aes''8.) |
\time 2/4 r8 g''16(\> ees'''16) d'''8-. c'''16 b''16 |
\time 3,3,3,2 11/8 a''8.-.\p aes''8.-. bes''16-> c'''8 d'''16 ees'''8 f'''8-. g''8-. f''8-. e''4-> | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 33" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 276 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key aes \major \tempo "Con fuoco" 8 = 276
\time 2,3 5/8 d''8\fp\< f'''8-^ ees'''8-> b''8 aes''8 |
\time 6/8 r8 ges''8-!\mp ees''8-- e''4( f''8) |
\time 2,2,3 7/8 \tuplet 6/4 { g'16->\> bes16 b16-. d'16-! f'16-. fis'16 } g'16-- aes'16-- bes'8-- des''16( d''16 e''8 fis''8) |
\time 3/8 g''8\sfz bes'8 b''8-> |
\time 3,2 5/8 c'''8.-.\mp\> des'''8.-. ees'''16( f'''16 aes''16 g''16) |
\bar "||" \key a \major \time 9/8 fis''32-.\fff\> f''32-- e''16-! ees''8 d''8-> \tuplet 4/3 { e''8-- gis''8-- c'''8-- e'''8-- } r8 gis''8( e''8) |
\time 4,4,3 11/16 \tuplet 5/4 { b'16\f fis'16 r16 dis''16 ais''16 } \tuplet 3/2 { b'8 fis'8 dis''8-^ } b'8. |
\time 4,4,2,3 13/16 bes'16(\ppp\< gis'16 f'8) fis'16-. f''8-. fis''16-. f'''8 gis''8-! e'''16-> |
\time 3,3,3,2 11/8 gis''16-.\mf\> e'''8-. ais''16-. cis'''8-. r8 gis''8-- e'''8-- g''16( e''16 cis''16 b'16 a'16 g'16) \tuplet 6/4 { e'16-> cis'16 b16 a'16 b'16 cis''16 } |
c''8\fff\< a'8 fis'8 r8 ees''8-> cis''8 d''32 e''32 fis''16-! gis''8-> a''8-- b''16-. cis'''8-. d'''16-. |
\time 3/4 g''32\fff b''32 fis'''32 gis''32 ais'32 cis''32 c'''32 e'''32-^ \tuplet 5/4 { g''16-. b'16-. fis'16-. gis'16-. ais16-. } gis'8 c''8 |
\bar "||" \key ees \major \time 3/8 << { d''16( ees''16) e''16-. f''16-. fis''16( g''16) } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" \remove "Bar_number_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \key ees \major d'''16^\markup{\tiny \italic "altiss. ad lib."} ees'''16 e'''16 f'''16 ges'''16 g'''16 } >> |
\time 4,4,3 11/16 aes''4\< a''16 bes''8 b''16 des'''16-> d'''8 |
\time 6/8 c'''16(\fff bes''16) aes''16-. g''16-. f''16( ees''16) f''16( g''16 a''16 c'''16 ees'''16 f'''16) |
\time 3,2 5/16 b''16 e''16 d'''16-^ \tuplet 3/2 { g''16 des'''16 ees''16-^ } |
\time 2,2,3 7/8 r16 des'''16 e''16 bes''16-^ c'''16( des''16 aes'16 fis'16) c''8 des''8 aes'8 |
\time 5/4 c''16 cis'16 aes'16 fis''16 \tuplet 3/2 { g''8-> aes''8 bes''8 } c'''32( d'''32) ees'''32-. f'''32-. g''32( f''32) ees''32-. d''32-. c''16-. bes'8-. aes'16-. des''8( f'16 b'16) |
\time 3,2 5/8 bes'16(\ff g'16 f'16 c'16 bes16 g'16) bes'4-> | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 34" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 352 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key des \major \tempo "Con fuoco" 8 = 352
\time 5/4 \tuplet 5/4 { ees'16(\pp f'16 d'16 ges'16 des'16) } r8 c'16-> d'16 des'4 c'16 bes16 aes'8 bes'32-> c''32 des''32 ees''32 f''32 ges''32 aes''32 bes''32 |
\time 2,2,3 7/8 bes''16->\fp d'''8. \tuplet 5/4 { bes''16( d''16 g'16 c''16 ges''16) } ges''8.-> b''8. |
\time 2,3 5/8 r16 ges''16-.\ppp b''16-. a''16-. ges''8.-- b''8.-- |
\time 6,3 9/16 r8 ees''8 c'''8 f''16 d'''16 c''16 |
\time 4,3 7/16 << { des''16-.\p d''32-! ees''32 e''16-! f''16 g''8-- aes''16-! } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" \remove "Bar_number_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \key des \major des'''16^\markup{\tiny \italic "altiss. ad lib."} d'''32 ees'''32 e'''16 f'''16 g'''8 aes'''16 } >> |
\time 3/4 \tuplet 5/4 { bes''16\sfz des'''16 ees'''16 e''16 ges'16 } r16 aes'16 a'16 b'16 \tuplet 3/2 { des''8 r8 e'8 } |
\time 3,3,3,2 11/8 f'32-. a'32-. f''16-. g'8-. ges'8-. f''8 e'''8 ges''8-^ f'''16 ges''16 e'''16 g''16 ges'''16 ees'''16 \tuplet 5/4 { b''16 c''16-> des'''16 b'16-. a''16-- } |
\bar "||" \key ees \major \time 4,3 7/16 ees''16\< a''16 b'16 cis'''16 d''32-. b''32-. a'16-. g''16-. |
\time 4/4 \tuplet 6/4 { ges''16\ff aes''16 f''16 a''16 e''16 bes''16-^ } a''16( g''16 ges''16 f''16) ees''16 des''16-> c''16-! bes'16-- \tuplet 6/4 { a'16-> aes'16-- g'16-> ges'16 f'16-> ees'16-! } |
\time 2,2,3 7/8 \tuplet 6/4 { d'16\pp c'16 bes16 aes'16 bes'16 c''16-^ } \tuplet 5/4 { d''16-- ees''16-- f''16-- g''16-- aes''16-- } bes'16( des'16) e''16-. f'16-. fis''16( g''16) |
\tuplet 7/4 { bes''16->\< b'16-> c''16-- d''16-> f''16-> fis'16 a'16-> } \tuplet 3/2 { aes'8( g'8 ees'8) } fis'16-- des''16-- b8-- f'8-- |
\time 5/4 g'16(\f des''32 b32 des''16 d'16) c''16( fis'16 f''16 bes'16) aes'16( f'32) ees'32-. d'16-. b16 bes4 d'16-- c''16-- a''16-- b'16-- |
\time 4/4 d''8--\p c'''8-- d''32-- c''32-- a'32-- b'32-- g''32-- aes''32-- des'''32-- bes''32-- \tuplet 5/4 { a''16-> b''16 aes''16 c'''16 g''16 } fis''16( aes''8 f''16) |
\bar "||" \key fis \major \time 9/8 << { e''16-> fis''16-- dis''16-> g''16-! d''16-! gis''16 g''8.( a''8.) gis''16 ais''8 g''16 b''8 } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" \remove "Bar_number_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \key fis \major e'''16^\markup{\tiny \italic "altiss. ad lib."} fis'''16 dis'''16 g'''16 d'''16 gis'''16 g'''8. a'''8. gis'''16 ais'''8 g'''16 b'''8 } >> |
\time 4/4 ais''16->\< c'''16-! a''16 cis'''16-- \tuplet 7/4 { c'''16-! ais''16 a''16-. gis''16-> fis'16-. dis'16 e'16 } \tuplet 5/4 { eis'16 fis'16 r16 gis'16 ais'16 } a'8.-- b'16-- |
\time 2,2,3 7/8 gis''16\mf e'''8. eis'''16-. d'''8.-. r8 cis'''8( dis'''8) |
\time 3/4 \tuplet 6/4 { d'''16 e'''16 cis'''16 eis'''16 c'''16 fis'''16 } dis'''32-> ais''32-. cis''32-! eis''32-- d'''32-> e''32 fis''32-- g'32-. a'16( ais''16 b''16 cis'''16) |
\time 4,3 7/16 r16 ais''16-.\> a''16-> fis''16-! cis'''16-. dis''8-. |
\time 9/8 d'32(\p cis'32 b16 a'8 c'''8) cis'''4 dis'''8-> eis'''4. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 35" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 336 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key e \major \tempo "Agitato" 8 = 336
\time 3,3,3,2 11/8 r8 dis'8\pp f'8 e'8.-> fis'8.-. g'8 ais'8 cis''8 \tuplet 5/4 { b16 bes'16 e'16 fis''16 ais'16 } |
\time 4,4,3 11/16 gis'8(\ppp f'8) \tuplet 5/4 { dis'16-- cis''16-- ais'16-- gis''16-- f''16-- } dis''16( d''16 c''16) |
\time 2/4 cis''16-. e''16-. fis''8-. gis''16-. a''8-. ais''16-. |
\time 3,2,2 7/8 b''16-!\> cis'''8-. dis'''16-- e'''8 r16 gis''16 fis'''16 b''16 ais''32-> gis''32 fis''32 f''32 e''32 d''32 cis''32 c''32 |
\time 9/8 b'16(\mp ais'16) a'16-. gis'16-. g'16( f'16) gis'8( c''8 e''8) gis''4 c'''8-^ |
\time 5/4 \tuplet 6/4 { cis'''16-. d'''16-. dis'''16-. e'''16-. f'''16-. g''16-. } fis''16-- f''16-- e''16-! dis''16 \tuplet 3/2 { d''8( cis''8 c''8) } d'32 dis'32 fis''16 a''8 gis''16 g''32 e''32 d'''16 cis'''16-^ |
\time 6/8 bes''16-> a'16 g'16 e'16 d''16 c'16 fis'16-> b'16 ais''8 f'''8 |
\bar "||" \key ces \major \time 4/4 \tuplet 7/4 { ges''16( ces'''16 bes''16 f'''16 ees'''16 fes'''16 d'''16) } ges''8-> ces'''16 bes''16 a'8.-. aes''16-. ces''32-. g''32-> d''32-! bes''32 ees'''32-. fes'''32 aes''32-> f''32-! |
\time 3,2 5/16 ces'''8.-^ ces'''32-. g''32-. d'''32-. bes''32-. |
\time 2,2,3 7/8 \tuplet 5/4 { aes''16-> ges''16 fes''16 d''16 ces''16 } bes'16( c''16 a'16 des''16) r8 ees'''8-> des''8 |
\time 4,4,2,3 13/16 \tuplet 7/4 { c''16-. a'16-> ges'16-. ees'16-! c'16-! a'16-- c''16-> } \tuplet 3/2 { ees''8( ges''8 a''8) } c'''16-> ees'''16 f'''16 ges'''16 f'''16 |
\time 4,3 7/16 \tuplet 3/2 { fes'''8\mf des'''8 ces'''8 } c'''8( g''16) |
\bar "||" \key f \major \time 2/4 c'''16 g''16 a''16 d'''16 c'''16( g''8.) |
\time 9/8 r8 e''8 c''8 aes'16( e'16 c'8 gis'8) \tuplet 4/3 { c''8( e''8 gis''8 c'''8) } |
\time 3/4 b''4-^\> \tuplet 5/4 { c'''16 cis'''16 dis'''16 ges'''16 g''16-^ } f''8 dis''16 d'''16-^ |
\time 6/8 b''8.--\ppp bes''8.-- a''4.-> | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 36" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 288 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key d \major \tempo "Frenetico" 8 = 288
\time 6/8 b'32(\ppp\> fis''32) d'''16-. c'''8-. gis''8 b''16-- fis'''8-> d'''16-- c'''8-- |
\time 3/4 b''16\mf\> fis''16 d''16 c'''16-^ \tuplet 3/2 { b''8-! a''8-> g''8-! } \tuplet 3/2 { fis''8( e''8 d''8) } |
\time 6,3 9/16 e'16-.\p fis''16-. c''16-. g''16-. c''16-. a''16-. b'8-> a''16 |
\time 2,3 5/8 g'32\sfz a''32 gis'32 f''32 b'32 c'''32 d''32 e'''32 dis'''16( f'''16 d'''16 fis'''16 cis'''16 g''16) |
\time 6,3 9/16 r8 fis''8->\> gis''8-! g''16 a''16 fis''16-^ |
\bar "||" \key c \major \time 4/4 a'16\p fis''16 a''16 b'16 \tuplet 7/4 { ais'16 c'16 b16 cis'16 c'16 a'16 fis'16-^ } gis'16( a''16) c'''16-. a''16-. g''16 e'8. |
\time 6/8 \tuplet 4/3 { d'8\ff\> c'8 b8 a'8-^ } b'16-> c''16 d''8 e''8 |
\time 4,4,3 11/16 d''16-.\f c''32-. b'32-. a'16-. g'16-. r8 ais16-- dis'16-- ges'8 f'16-^ |
\time 3,2,2 7/8 e'32--\mp d'32-- c'16-- b8-- a'8-- \tuplet 3/2 { b'8 cis'''8 d'''8 } f'''32 g''32 e''32 d''32 c''32 b32 bes'32 a'32 |
\time 3,2 5/16 cis'16 dis'16 c''16 cis''32( dis''32 c'''32 gis''32) |
\time 4,3 7/16 des'''16\pp dis''32 c'''32 aes''16 f''16-^ g''16-- a''8-- |
\bar "||" \key f \major \time 3,2 5/16 bes''8( c'''16) b''16-. bes''16-. |
\time 4/4 aes''32 ges''32 f''32 e''32 d''32 des''32 c''32 b'32-^ bes'8 c''16 a'16-^ \tuplet 3/2 { aes'8 bes'8 g'8 } r8 fis'16-> gis'16 |
\time 4,4,2,3 13/16 bes'16-.\> c''8.-. cis''16 d''8 dis''16 f''8-. e''8-- d''16-- |
\time 3/4 cis''16\mp ees''16 c''8-^ b'16 des''16 bes'16 d''16 c''16-> f'16 des''16 dis'16 |
\time 2/4 fis'16 bes'16 b'8-^ bes'4 | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 37" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 288 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key ges \major \tempo "Inquieto" 8 = 288
\time 4,4,2,3 13/16 \tuplet 3/2 { a'8-.\mp c'8-- e'8-> } g'16( e'16 g'16 ces'16) aes'32( g'32 aes'32 e''32) ges'16( bes16 des'16) |
\time 3,2 5/8 c'8. d'8. des'32-. ees'32-. c'32-. e'32-. ces'32-. f'32-. bes32-. ges'32-. |
\time 9/8 bes32->\> a'32 bes16 ces'8 g'8 e'8 aes'8 ces''8 a''8-> aes''8 a''8 |
\time 2/4 bes'16(\f a'16) aes''16-. c''16-. \tuplet 5/4 { bes'16 a''16-> aes''16-> c''16-> f''16-! } |
\time 9/8 bes'32\f a''32 aes''16 c''8 f'8 ees'4( des'8) e''16 ges''16 aes''16 a''16 bes''16 g'16 |
\time 3,3,3,2 11/8 f'16-. ees'8-. des'16-. bes'8-. aes'8 g'8 ges'8 e'16-- c'16-- bes16-- ges'16-- bes'16-- c''16-- e''16( ges''16) bes''16-. c'''16-. |
\time 6,3 9/16 ees'''16\p f'''16 a''16 f''16 ees''16 ces''16 a'8.-^ |
\time 2,3 5/8 f'8 ees'16-- ces'16 c'16( des'16 ees'16 e'16 ges'16 aes'16) |
\bar "||" \key e \major \time 6/8 a'16\< ais'16 b'16 c''16 cis''16 d''16-^ e'''8 g''8 e'''8 |
\time 4/4 \tuplet 3/2 { d''8(\fp ais''8 d''8) } cis''16( b'32) a'32-. gis'16-. fis'16 e'8( dis'8) cis'8( b16 a'16) |
\time 9/8 bes'8.( g'8.) ais16( g'16) fis''16-. a'16-. f'16( c'16) ais16( g'16) fis''16-. a'16-. f'16( c''16) |
\time 6/8 dis'32--\< cis''32-- d'16-- gis'8-- b8-- gis'16-> cis'8 c''16 f'8 |
\time 2,2,3 7/8 fis''16(\pp a'16) g''16-. c''16-. c''16-. b''32-. e'''32-. a''16-. cis''16-. r8 c'''8( b''8) |
\bar "||" \key cis \major \time 5/4 bis'16\< gis''16 b'16 eis''16-^ e''8 fis''16-- dis''16-! \tuplet 3/2 { d''8( r8 e''8) } r8 dis''16-- cis''16-- bis'16-. d''16-. b'16-. dis''16-. |
\time 6,3 9/16 d''8(\f\> e''8 cis''8) dis'''32 fis'''32 e''16 d''16-^ |
\time 2,3 5/8 cis''8(\mp\< bis'8) b'32 ais'32 a'16 gis'8 g'8-^ |
\time 4,4,3 11/16 eis'16\mp dis'8.-^ r16 d'16( cis'16 bis16) cis'8. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 38" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 276 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key cis \major \tempo "Con fuoco" 8 = 276
\time 3,2,2 7/8 eis''16-.\mp\< fis''16-. gis''8-. ais''8-. \tuplet 5/4 { bis''16( cis'''16 dis'''16 eis'''16 fis'''16) } r16 gis''16-> fis''16 eis''16 |
\time 4,4,2,3 13/16 e''16-.\p d''16-. b16-. ais16-. b8. bis16-^ gis'8-. b'32-> ais''32 bis'16 dis'16 |
\time 6/8 cis''4-. bis''8-. b''8-. g''4-. |
\time 2,3 5/8 gis''16-. fis'16-. e''16-. a'16-. ais'8 b'8 bis'8-^ |
\time 6,3 9/16 \tuplet 4/3 { ais'8(\< a'8) b'8-. d'8-. } dis''16-> e'8 |
\time 2/4 \tuplet 6/4 { eis'16->\sfz g'16 ais'16 bis'16 cis'''16 dis''16 } fis''8( e'''8) |
\time 9/8 g''16( ais'8 d'16 eis'8) e'8.-> fis''8. e'16 d''16 g'16 e''16 ais'16 a''16-^ |
\time 3/4 \tuplet 7/4 { b'16-.\ff bis''16-. e''16-. ais''16-. dis''16-. eis'''16-. e''16-. } \tuplet 5/4 { dis''16 d''16-. cis''16-- bis'16-! b'16 } ais'8.-. a'16-. |
\bar "||" \key cis \major \time 3,2 5/8 cis'8.-. b'8.-. d''16 b''16 bis''16 b''16 |
\time 3,3,3,2 11/8 bis''16-. cis'''16-. d'''8-. dis'''8-. fis''16( g'16 gis'16 ais16 d'16 b'16) g''8 eis'8 d''8-^ r8 fis'16 e''16 |
\time 4,3 7/16 \tuplet 6/4 { ais'16 gis''16 a'16 gis''16 d''16 dis'''16 } d''16 b''8 |
\time 4,4,3 11/16 \tuplet 5/4 { a''16\f\< g''16 r16 e''16 d''16-^ } a'16( g'16 e'16 d'16) a'16-> d''8 |
\time 4/4 ais''8.\fp g''16 e'''16-> gis''16 e'''16 bis''16 \tuplet 5/4 { cis'''16 dis'''16 eis'''16 fis'''16 gis''16 } \tuplet 5/4 { fis''16 eis''16 dis''16 cis''16 bis'16 } |
\time 2,3 5/8 ais'16(\> gis'32 fis'32 eis'16 dis'16) fis'16 a''16 b''8-. d'''8-. |
\time 3,2 5/16 e'''8(\f dis'''16) r16 g''16 |
\time 2,2,3 7/8 eis''8->\ppp d''8 cis''32( gis'32 fis'32 dis'32 cis'32 gis'32 cis''32 dis''32) eis''4. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 39" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 260 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key ces \major \tempo "Leggierissimo" 8 = 260
\time 3,2 5/8 ges'16--\p\> aes'16-- bes'8-- ces''8-- \tuplet 5/4 { des''16-> ees''16 fes''16 ges''16 aes''16 } |
\time 6,3 9/16 bes''8.\sfz ces'''8. des'''16-- ees'''16-- fes'''16-- |
\time 3,2 5/8 ees'''8( f'''4) ees'''16 fes''8. |
\time 4,4,3 11/16 << { ees''16(\f f''32 d''32 ges''16 des''16) r8 c''16( d''16) des''16 ees''8 } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" \remove "Bar_number_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \key ces \major ees'''16^\markup{\tiny \italic "altiss. ad lib."} f'''32 d'''32 ges'''16 des'''16 r8 c'''16 d'''16 des'''16 ees'''8 } >> |
\time 3/8 d''16(\fp\< des''16 ces''16 bes'16 a'16 g'16) |
\time 2/4 ges'8\pp f'16 fes'16-^ d'16( c'8.) |
\time 4,4,3 11/16 \tuplet 5/4 { ges'16(\pp a'16 g''16 ces''16 c'''16) } ees''8.-> f'''16 g''8-> aes''16 |
\bar "||" \key ees \major \time 6,3 9/16 \tuplet 4/3 { ees'''8( e'''8) c'''8-. d''8-. } ees''16( e'16 c''16) |
\time 4,3 7/16 e''16(\fp\< aes''16) c'''16-. e'''16-. f''16 ges'''16-! b''16-. |
\time 3/4 g''8->\fff\> bes'8 \tuplet 7/4 { aes'16-> g'16 f'16 ees'16 d'16 c'16 bes16 } \tuplet 6/4 { aes'16( bes'16 c''16 d''16 ees''16 f''16) } |
\time 9/8 g''4->\pp\> aes''8 g''16-> a''8-! fis''16-> bes''8-. des'''32-> a''32 bes'16 a''8 b'8 |
\bar "||" \key a \major \time 6/8 << { c''8\fff\> cis''4-> \tuplet 4/3 { dis''8-! e''8 f''8-- g''8-! } } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" \remove "Bar_number_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \key a \major c'''8^\markup{\tiny \italic "altiss. ad lib."} cis'''4 \tuplet 4/3 { dis'''8 e'''8 f'''8 g'''8 } } >> |
\time 5/4 ees'''32(\ff\< e''32) dis''32-. b''32-. cis''32( e'32) cis''32-. e''32-. dis''8-. fis''16-. f''16-. r8 e''16-. fis''16 gis'8 fis''16 a'16-^ r8 cis'16-> a'16 |
\time 4,3 7/16 \tuplet 3/2 { ais8\fp b'8 dis'8 } f'32( e''32 cis''16 e''16) |
\time 3/8 r8 f''8-. e'''8-- |
\time 6,3 9/16 gis''8.-> g''8.-> a'8. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 40" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 320 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key fis \major \tempo "Feroce" 8 = 320
\time 2/4 eis'16-.\p e'16-. c'16-. gis'16-. c''32 e''32 eis''32 gis''32 c'''32 e'''32 eis'''32 gis''32-^ |
\time 2,3 5/8 r8 g''16( eis''16) e''8-. d'8-> c'8-> |
\time 5/4 d''16(\pp\< dis''16 eis''16 gis''16) b'16-- cis'''16-- d''16-- a''16-- b'8-- c'''8 \tuplet 3/2 { d''8-. cis'''8-. eis''8-. } b''32-- d''32-- c'''32-- d''32-- cis'''32-- c''32-- a''32-- cis''32-- |
\time 3,2 5/16 gis''16-.\ppp\> d''16-. ais''16-. gis''8 |
\time 3,2 5/8 gis''8.->\sfz g''8.-> gis'16 g'16 b16 a'16 |
\time 4,4,2,3 13/16 g''16-> e''16 ais''16 dis'''16 g''16( e'''16 ais''8) \tuplet 3/2 { g''16 e'''16 ais''16 } b'16( ais''16 gis''16) |
\bar "||" \key bes \major \time 4/4 r16 f''16\< aes''16 f''16-^ ges''16-- bes'16-- ges''16-- bes'16-- a'4 \tuplet 7/4 { gis'16-> bes'16 g'16-- b'16-. fis'16 c''16-- f'16-> } |
\time 3/4 \tuplet 7/4 { ees''16--\sfz g'16-- aes''16-- fis'16-- aes''16-- cis''16-- b''16-- } a'8.-> f''16 d'''16 des'''16 bes''8-^ |
\time 4,4,2,3 13/16 aes''32-- b'32-- c'16-- gis'8-- g'4-- r16 fis'16-. e'32-> ees'32 des'16 c'16 |
\time 6/8 \tuplet 4/3 { ees'8\> f'8 gis'8 bes'8-^ } r8 a'8 g'8 |
\time 4,3 7/16 \tuplet 3/2 { f'8(\mf\> r8 ees'8) } d''16-. c'16-. gis'16-. |
\time 3/4 bes8\fff c''8-^ cis''8-! e''8-> a''8 f'''16 c'''16 |
\bar "||" \key e \major \time 5/4 \tuplet 5/4 { a''16(\fp f''16) c'''16-. d''16-. dis''16 } \tuplet 5/4 { b''16 gis''16-. f'''16-- cis'''16-. d''16 } f'16( a'16 fis'16 e''16) \tuplet 3/2 { gis'8( f'8 d''8) } dis''32-> e''32-- fis''32 gis''32-- a''32-! b''32-! cis'''32 dis'''32-. |
\time 3,2 5/8 g''8.( e'''8.) \tuplet 6/4 { a''16-- ais'16-- b'16-- c'16-- dis'16-- gis'16-- } |
\time 3,3,3,2 11/8 a'8 bes'8 b8 a'16-> ais8-> b16-- c'8 r8 b8( cis'8) \tuplet 5/4 { c'16 d'16 b16 dis'16 ais16-^ } |
\time 9/8 a'16-> b'16 gis'16 c''16 g'16 cis''16 \tuplet 4/3 { b'8-> a'8 gis'8 fis'8 } e'4.-^ | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 41" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 300 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key ges \major \tempo "Agitato" 8 = 300
\time 3,2 5/8 \tuplet 4/3 { ees''8->\f f''8 d''8 ges''8 } \tuplet 3/2 { f''8( g''8 e''8) } |
\time 4,3 7/16 ees''16\> f''16 d''16 ges''16-^ f''32-. g''32-. e''16-. aes''16-. |
\time 2,3 5/8 g''16--\ff a''16-- ges''16-- bes''16-- a''16( ces'''16) aes''8-. c'''8-. |
\time 4,4,3 11/16 a''16(\mp\< aes''16 e''8) des''16-> a'8 aes'16 e'16 des'16 a'16 |
\time 4,3 7/16 \tuplet 6/4 { bes'16\sfz c''16 des''16 d''16 ees''16 e''16 } ges''32( aes''32 a''16 bes''16) |
\time 3/4 \tuplet 5/4 { aes''16(\pp ges''16 f''16 e''16 ees''16) } d''32 des''32 c''16 ces''8 a'16( aes'8.) |
\time 3/8 f''32 d'''32 des'''16 bes''8 a''8 |
\bar "||" \key fis \major \time 3,2 5/16 fis''16-. e''16-. cis''16-. b'8 |
\time 4,4,3 11/16 \tuplet 5/4 { ais'16\f c''16 r16 a'16 cis''16 } \tuplet 3/2 { e'''8 r8 eis''8-^ } gis''16 a''16 c'''16 |
\time 5/4 d'''16--\fp fis'''16-- ais''16-- fis''16-- eis''16 d''32 cis''32 a'16 gis'16 \tuplet 7/4 { eis'16( d''16 cis'''16 a''16 gis''16 ais'16 b16) } eis'8.( d'16) \tuplet 5/4 { a'16-. cis'16-. ais'16-. dis'16-. b'16-. } |
\time 3/8 c'16--\p\< b'16-- ais16-- a'16-- gis'16-- a''16-- |
\time 4,4,2,3 13/16 dis''16\f\> a''16 c''8 cis''8 dis''16 eis''16 r16 fis''16-^ a''16 b''8-^ |
\time 4/4 \tuplet 3/2 { ais''8(\pp gis''8 fis''8) } \tuplet 7/4 { eis''16 d'16 cis''16 c''16 ais'16 g'16 e'16 } dis''32( d'32 b32 cis''32 d'''32 dis'''32 eis'''32 g''32) \tuplet 5/4 { gis''16 g''16 dis'''16 e''16 cis'''16 } |
\bar "||" \key des \major \time 4,3 7/16 \tuplet 7/4 { aes''16--\fff g''16-> ees'''16 e'''16-. des'''16-- ges'''16-! b''16-. } aes''16-. g''8-. |
\time 2/4 \tuplet 3/2 { aes'8 c'8 b8 } r16 g'16-- f''16-- aes'16-- |
\time 4,4,3 11/16 ges'32-.\f\< f'32-. ees'32-. des'32-. c'32-. bes32-. aes'32-. bes'32-. c''16( des''16 ees''16 f''16) g''16 b''16 ees'''16 |
\time 9/8 d'''16\mp\> des'''16 c'''8 b''8-^ bes''8.( a''8.) g''32-- f''32-- e''16-- ees''8 des''8-. |
\time 3,2,2 7/8 \tuplet 4/3 { c''8\mf bes'8 aes'8 ges'8-^ } g'16 aes''16 a'8-^ e''4 | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 42" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 240 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key des \major \tempo "Prestissimo" 8 = 240
\time 3,3,3,2 11/8 b'16--\ff des'''16-- ees''16-- b''16-- d''16-- bes''16-- d''8-- bes''8-> b'8-- r8 ges''8 a'8 r16 aes'16( bes'16 g'16) |
\time 2,2,3 7/8 \tuplet 3/2 { ges'8-- r8 aes'8-- } g'16-- a'16-- ges'8-- aes'32( a'32 bes'16 b'8 c''8) |
\time 3/8 b''8.-- ees'''8.-- |
\time 6,3 9/16 b''8\f ees'''4 b''16( ees'''16 g''16) |
\time 4,3 7/16 ges'''16-- bes''8-- a''16-- aes'8.-> |
\bar "||" \key bes \major \time 3,2,2 7/8 g''16( a'16) ees''16-. d'16-. ees''16( d'16) des'16-- c'16-- b8-. a'16 bes'8.-^ |
\time 3,3,3,2 11/8 a'8 f'4 d'16 cis'16 a'8-. cis''8-! d''16 f''16 a''8 cis'''8-^ \tuplet 3/2 { c'''8 b''8 bes''8 } |
\time 6/8 << { a''32-- aes''32-- g''16-- ges''8-- f''8-- r8 e''8-> ees''8 } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" \remove "Bar_number_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \key bes \major a'''32^\markup{\tiny \italic "altiss. ad lib."} aes'''32 g'''16 ges'''8 f'''8 r8 e'''8 ees'''8 } >> |
\time 4,3 7/16 d''16-.\> c''16-. bes'16-. a'16-. g''16( e''16 cis''16) |
\time 5/4 r16 bes''16--\ppp a''16-- g''16-- fis''16( aes''8 f''16) e''16 ges''16 ees''16 g''16-^ gis''8 a''16 bes''16-^ c'''16( cis'''8 d'''16) |
\time 6,3 9/16 b''8.( g''8.) ees''16-- b'16-- g'16-- |
\bar "||" \key c \major \time 2/4 \tuplet 3/2 { a'8 b'8 c''8 } d''32( e''32 f''32 g''32 a''32 b''32 c'''32 d'''32) |
\time 4,4,3 11/16 \tuplet 5/4 { g''16-> a''16 r16 b'16 e'16 } f'16-- g'16-- a'16-- b'16-- c''16( d''16 e''16) |
\time 4/4 \tuplet 5/4 { f''16\mf\> g''16 a''16 b''16 c'''16-^ } cis''32-. d''32-. ees''32 d''32-! f'32-> fis'32-> f''32 g'32-. gis'32-. b'32-. d''32-. f''32-. gis''32-. b''32-. d'''32-. f'''32-. gis''8 f''16 d''16-^ |
\time 2,3 5/8 \tuplet 3/2 { b'8(\pp gis'8 f'8) } r8 g'8 a'8-^ |
\time 2,2,3 7/8 gis'16-> bes'16-! g'8-- fis'16-- aes'16-- f'16-- a'16-- gis'16-> bes'16-! g'16-> b'16-. fis'16 c''16-- |
\time 4,3 7/16 \tuplet 5/4 { b'16\pp cis''16 ais'16 d''16 a'16 } gis'8. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 43" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 240 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key cis \major \tempo "Agitato" 8 = 240
\time 4,4,3 11/16 \tuplet 6/4 { e''16\mp eis''16 fis''16 gis'16 cis''16 bis''16 } e'''16-> eis'''8 fis''16 eis''16 fis'8 |
\time 4/4 r16 d''16->\mp cis''16 ais''16 a''16 bis'32 a'32 fis'16 d''16 cis''8.-> bis'16-- ais'16( gis'8.) |
\time 3,2 5/16 fis'8( eis'16) \tuplet 3/2 { e'16-> dis'16 d'16 } |
\time 4,3 7/16 cis'16\sfz\> bis16-> ais16 a'16-! ais'16 b'16 bis'16 |
\time 2,2,3 7/8 \tuplet 6/4 { b'16-.\p ais''16-. b''16-. bis''16-. e''16-. fis'16-. } d''8-. b''16-. cis''16-. dis'16( e'16) bis'16-. gis''16-. fis'''16( eis'''16) |
\bar "||" \key ges \major \time 4,4,2,3 13/16 \tuplet 6/4 { ges'''16( aes''16) g''16-. ges''16-. e''16( ees''16) } \tuplet 3/2 { d''8 des''8 c''8 } ces''16-> des''16 ces''8.-> |
\time 4,4,3 11/16 bes''8.--\ppp ees''16 \tuplet 3/2 { bes'8 ees'8 e'8 } ees'16-. f'16-. d'16-. |
\time 2,2,3 7/8 des'16\fff\> bes16 g'16 bes'16-^ r8 des''16 ees''16-^ des''16( bes'16 aes'16 ees'16 des'16 bes16) |
\time 4,4,3 11/16 aes'16--\pp\< bes'16-- des''8-- ces''4-. bes'16( c''16 a'16) |
\time 5/4 r8 aes'16--\mp\> bes'16-- a'16-> ces''16-> aes'8-! \tuplet 3/2 { ges'8( f'8 ees'8) } d''16 c'8. aes'32 a'32 g''32 a'32 ces'''32 a'32 aes''32 ges'32-^ |
\time 2/4 \tuplet 3/2 { g'8\mf r8 a'8 } ces''16-- c''32 d''32-> e''16 f''16-- |
\time 3,3,3,2 11/8 ges''16-- aes''16-- bes''16-- ces'''16-- c'''16-- des'''16-- d'''8 ees'''8 d'''8 des'''16 ces''16 a'16 g'16 e'16 des'16-^ c'16-> ces'16 des'8 |
\bar "||" \key des \major \time 2,3 5/8 e'16 f''8 g'16-^ f'16( ees'16) c'16-. aes'16-. c''16( ees''16) |
\time 4,4,2,3 13/16 f'''4 aes''16( ges''8 f'16) r16 e''16-! des'''8. |
\time 4/4 d''16( ees'16 f'16 aes'16) \tuplet 6/4 { ges''16-- aes'16-- c'16-- bes'16-- des''16-- c''16-- } a''16 f'''8.-^ \tuplet 7/4 { e'''16( des'''16 bes''16 g'16 f'16 aes'16 b16) } |
\time 4,4,2,3 13/16 des'8\> d''16 f''16 \tuplet 3/2 { g''8-> a''8 bes''8 } b''8 d'''16-- f'''16-- aes''16-- |
\time 4,3 7/16 ges''16(\p ees'16 des'8) e''8. |
\time 3/4 ges''16-- g''32-- a''32-- bes''16-- c'''16-- bes''16( aes''8 ges''16) f''4-^ | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 44" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 320 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key ges \major \tempo "Agitato" 8 = 320
\time 2/4 \tuplet 3/2 { d''8\pp ces''8 aes'8-^ } \tuplet 5/4 { a'16-> bes'16 ces''16 c''16 des''16 } |
\time 2,2,3 7/8 d''16->\> e''8 f''16 g''8-- aes''8-- \tuplet 4/3 { bes''8( ces'''8 des'''8 ees'''8) } |
\time 4,3 7/16 \tuplet 7/4 { f'''16--\f\> ges'''16-- aes''16-- ges''16-- f''16-- ees''16-- des''16-- } ces''16 bes'16 aes'16 |
\time 4/4 bes'16(\mf ces''16 des''16 ees''16) ces'''8.-. aes''16-. f'''16( des'''8 c'''16) e''8( f'''16 g''16) |
\time 4,4,3 11/16 r16 e'''16-. a''16-. aes''16 bes'16-. f''8-. g'16-. aes'32( a'32 c''16 d''16) |
\time 3/4 f''8-- g''16-- aes'16-- a''16( bes''16) aes''16-. f'16-. e'16( f'16) g'16-. a''16-. |
\bar "||" \key b \major \time 4,4,3 11/16 ais''16 cis'''16 dis'''8-^ a''32-- c''32-- fis''32-- gis''32-- b'32-- cis''32-- e''32-- g'32-- a'16( c'16 fis'16) |
\time 9/8 r8 a'8-> c'8 cis'16( e'8 d''16 a''8) cis''16( e''16 d'''8 a''8) |
\time 6,3 9/16 r8 fis'''8 gis''8-^ fis'''16-. gis''16-. d'''16-. |
\time 3,2,2 7/8 fis''8( gis''4) a''16 cis'''16 e'''8-^ fis'''16 a''8. |
\time 5/4 e'''16\mp fis''8. cis'''4-^ fis''16( d''16 b''16 gis''16) fis'''8( d'''8) fis''16( d''16 b''8) |
\bar "||" \key ges \major \time 4,4,3 11/16 bes''8. aes''16-^ \tuplet 3/2 { ges''8 f''8 ees''8 } d''8 des'16-^ |
\time 3,2 5/16 c'32 ces'32-> c''16 des'''16 r16 d'''16-> |
\time 4/4 des'''32(\> ces'''32 bes''32 aes''32 g''32 f''32 e''32 d''32) e''16 g''8. \tuplet 3/2 { ces'''8( d'''8 e'''8) } g''8 e''16 d''16 |
\time 3/8 \tuplet 4/3 { des''8-.\p c''8-. ces''8-. a'8-. } |
\time 4,4,2,3 13/16 aes'16(\< g'8 f'16) r16 a'16 ees'16 g'16 a'16( ees''16) a'32( ees''32 g'16 f'16) |
\time 6/8 e'8--\fp des'8-- c'8-- aes'4.-> | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 45" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 352 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key c \major \tempo "Vivacissimo" 8 = 352
\time 3,2,2 7/8 cis'16\pp\> b'8 d'16 cis''8-^ g'16-- fis''16-- gis'16-- fis''16-- e''16-. b'8-. a'16-. |
\time 3,3,3,2 11/8 ges'16-.\fff e'16-. b8-. a'8-. f'16( d'16) c'16-. a'16-. c''16( d''16) b''8-. d''8-. e'''8-. f'''32-> ges'''32 g''32 ges''32 e''32 d''32 des''32 c''32 |
\time 5/4 \tuplet 5/4 { d'''16( gis''16 d'''16 g''16 a''16) } dis''16( d'''32 dis''32 e'''16 gis''16) ais''16-. d''16-. b''8-. r8 des''16( d'16) e'32-. f'32-. g'32-. a'32-. b'32-. c''32-. d''32-. e''32-. |
\time 3/4 f''32( g''32 a''32 b''32 c'''32 d'''32 e'''32 f'''32) \tuplet 3/2 { g''8( f''8 e''8) } cis'16( c''16 b'16 gis'16) |
\time 3,2 5/16 ges'8(\mf f'16) cis'8-. |
\time 4,4,3 11/16 ais8-- fis'16-- ais'16-- r16 cis''16( f''16 fis''16) f''32( g''32 e''16 gis''16) |
\time 3/4 g''16--\pp a''16-- fis''8-- a''32-. ais''32-. cis'''32-. f'''32-. a''32-. f''32-. des''32-. ais'32-. b'8-> c''8 |
\time 2/4 << { d''16--\p\< e''16-- f''8-- r16 e''16-> ees''16 cis''16 } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" \remove "Bar_number_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \key c \major d'''16^\markup{\tiny \italic "altiss. ad lib."} e'''16 f'''8 r16 e'''16 dis'''16 cis'''16 } >> |
\bar "||" \key c \major \time 4,4,2,3 13/16 \tempo "Tempo I" a'16->\p f'16-! cis'16-> a'16-! cis''16( f''16) a''16-. cis'''16-. r16 f'''16-. ges'''16-> g''16 fis''16 |
\time 9/8 e''16-. ees''16-. des''16-. c''16-. b'16-. ais'16-. c''16( e''16 fis''16 ais''16 c'''16 e'''16) des'''8 a''8 b''8 |
\time 4,4,3 11/16 cis'''8-- a''16-- b''16-- ais''16( c'''8 a''16) gis''16 bes''16 g''16 |
\time 4,3 7/16 fis''16( aes''8 f''16) g'16 e''16 dis'''16 |
\time 3,3,3,2 11/8 d'''16->\p ees''16 e'8-> d''8-- f'8-- a'8-- f''8-- d''16-. ees''16-. fis'16-. g'16-. ges''16-. dis''16-. c'''8-. bes''16-. a''16-. |
\time 3,2 5/16 d''8.-^\> cis'''16-> f''16 |
\time 2,2,3 7/8 g''16->\mf f'16 b'8 r8 c''16 d''16 \tuplet 4/3 { e''8( f''8 g''8 a''8) } |
\time 9/8 b''8.->\> c'''8. \tuplet 4/3 { b''8-> ais''8 fis''8 dis''8 } b'16-> bes'16 fis'16 ees'16 b16 ais16 |
\time 3,2,2 7/8 \tuplet 4/3 { b8(\sfz des''8) e'8-. fis'8-. } a''16-! ais''16 c'''16-! b''16 ais''4-- | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 46" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 336 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key des \major \tempo "Agitato" 8 = 336
\time 3/4 b16(\fff c'8.) \tuplet 6/4 { des'16-> d'16 bes'16 a'16 c'16 aes'16 } b'8. des'16 |
\time 2,3 5/8 b16-.\< a'16-. b'8-. des'8-- d'8-- f'8-- |
\time 2/4 g'16\mf\> aes'8.-- ges'16 f'16 e'16 ees'16 |
\time 2,3 5/8 d'8-.\f\> c'8-. b16-- a'8-- bes'16-- b'8-- |
\time 2/4 c''16->\ppp e''16 f''16 aes''16 g''32-> e''32 c''32 a'32 g'32 e'32 c'32 a'32 |
\time 3,2 5/16 c''16( e''16 g''16) \tuplet 3/2 { a''16 c'''16 e'''16 } |
\time 9/8 g''8.-.\p d''8.-. g'4-. d'8-! b'16( des'16 b'16 f'16 g''16 ges'16) |
\time 4,3 7/16 \tuplet 7/4 { e''16(\ff\< a'16 ges''16 e'16 bes'16 a'16 aes''16) } g''16( a''8) |
\bar "||" \key a \major \time 2/4 \tuplet 7/4 { gis''16\fff bes''16 g''16 b''16 fis''16 c'''16 f''16 } e''16-> fis''32 dis''32 g''16 d''16 |
\time 3,2 5/16 b'16(\< a'16 e'16) r16 d'16 |
\time 2,2,3 7/8 \tuplet 6/4 { cis'16(\sfz\> b16 a'16 b'16 cis''16 d''16) } \tuplet 6/4 { ees''16-- f'16-- fis'16-- a'16-- ais16-- d'16-- } ees'8.-! c'8.-. |
\time 3/4 bes'16(\fff\> cis'16 f'16 e'16) \tuplet 3/2 { ees'8-> d'8 cis'8 } c'16( b16 a'8) |
b'8.->\sfz cis''16 c''16( d''32 b'32 dis''16 ais'16) \tuplet 5/4 { a'16-. b'16-. gis'16-. c''16-. g'16-. } |
\time 3,3,3,2 11/8 ais'16-> cis''8 e''16 g''8 gis'8( b'4) gis'8 b'4 \tuplet 7/4 { gis'16 b'16 fis''16 g''16 d''16 ais'16 f'16-^ } |
\time 3,2 5/8 e'16\< b'16 c'8 cis''8-^ r16 d'''16 c''16 g''16 |
\time 4,4,2,3 13/16 fis''16(\ppp f''8 e''16) c''16( a'16 gis'16 e'16) \tuplet 3/2 { ees''16 cis''16 b'16 } dis'8. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 47" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 320 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key bes \major \tempo "Frenetico" 8 = 320
\time 3,2 5/16 d''16-.\fff bes'16-! fis'16-> \tuplet 3/2 { ges'16-. c'16-. f'16-. } |
\time 3,2 5/8 fis'32( c''32 f''16 aes''8 d''8) b''16 d''8 e'''16 |
\time 2/4 \tuplet 5/4 { ees''16( des'''16 r16 b'16 a''16) } gis''16 bes''8 g''16 |
\time 4,4,3 11/16 ges''16-- d''16-- bes'16-- fis'16-- \tuplet 5/4 { e'16 d'16 c'16 a'16 c''16-^ } d''32-> ees''32 ges''16 bes''16 |
\time 3/8 a''8.-> gis''8.-. |
\time 6,3 9/16 g''8(\fp\> ges''8 e''8) ees''32-- des''32-- c''16-- b'16-- |
\time 4,3 7/16 << { c''16--\mp\> d''16-- ees''8-- f''16-. g''8-. } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" \remove "Bar_number_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \key bes \major c'''16^\markup{\tiny \italic "altiss. ad lib."} d'''16 ees'''8 f'''16 g'''8 } >> |
\bar "||" \key ces \major \time 2,2,3 7/8 \tuplet 3/2 { bes''8(\fp\> fes'''8 d'''8) } ges'''16 ees'''16 d'''16 des'''16-^ ges''16-> ees'''8 d'''16 des'''8 |
\time 4,4,2,3 13/16 r16 ges''16\ff ees''16 d''16 \tuplet 7/4 { ces''16( g''16 aes'16 g'16 ces'16 des'16 ees'16) } fes'16 f'16 aes'16-- ces'''16-- des''16-- |
\time 3,2 5/8 c'''8 a''8 des''8 f'8( d''16 ces''16) |
\time 2,2,3 7/8 aes''16(\f g''32 fes'''32 des'''16 c'''16) ces'''4 f''16 des'''16 f''16 ees'''16 g''16 a''16-^ |
\time 3/8 << { d''32(\ff a''32 ees''16 bes''8 fes''8) } \new Staff \with { alignAboveContext = "main" \remove "Time_signature_engraver" \remove "Bar_number_engraver" fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) \override StaffSymbol.thickness = #(magstep -3) firstClef = ##f } { \key ces \major d'''32^\markup{\tiny \italic "altiss. ad lib."} a'''32 ees'''16 bes'''8 e'''8 } >> |
\bar "||" \key a \major \time 4/4 fis''8(\fff\> gis''16 ais''16) cis'''32( d'''32 e''32 g'32 a'32 ais'32 cis''32 d'32) \tuplet 5/4 { dis'16( e''16) r16 g''16-. a''16-. } gis''32-> ais''32 g''32 b''32 fis''32 c'''32 f''32 cis'''32 |
\time 4,4,3 11/16 c'''16->\mf d'''16 b''16 dis'''16 d'''16-> e'''32 cis'''32 f'''16 c'''16 b''16-. cis'''16-. ais''16-. |
\time 3,2,2 7/8 r8 a''8\mf b''8-^ ais''16-> c'''16 a''16 cis'''16 c'''16 d'''16 b''16 dis'''16-^ |
\time 2,3 5/8 d'''16->\> e'''8.-> ees'''16( cis'''8) c'''16-. b''8-. |
\time 6,3 9/16 bes''16->\ff gis''8-- fis''16 e''8-> fis''8.-> | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 48" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 300 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key bes \major \tempo "Volante" 8 = 300
\time 2,3 5/8 des'16\f c'16 bes8 r8 b8-> c'8 |
\time 9/8 cis'8--\> d'8-- ees'8-- a'16 g''16 bes'16 b''16 e''16 f'''16-^ r8 g''8-. bes'8-- |
\time 2,3 5/8 a'16(\mf b'16) gis'16-. c''16-. b'16 des''16 bes'16 d''16 a'16 ees''16 |
\time 2,2,3 7/8 d''16\< e''16 des''8 \tuplet 5/4 { c'''16-- a''16-- aes''16-- f''16-- ees''16-- } d''16-. e''16-. cis''16-. f''16-. c''16-. fis''16-. |
\time 3,2 5/8 d'''16\ppp cis''16 ees'''16 a''16 ees'''16 cis''16-^ d''16 e''16 f''16 fis''16 |
\bar "||" \key bes \major \time 3,3,3,2 11/8 \tempo "A tempo, feroce" r8 g''8-! a''8-> b''8 cis'''8 e'''8-^ aes''8.-- e''8.-- fis''16( a''16 c'''16 ees'''16) |
\time 3,2 5/16 d'''16-- e'''16-- cis'''16-- \tuplet 3/2 { c'''16-. d'''16-. b''16 } |
\time 2/4 c'''16(\< b''16) bes''16-. gis''16-. \tuplet 6/4 { f'''16-. ees'''16-- d''16-! c'16 bes16-> bes16-. } |
\time 9/8 aes'8-.\fff bes8-. b8-. bes16-. d'8-. des''16-. f'8-. e'8.-. ges'8.-. |
\bar "||" \key des \major \time 4,4,3 11/16 f'16( g'16 e'16 aes'16) g'16 a'16 ges'16 bes'16 a'8 b'16 |
\time 3,2 5/8 f''16(\< des'''8) b''16-. a''8-. d'''32-> bes''32 des''32 aes'32 g''32 c'''32 ees'''32 a''32 |
\time 4,4,3 11/16 d''32-.\mp bes''32-. des'''16-. aes''8-. des'''16( c'''32 bes''32 ees'''16 f''16) des''8. |
\time 2/4 des''16-.\p\> c'''8-. bes''16-. g''16-> f'8. |
\time 3,2 5/8 e'32\mf\< des'32 b16 des'8 e''8 \tuplet 3/2 { des'''8 r8 c'''8 } |
\time 6,3 9/16 des'''8(\pp d'''8 ees'''8) e'''16 ges'''8-^ |
\time 9/8 g''16( ges''16 e''8 d''8) bes''16-. g''16-. bes'8-. c'8-. b16 a'16-> aes'16-. b'16-! a''16 bes''16 |
\time 4/4 b''16(\< d''8.) c''8. bes'16-^ g'16-> ees'16 c'16 bes16 r8 a'16( bes'16) |
\time 9/8 b'16(\pp c''16) des''8-. d''8-. \tuplet 4/3 { des''8( bes'8) ges''8-. ees'''8-. } g''4. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 49" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 288 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key e \major \tempo "Prestissimo" 8 = 288
\time 3,2 5/8 e''16-.\ppp\> fis''16-. dis''16-. g''16-. d''16-. gis''16-. dis'''8.( cis''16) |
\time 3/4 \tuplet 5/4 { dis'''16(\sfz\> e''16 d'''16 fis''16 dis'''16) } \tuplet 5/4 { d'''16 e'''16 cis'''16 f'''16 c'''16 } ais'32-! e''32-> d'32-. a'32-- dis'32-> f''32-! gis'32-> g''32 |
\time 3,2,2 7/8 fis''8--\fff f''8-- e''8-- dis''8-> d''16 cis''16 b'32-> a''32 gis''32 g''32 e''32 cis''32 bes'32 g'32 |
\time 2,3 5/8 f''16(\fp dis'''16 f''8) e''16 dis'''16-. e''16-> f''16 gis'16-- a'16-- |
\time 9/8 r8 gis'8 fis'8 \tuplet 4/3 { f'8-> dis'8 c'8 ais8 } c'16 cis''16 e'16 g'16 a'16 ais'16 |
\bar "||" \key d \major \time 4/4 r8 a'16( b'16) ais'8-> c''16 a'16 \tuplet 7/4 { gis'16( ais'16) g'16-. b'16-. fis'16( c''16) f'16-. } \tuplet 5/4 { ees'16-- c'16-- b16-- g'16-- b'16-- } |
\time 3/4 c''16 dis''32 g''32 b''16 c'''16-^ ees'''32-> g''32 dis''32 c''32 b'32 g'32 ees'32 c'32 d''8 ees''16 e'16 |
\time 3,2 5/16 f'32( gis'32 ais'16 b'16) c'''16 d'''16 |
\time 4,3 7/16 f'''16-. cis'''16-. fis'''8-. f'''8-> cis'''16 |
\time 3,2 5/16 fis'''8 gis''16 fis''8 |
\time 3,2 5/8 \tuplet 4/3 { a''8(\> cis'''8 e'''8 dis'''8) } r16 e''16-- d'''16-- ais''16-- |
\time 3,2,2 7/8 cis'''16(\p\< b''16 cis''16 dis'16 d''16 e'16) \tuplet 5/4 { g'16( f''16 d'''16 e''16 c'''16) } d''8-. b''16-. e''16-. |
\bar "||" \key ees \major \time 6/8 \tempo "A tempo, feroce" f''16-.\pp\> g''16-. aes''16-. bes''16-. c'''16-. d'''16-. ees'''16 f'''16 g''16 f''16 ees''16 d''16-^ |
\time 2,2,3 7/8 ees''8.\fff\< e''16-^ \tuplet 5/4 { cis''16-- bes''16-- g''16-- bes''16-- cis'''16-- } ees'''32-- f'''32-- aes''16-- f''8-- ees''8-- |
\time 5/4 c''32--\p\< aes'32-- f'16-- ees'8-- c'16 aes'16 c''16 ees''16-^ d'''16-- fis''16-- f'''16-- des'''16-- e''16( f'''16 fis''16 cis'''16) \tuplet 3/2 { d''8 r8 ees'''8-^ } |
\time 3/4 e''8\mp f'''8 \tuplet 3/2 { d'''8-- f''8-- e''8-- } ees'''4 | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 50" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 352 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key g \major \tempo "Agitato" 8 = 352
\time 6,3 9/16 f'32(\p\< b'32 e''16 ais''8 fis''8) f'''32-- b''32-- e'''16-- ais''16-- |
\time 6/8 f''16(\f b'8 e'16 ais8) a'16( e'16 cis'8 c''8) |
\time 5/4 \tuplet 7/4 { a'16(\> e'16 des''16 c''16 d''16 ees'16 b16) } \tuplet 3/2 { gis'8 e''8 g'8 } b'16-- cis''16-! e''16-- fis''16-> b''16-- cis'''8-- e'''16-- dis'''16-. f'''8-> d'''16 |
\time 3,2 5/16 cis'''8->\sfz dis'''16 d'''16-> e'''16 |
\time 3,3,3,2 11/8 dis'''8.->\> f'''8.-> fis'''16-. aes''16-. g''8-. fis''8-. f''16-- e''16-- ees''16-- d''16-- cis''16-- c''16-- bes'16( a'16) gis'16-. a'16-. |
\time 2/4 \tuplet 3/2 { gis'8\ff ais'8 g'8 } fis'16( gis'16 f'16 a'16) |
\time 4,4,3 11/16 b''16\fp d'''8 dis'''16 e''32( g''32) a'32-. c'32-. dis'32( fis'32) g'32-. ais32-. b'16-> d''16 dis'''16 |
\bar "||" \key des \major \time 3,2,2 7/8 ees'''8 bes''8 g''8-^ ges''16 aes''16 f''16 a''16 aes''16-- bes''16-- g''16-- b''16-- |
\time 3/8 bes''32-! c'''32-. a''16-- des'''8-- aes''8-! |
\time 2,3 5/8 r8 a'16->\< g''16 e'''16( ges''16 d'''8 b''8) |
\time 4,3 7/16 \tuplet 5/4 { e'''16\mp des'''16 a''16 b'16 aes'16 } e''32( des''32) a''16-. b''16-. |
\time 9/8 e'''16-> des'''16 a''16 b''16 aes''16 f'''16 r8 e'''8 des'''8 bes''16( g''16 ges''16 f'''16 e'''16 d'''16) |
\time 2,2,3 7/8 c'''32-- a'32-- ges'16-- f''8-- e''8-! ges''16-> ees''16-! d''32( e''32 des''16 f''8 c''8) |
\time 4,4,3 11/16 \tuplet 3/2 { ees'8-. a'8-. aes''8-. } ees''32( a'32 aes'16 b8) c'16 des'8 |
\time 3/4 ees'8\f e'8-^ f'8-. ges'8-. aes'16 g''16 a'16 bes''16-^ |
\time 3,2 5/8 aes'32-> d''32 f'16 g''8 aes'8 g''4-. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 51" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 260 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key d \major \tempo "Vivacissimo" 8 = 260
\time 3,2 5/8 g'32\sfz\> fis'32 e'16 d'8 cis'8 b16-. a'16-. b'16-. cis''16-. |
\time 3,2 5/16 d''16-.\ff e''8-. d''8-> |
\time 4,4,3 11/16 \tuplet 5/4 { cis''16\fp c''16 b'16 bes'16 a'16-^ } g'8 fis'8-! g'16 gis'16-. a'16-- |
\time 9/8 \tuplet 4/3 { ais'8-.\< b'8-. c''8-. cis''8-. } dis''8. e''8. fis''8( g''8 a''8) |
\time 5/4 b''8.--\ff cis'''16-- b''8-> a''8 gis'32-> f'32 dis'16 e'8 fis'16-- gis'16-- b'16-- cis'''16-- b''16( a''32) g''32-. fis''16-. e''16 |
\bar "||" \key cis \major \time 9/8 r8 dis''8\> cis''8-^ e'''8-> g''8 e'8 r8 cis'8-- bis8-- |
\time 4,3 7/16 dis'16->\fp eis''16 gis''16 ais''16 d''8 eis'16 |
\time 3/8 e''16( cis''8 eis'16 gis'8) |
\time 5/4 \tuplet 3/2 { eis'8-!\> fis'8-> g'8 } a''16-. bis'16-. cis''16-. dis''16-. \tuplet 3/2 { e''8( g''8 a'8) } gis'32 ais'32 g'32 b'32 fis'32 bis'32 eis'32 cis''32 bis'16-> d''16 b'16 dis''16 |
\time 3/4 d''16(\ppp e''16 cis''16 eis''16) \tuplet 7/4 { dis''16( d''16 bis'16 b'16 ais'16 a'16 gis'16) } \tuplet 5/4 { fis'16-- eis'16-- e'16-- dis'16-- d'16-- } |
\bar "||" \key bes \major \time 6,3 9/16 bes'16\< des'16 b'16 ees'16 f'16 e'16-^ cis''16 a''16 c''16-^ |
\time 2,2,3 7/8 aes''16(\sfz f''16 aes'16 b16) aes'16-- g''16-! ges'''8-> ees'''16 c'''8 b''16 gis''8 |
\time 4/4 r8 cis''16 d'''16 ees''16 a''32 c''32 b''16 d''16-^ \tuplet 5/4 { des'''16( ees''16 b''16 d''16 a''16) } \tuplet 7/4 { g''16( f''16) ees''16-. d''16-. c''16( bes'16) a'16-. } |
\time 2,2,3 7/8 g'16->\ppp\> f'8-! ees'16-- \tuplet 3/2 { d'8-. c'8-. bes8-. } gis'16( b'16 d''16 f''16 gis''16 b''16) |
\time 5/4 r16 d'''16\mf f'''16 gis''16 f'''16-> aes''32 b'32 c''16 cis''16 b''16-> cis''8-! c'''16-- r8 f'''16 fis'''16 \tuplet 3/2 { f'''8 ges'''8 a''8 } |
\time 3,2,2 7/8 r8 aes''8( g''8) \tuplet 6/4 { c'''16 a''16 e''16 f'16 aes'16 fis'16-^ } c''8. a''16 |
\time 2/4 r8 ges'''16-. bes''16-. ges''4-^ | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 52" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 352 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key cis \major \tempo "Inquieto" 8 = 352
\time 6/8 b'16\ff ais'16 fis''16 a'16 gis'16 a'16-^ g''16-> b'16-- bis16 e'16-! dis''16-> e'16 |
\tuplet 4/3 { dis'8 cis'8 bis8 ais8 } gis'16( ais'16 bis'16 cis''16 dis''16 eis''16) |
\time 4/4 \tuplet 3/2 { fis''8-.\< gis''8-. ais''8-. } cis'''16-- e'''8-- fis'''16-- a''16 fis''8 e''16 cis''32-! a'32-> fis'16-. e'8-- |
\time 3,2 5/8 b'16(\f a'16) gis''16-. bis'16-. gis''16( fis'16) g''16( ais'16 eis''16 gis'16) |
\time 3,2 5/16 a''8-! ais'16-> g''16-. eis''16-! |
\time 2,3 5/8 r16 dis''16(\> cis''16 b'16) ais'8.-- gis'8.-- |
\time 6/8 fis'16(\mp eis'16) e'16-. dis'16-. cis'16( b16) e'16 d''16 g''16 cis''16 gis'16 fis''16 |
\bar "||" \key fis \major \time 2,2,3 7/8 e''8-- d'''8-- r16 e''16( d'''16 g''16) \tuplet 4/3 { fis'8-- dis'8-- cis''8-- b'8-- } |
\time 3/8 \tuplet 4/3 { gis'8( eis''8 dis'8 cis'8) } |
\time 6/8 b'16( ais''16) gis'16-. eis''16-. d''16( cis'''16) ais''32( gis''32) e'''16-. gis''8-. ais'8 |
\time 2,2,3 7/8 gis'16( e''16 g'8) d''16( g'8.) r8 fis'8 a'8-^ |
\time 4,3 7/16 gis'16-> ais'8-. g'16 ais32( cis'32 e'16 c''16) |
\time 3,2 5/16 a'32( b32 cis'16 d'16) r16 cis'16 |
\time 2/4 dis'16--\pp c''8.-- r8 dis'16 g'16-^ |
\bar "||" \key ges \major \time 3,2,2 7/8 e''16(\ppp ees''8 ges'16 e''8) f''8-- ges''8-- ees'''16( des''16 d'''16 g''16) |
\time 4,3 7/16 aes''16-> bes''8-> ces'''16-. c''32 ces'''32 e''16-. d'''16-- |
\time 4,4,3 11/16 c''16 bes''16 e''16 des'''16 \tuplet 3/2 { ces'''8-. r8 bes''8-. } aes''8( ges''16) |
\time 2,3 5/8 f''16(\ff ees''16 des''8) c'8( d''4) |
\time 6,3 9/16 ees'16( d''16) ees'8-. f''8-. e''8. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 53" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 240 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key bes \major \tempo "Frenetico" 8 = 240
\time 9/8 ees''4-.\ff d''8-. e'16-- ees'16-- d''16-- f'16-- aes'16-- bes16-- a'4 bes'8 |
\time 6/8 c''8.->\mf\< d''8. ees''16 f''8 g''16 a''8 |
\time 5/4 ges''16\f e''16 ees''16 d''16 b'16-! bes8-> g'16 \tuplet 3/2 { ges'8-- aes'8-- b'8-- } \tuplet 6/4 { bes'16( c''16) a'16-. des''16-. aes'16( d''16) } cis''16 ees''32 c''32 e''16 b'16-^ |
\time 3,3,3,2 11/8 r8 bes'8 c''8 a''32-> des''32 bes'16 fis''8 ees'''8 fis''16( a''16) g''16-. bes'16-. g''16( ees'''16) \tuplet 7/4 { f'''16( g''16 f''16 ees''16 d''16 c''16 bes'16) } |
\time 3,2,2 7/8 a'16--\fp g'16-- f'8-- ees'8-- d'4 c'16( bes16 a'16 bes'16) |
\time 5/4 r16 c''16( d''16 ees''16) \tuplet 6/4 { e''16-- fis''16-- g''16-- aes''16-- bes''16-- b''16-- } c'''16 cis'''8 ees'''16 \tuplet 5/4 { b''16-- ges'''16-- g''16-- a'16-- cis''16-- } b'16-. fis'16-. g'16-. a'16-. |
\bar "||" \key d \major \time 4,3 7/16 b4\mf e'16 cis''8 |
\time 3,2,2 7/8 e'8.( cis'8.) b16-> bes'16-! a'16-. gis''16-! fis'32 f''32 b'32 bes''32 c''32 bes''32 e''32 b''32 |
\time 3,2 5/8 c'''32-.\sfz\< cis''32-. ees'''16-. a''8-. g''8-. fis''16-- e''16-- d''8-- |
\time 3,2 5/16 cis''16\ff b'16 a'16 fis'16 gis'16 |
\time 6/8 g'16->\< fis'8 d'16 ais8 g'8.-- ais'8.-- |
\bar "||" \key d \major \time 2,2,3 7/8 d''16(\pp fis''16 g''16 ais''16) gis''4-> fis''8( ees''8 b'8) |
\time 4,4,3 11/16 aes'16-.\mp\> fis'16-. dis'16-. b16-. cis'8-. bes'16-. a'16-. c''32( dis''32 e''16 f''16) |
\time 6,3 9/16 g'8.(\p b8.) c'32-- d'32-- e'16-- g'16-- |
\time 3,3,3,2 11/8 fis'32->\mf gis'32 f'16 a'8 e'8 d'32-. cis'32-. b16-. ais8-. a'8-. \tuplet 4/3 { b'8( c''8 d''8 dis''8) } f''4 |
\time 2/4 \tuplet 6/4 { e''16 fis''16 dis''16 g''16 d''16 gis''16 } \tuplet 6/4 { g''16 a''16 fis''16 bes''16 f''16 b''16 } |
\time 5/4 ais''16( c'''32) a''32-. cis'''16-. gis''16 g''32( a''32 fis''32 bes''32 f''32 b''32 e''32 c'''32) \tuplet 3/2 { b''8-> cis'''8 ais''8 } a''32-> b''32 gis''32-! c'''32-- g''32-! cis'''32-! fis''32 d'''32-> cis'''4 | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 54" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 276 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key cis \major \tempo "Inquieto" 8 = 276
\time 3/4 \tuplet 6/4 { bis''16-!\mp\> cis'''16-. d'''16-. cis'''16-> a''16-- bis''16-> } a''32-> bis'32-> d'16-! b'8-! a''16( fis''16 e'''16 dis'''16) |
\time 3,2 5/16 e''32\fff fis'''32 b''16 gis''16-^ \tuplet 3/2 { b'16-- cis'''16-- fis''16-- } |
\time 4,3 7/16 e'''16->\mf\> bis''8 ais''16 e''32-! bis'32-! ais'16-. gis'16-- |
\time 6,3 9/16 ais'8\f bis'8 cis''8 dis''16 eis''16 fis''16-^ |
\time 3/8 gis''32-! ais''32 bis''16-. cis'''8-> dis'''8-- |
\bar "||" \key a \major \time 3,3,3,2 11/8 bes''16\> a'16 e''16 f'16 fis''16 gis'16 a''8( d''8 c'''8) e''16-. ees'''16-. a''8-. f'''8-. e'''16 d'''16 cis'''16 b''16 |
\time 3,2 5/8 a''32(\f\< gis''32 fis''16 e''8 d''8) cis''16-> b'16 a'16 gis'16 |
\time 4,3 7/16 fis''16(\fp ees'''16 c'''16 a''16) gis'32( f''32) d''16-. cis''16-. |
\time 3/8 c'''32-> e''32 ees'''16 fis''8 a'8 |
\time 6,3 9/16 b'16 a''16 d'''16 e''16 dis''16 f''16 b''32-. a''32-. d''16-. e''16-. |
\time 9/8 b''16-- a''8-- d'''16-- e''8-- d''8.( cis''8.) b'8. a'8. |
\bar "||" \key c \major \time 6,3 9/16 \tuplet 4/3 { g'8-- f'8-- e'8-- d'8-- } c'32( ais32) gis'16-. a'16-. |
\time 3,3,3,2 11/8 ais'16( b'16 c''16 cis''16 d''16 e''16) \tuplet 4/3 { f'8 d''8-> b'8-- dis'8-- } fis'16-! a'16-! c''8-> dis''8-. g''16-. gis''16-. c'''8-. |
\time 4,3 7/16 \tuplet 7/4 { cis'''16--\f e'''16-- des'''16-- b''16-- aes''16-- f'16-- d'16-- } e'16-- fis'16-- g'16-- |
\time 5/4 \tuplet 3/2 { fis'8(\ppp\< gis'8 f'8) } e'16( ges'8 dis'16) d'16-> e'16 cis'8 \tuplet 5/4 { b'16( bes''16) a''16-. gis''16-. f'''16 } g''4 |
\time 2/4 f'8->\f\< d''16-! b16-> \tuplet 3/2 { a'8( b'8 cis''8) } |
\time 4,4,3 11/16 d'''16\pp e'''32 f''32 g''16 a''16-^ g''16-. ais'8-. cis''16-. c''8. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 55" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 352 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key g \major \tempo "Tempestoso" 8 = 352
\time 6/8 \tuplet 4/3 { g'8--\f e''8-- f'8-- fis''8-- } gis'16( a''8) d''16-. a''8-. |
\time 6,3 9/16 b'16(\sfz\< g''16) cis''8-. c'''8-. d'''16-> e'''8 |
\time 9/8 f''16\ff des'''16 a''16 aes''16 b'16 g''16 ees'''16 c'''16 b''8 gis''8 a''32 fis''32-! f''16-! e''8-! dis''8-> |
\time 4,3 7/16 c'16( b16 ais16 c'16) dis''16-> f''16 g''16 |
\time 3,3,3,2 11/8 fis''16 e''16 d''16 c''16 b'16 a'16-^ g'32( fis'32) e'16-. d'8-. c'8 b16-> a'16 b'16 c''16 d''16 e''16 dis''16( f''16 d''16 fis''16) |
\bar "||" \key ees \major \time 3/8 f''8 g''4-^ |
\time 4/4 bes'8 g''8-^ \tuplet 5/4 { bes'16-- aes''16-. b'16-> bes''16-> b'16-- } g''16( c''32 b''32 bes'16 b''16) \tuplet 7/4 { bes''16-. aes''16-. g''16-. f''16-. ees''16-. d''16-. c''16-. } |
\time 3,2 5/8 bes'8. aes'8. g'8 f'8 |
\time 6/8 g'16( aes'8 bes'16 c''8) d''16-> ees''16 f''8 g''8 |
\bar "||" \key f \major \time 3,2 5/8 ges'''32\ppp b''32 des'''16 g''8 cis'''8-^ r8 dis''16 a''16 |
\time 6/8 cis''16\> dis''16 c'''16 bes''16 a''16 g''16 des''16-. ees'16-. c'16 bes16-! a'16-- g''16-> |
\time 3/4 des''16(\fp dis'32) c''32-. bes''16-. a''16 gis''32-. bes''32-. g''16-. b''8-. bes''4 |
\time 5/4 b'16\mp\< aes'16 c'16 d'16 \tuplet 7/4 { e'16( c''16 cis'16 a'16 gis'16 b'16 dis'16) } \tuplet 6/4 { bes'16 b16 g'16 bes16 ges'16 e'16 } bes'16( e'16 d''16 e'16) d''16-! e'16-. f''16-- bes'16-- |
\time 6/8 ges''16\ff ees''8 e'16 g'8 bes'16 a'16 c'16 dis'16 cis''16 e''16-^ |
\time 2/4 dis''8-- f''8-- ges''16 g'8. |
\time 2,3 5/8 bes'16(\sfz cis'''8.) d'''16( e'''16) aes''16-. e''16-. d''16( bes'16) |
\time 4,4,3 11/16 aes'32--\sfz e'32-- d'32-- bes32-- gis'32-- bes'32-- d''32-- e''32-- r16 aes''16-- bes''16-- d'''16-- ges''16 c'''8-^ |
\time 2,2,3 7/8 des''8\f dis'16 f''16-^ e''16 ges''16 dis''8 d''4.-^ | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 56" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 276 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key bes \major \tempo "Feroce" 8 = 276
\time 3,2,2 7/8 b16(\fp a'16 gis'8 fis''8) ees'''16 a''32 e''32 b''16 c''16 b'8 cis''8-. |
\time 2/4 c''16\mf d''16 b'16 ees''16-^ d''16( e''16 des''16 f''16) |
\time 2,2,3 7/8 \tuplet 3/2 { fis''8(\< g''8 gis''8) } cis'''4-. bes''16-- g'8-- e'16-- des'8-- |
\time 6,3 9/16 \tuplet 4/3 { b'8\f\> a'8 ges'8 gis'8 } a''16( b''8) |
\time 5/4 \tuplet 7/4 { des'''16\mp e''16 d'''16 ees''16 d'''16 c''16 g''16-^ } ges'16-- f''16-- a'16-- g''16-- fis'16 e''16 f'8 e''4 cis''16( c'''16 b''16 d'''16) |
\time 3,2 5/8 \tuplet 4/3 { e''8 aes'8 c'8 cis'8 } d'16 ees'16 f'16 fis'16 |
\time 4,4,2,3 13/16 \tuplet 3/2 { a'8(\> r8 c'8) } a'16-> c''16 ees'16 cis'16 a'8-. bes''16-> cis''8 |
\bar "||" \key cis \major \time 2,3 5/8 \tuplet 5/4 { ais''16(\fff cis''16 gis''16 d''16 e'''16) } ais''16( e'''16 ais''16 g''16 a'16 eis''16) |
\time 5/4 \tuplet 6/4 { a'16--\mp gis''16-- g'16-- e''16-- g'16-- a''16-- } cis''8.-> gis''16 g''16( fis''32 eis''32 e''16 dis''16) d''8.-> cis''16 b'16( ais'16) gis'16-. g'16-. |
\time 3/4 fis'4-- fis'16-> g'16 gis'8 \tuplet 5/4 { fis'16-! g'16 gis'16-! a'16-> eis''16-> } |
\time 3,3,3,2 11/8 r8 gis''8-> b'8 d''32 e'32 fis'16 gis''8 a''8 g''16( fis'16 eis''16 dis'16 cis'16 bis16) cis'16 dis'32 eis'32 fis'16 gis'16 |
\time 2,3 5/8 r16 ais'16( bis'16 cis''16) dis''4-- eis''8-- |
\time 4/4 \tuplet 5/4 { b''16(\< g''16) r16 e''16-. a''16-. } \tuplet 7/4 { b'16 g''16 e''16 a'16 cis''16 ais'16 d''16-^ } b''16-. g''32-. e''32-. a''16-. cis'''16-. bis''16-. ais''16-. gis''16-. fis''16-. |
\bar "||" \key cis \major \time 4,4,2,3 13/16 \tempo "Tempo I" \tuplet 7/4 { eis'''16\pp gis''16 e'''16 cis'''16 dis''16 b''16 ais''16-^ } \tuplet 5/4 { fis'''16-- g''16-- ais'16-- d'16-- bis'16-- } d''16 dis''16 eis''32( fis''32) g''16-. a''16-. |
\time 3,2 5/8 ais''8-- b''8-> bis''8 d'''16 eis'''8.-^ |
\time 4,4,3 11/16 g''16( eis''16 d''16 bis'16) \tuplet 3/2 { b'8 ais'8 a'8 } eis'16-- cis'16-! a'16-- |
\time 6,3 9/16 cis''4( eis''8) a''16 cis'''8 |
\time 3,2 5/8 dis''8->\p g'8 a'8 bis8 dis'8 |
\time 9/8 d'16-- cis'16-- ais'16-- g'16-- ais'16-- b16-- ais32( gis'32) ais'16-. bis'8-. cis''8 dis''4.-- | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 57" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 320 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key aes \major \tempo "Scherzando, molto vivo" 8 = 320
\time 4,4,2,3 13/16 ges''16-.\f e''8.-! c''16 bes'8 fis'16-^ f'16 e'16 ees'16-> des'16 c'16 |
\time 2,2,3 7/8 des'16\f ees'16 f''16 fis''16 r8 g''16 c'''16 g''8. a'8. |
\time 3,2 5/16 d''16-.\mf c'''8-> \tuplet 3/2 { d''16 c'''16-! des''16-> } |
\time 6,3 9/16 b'16-> bes'16 a'16 g'16 f'16 e'16 d'32 des'32 c'16 b16 |
\time 9/8 \tuplet 4/3 { aes'8-> f'8-- des''8-- e'8-. } f'8-. ges'8-. f'8-. aes'16-. b16-. d'16-. e'16-. f'16-. aes'16-. |
\bar "||" \key bes \major \time 3/4 \tempo "A tempo, feroce" a'8\ppp c''16 d''16 des''16( bes'16 ges'16 ees'16) r8 bes'16-> d'16 |
\time 4/4 e''16-- gis'32-- a''32-- bes'16-- b''16-- cis''16 c'''16 cis''8 d''32-- ees''32-- f''32-- g''32-- a''32-- bes''32-- c'''32-- d'''32-- \tuplet 3/2 { ees'''8 r8 f'''8 } |
\tuplet 5/4 { g''16(\< f''16 ees''16 d''16 c''16) } \tuplet 6/4 { b'16( a'16 ges''16 e''16 d'''16 c'''16) } \tuplet 3/2 { b''8-. r8 aes''8-. } g''8.-! f''16-> |
\time 9/8 ees''8(\ff d''8 c''8) r8 a'8-- g'8-- e'16 c'8 a'16 c''8 |
\bar "||" \key e \major \time 3,2 5/8 \tempo "A tempo, feroce" ais'8-> gis'8-. ais'8 d'4 |
\time 4/4 c''16( f'16) fis''16-. e'16-. gis'16( f''16 g'16 fis''16) f'8.-- g''16-- cis''8( d'''8) |
\time 3/8 f''8.->\> fis'8. |
\time 4,4,2,3 13/16 a''16\ppp\> b''16 d''16 f''16 r8 fis'16( gis''16) \tuplet 3/2 { fis'16 c''16 e'16 } dis''16-. cis'16-. dis''16-. |
\time 4/4 b'16\ff gis'16 fis'16 f''16-^ r16 b'16( gis'16 fis'16) gis'16-> a'8. fis'16 d'32 cis'32 a'16 cis''16 |
\bar "||" \key des \major \time 4,4,3 11/16 r8 b''16-. c'''16-. \tuplet 5/4 { a''16-! c'''16-- d''16-> ges'16-- g'16 } e'16 ees'16 ges'16 |
\time 5/4 a'16( ges''16 b''16 e''16) a''8 ges''8-^ aes''16-> bes''32 c'''32 des'''16 ees'''16 f'''16-- ges'''32-- aes''32-- ges''16-> f''16 ges'''16-. g''8-. d'''16-. |
\time 4,3 7/16 g''16\fp\> aes''16 d''16 aes''16 g'16-- des''8-- |
\time 4,4,3 11/16 c''16(\ff e'16 ees'16 des''16) c''4-! b'16-- des''16-- bes'16-- |
\time 5/4 \tuplet 3/2 { a'8\fp b'8 aes'8-^ } des''16-- e''16 ges''8-! \tuplet 6/4 { f''16-. ees''16-. des''16-. c''16-. bes'16-. aes'16-. } ges'8.-. f'16-. e'4-> | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 58" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 288 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key ges \major \tempo "Feroce" 8 = 288
\time 2,3 5/8 des''8.-.\fff ees'16-. f'8. ges'8.-^ |
\time 4/4 aes'4 g'16 a'16 ges'16 bes'16 aes'16 ges'32 f'32 ees'16 des'16-^ r16 ces'16-. bes16-. aes'16-. |
\time 3,3,3,2 11/8 bes'8\p ces''8 des''8 c''16-> d''16 ces''16 ees''16 bes'16 e''16 ees''16-- f''16-- d''16-- ges''16-- des''16-- g''16-- ges''16-. f''16-. ees''16-. des''16-. |
\time 4,3 7/16 ces''16(\< bes'16) aes'16-. ges'16-. f'16-. ees'16-. des'16-! |
\time 4,4,2,3 13/16 r8 aes'16\ppp f'16 \tuplet 6/4 { aes'16( f'16) ees'16-. g'16-. c'16( e'16) } aes'8-- g'16-- ges'16-- f'16-- |
\time 3,2,2 7/8 g'16-.\f a'16-. bes'16-- ces''16-! c''16-> d''16-> ees''16 f''16 g''16 a''16 bes'8 a''8 |
\time 6/8 r8 aes''8-. ges''8 e''16( ees''16 c''8 bes8) |
\bar "||" \key ees \major \time 4,4,2,3 13/16 \tempo "Più mosso" aes'16(\fp ges'8 e'16) \tuplet 5/4 { ees'16( f'16) d'16-. ges'16-. des'16 } c'32-- d'32-- b32-- ees'32-- d'16 des'16 c'16 |
\time 4,3 7/16 b16-> des'16 bes16 d'16 e'16-. b'8-. |
\time 5/4 \tuplet 7/4 { bes'16-.\< c''16-. a'16-. des''16-. aes'16-. d''16-. g'16-. } fis'32-- aes'32-- f'16-> a'8-> \tuplet 7/4 { aes'16-> bes'16 g'16 b'16 fis'16 c''16 f'16 } \tuplet 3/2 { ges''8 r8 c''8 } \tuplet 5/4 { f'16-. e'16-. b'16-. aes''16-. bes'16-. } |
\time 3/8 r8 f'8\mf\> e''8 |
\time 3,2 5/8 f'32-.\sfz e''32-. b'16-. aes'8-. bes'8-. \tuplet 3/2 { aes'8( g'8 f'8) } |
\time 3,2,2 7/8 ees'16-!\ppp d'8-! c'16-- bes8-. \tuplet 5/4 { b16 c'16 r16 cis'16 d'16-^ } ees'32-- e'32-- g'32-- a''32-- bes''32-- des'''32-- ees'''32-- f'''32-- |
\time 4,3 7/16 \tuplet 5/4 { g''16\mp a'16 b'16 des''16 ees'16 } e'8-! f'16-. |
\bar "||" \key aes \major \time 2,2,3 7/8 ees''8--\f d'8-> c'8-> b16 bes16 a'16-- bes'16-- b'16-- c''16-- des''16-- ees''16-- |
\time 2/4 e''16-> f''8 fis''16 e'''16-- g''8.-- |
\time 4,4,3 11/16 \tuplet 7/4 { des'''16( b'16 des'''16 g''16 ges'''16 e''16 des'''16) } \tuplet 3/2 { d''8( r8 e'''8) } ges'''16 a''8 |
\time 3/8 c'''4. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 59" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 352 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key aes \major \tempo "Presto furioso" 8 = 352
\time 4,4,2,3 13/16 b'16--\ff a'8-- fis'16-- e'16-> b8-- a'16-- b'16( e''16) aes'8. |
\time 9/8 r8 a''8-> c''8 g''8-- f'8-- des''8-- aes'4-- c''8-- |
\time 4/4 aes'8( c''8) b''16 aes''16 des'''8 aes''16 g'16 d''8 c'16 a'16 aes'8 |
\time 4,3 7/16 bes''8.->\f ees''16 d''8. |
\time 6,3 9/16 c'''16--\< ees''16-- a''16-- b'16-- c'''16-- e''16-- c'''16 d''16 e'''16-^ |
\time 5/4 \tuplet 5/4 { fis''16->\mp a''16 bes'16 b'16 des'16 } \tuplet 5/4 { bes16-- b16-- c'16-- b'16-- d'16-- } bes'32( b32) aes'32-. b'32-. d'32( f'32) a'32-. b32-. \tuplet 5/4 { bes16-. aes'16-. bes'16-. c''16-. des''16-. } c''32 d''32 b'16 ees''8 |
\time 2/4 \tuplet 3/2 { d''8-.\ppp e''8-. des''8-> } \tuplet 3/2 { c''8 r8 d''8 } |
\bar "||" \key c \major \time 6/8 c''16 ais'8 a''16 gis''8-^ r8 ais''8( cis'''8) |
\time 3/8 dis'''16 ges'''16 a''8 fis''8-^ |
\time 9/8 e''8-> d''4 \tuplet 4/3 { c'''8( a''8) aes''8-. g''8-. } d'''32 fis''32 e'''16 f''8 e'''8-^ |
\time 3,2,2 7/8 d''8(\pp\> e'''8 gis''8) d'''16 cis''16 b''16 dis''16-^ d''32-> e''32 cis''16 f''8 |
\time 6,3 9/16 e''16\f\< ges''8 dis''16 g''8 fis''32( a''32) ees'''16-. c'''16-. |
\bar "||" \key bes \major \time 9/8 \tempo "Subito meno mosso" a''8.-.\fp e'''8.-. \tuplet 4/3 { a''8( e''8) aes'8-. bes'8-. } a'8.-- e''8.-- |
\time 4,4,2,3 13/16 ees''32(\mp d''32) c''32-. bes'32-. a'32( g'32) f'32-. ees'32-. d'8 c'16 bes16 a'16-- bes'16-- c''16 ees'''16 e''16 |
\time 3,2 5/8 r8 g''8\mp\> a'8 c'16 a'16 b8-^ |
\time 3/4 c'16(\ppp a'32 b'32 bes'16 gis''16) c'''16( a''16 b''16 bes''16) \tuplet 7/4 { cis'''16 ees'''16 ges'''16 a''16 aes'16 ges'16 ees'16-^ } |
\time 4/4 \tuplet 6/4 { cis'16( bes'16 g'16 ges'16 e'16 ees''16) } ges''16 f''16 d'''8 f''16( fis''16 a''8) des''16-- ees'8-- e'16-- |
\time 2/4 a'8(\fff g'16 c''16) des''4 | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } }
\bookpart { \paper { page-count = 1 } \header { title = "Sight-Reading Etude No. 60" composer = "Original — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Original. Meter changes nearly every bar; 5- and 7-tuplets; key changes mid-piece. ♪ = 300 (aspirational — read it first at half speed)." \markup \vspace #0.6 
\score { \new Staff = "main" { \accidentalStyle modern-cautionary \key b \major \tempo "Inquieto" 8 = 300
\time 3/4 e'''4-!\f\> \tuplet 5/4 { gis''16-- a''16-- cis''16-- g''16-- f'16-- } \tuplet 6/4 { fis''16-- e'16-- b'16-- dis'16-- f''16-- e'16-- } |
\time 4,3 7/16 f''16->\pp dis'8 cis''16 d'16-! e''16 g'16-- |
\time 4/4 cis''32-. b32-. fis'16-. a'8-. gis''16( ais'8 b''16) r16 ais'16-- c'''16 fis''16 gis''16( d''16 c'''16 b'16) |
\time 6,3 9/16 dis'16-- d''16-- ais''16-- b'16-- d'16-- b'16-- a''16( b'16 gis'16) |
\time 3,2 5/8 g'8-! a'4 gis'16( ais'32 g'32 b'16 fis'16) |
\bar "||" \key fis \major \time 2/4 eis'16-.\ff b16-. dis'16-. g'16-. eis''8. b''16 |
\time 9/8 ais''16(\p c'''16) a''16-. cis'''16-. gis''16( d'''16) cis'''16-> dis'''16 c'''8 e'''8 r8 cis'''8 ais''8 |
\time 3/8 g''16( e''16 cis''16 ais'16 g'16 e'16) |
\time 4/4 cis'16(\f ais16 g'16 ais'16) \tuplet 3/2 { b'8 cis''8 dis''8 } eis''8. fis''16 a''32 cis'''32 eis'''32 fis'''32 a''32 fis''32 eis''32 cis''32 |
\time 3,3,3,2 11/8 c''8.-> ais'8. g'8( e'8 d'8) c'8( ais8 g'8) b'16( eis''16) d'''16-. gis''16-. |
b'8\f eis''8 d'''8 \tuplet 4/3 { cis'''8-! ais'8-> gis'8-> fis''8-> } dis''16-> cis'''16 ais'16 a'16 gis''16 g''16 a''8. ais''16 |
\bar "||" \key b \major \time 4,3 7/16 dis''16-.\f fis''32-. d'''32-. cis'''16-. gis''16-. dis''32 fis'32-. d'16-> cis'16-- |
\time 2/4 e'8 fis'16 a'16-^ c''16-> cis'''16 d'''16 cis'''16 |
\time 4,4,3 11/16 c''16-. a'8-. c''16-. d'16-. f'16-. g'16-. a'16-. c'8.-^ |
\time 9/8 cis'16(\mf\< d'16 f'16 a'16 cis''16 d''16) cis''8-. dis''8-. c''8-. b'16-. cis''16-! ais'8-! d''8-. |
\time 2/4 cis''16(\ff c''16 b'16 ais'16) a'8-- g'8-> |
\time 4,4,2,3 13/16 \tuplet 5/4 { fis'16-. f'16-! e'16-! dis'16-! d'16 } \tuplet 5/4 { cis'16-- b16-- r16 ais16-- gis'16-- } ais'8-- b'8. | \bar "|." } \layout { indent = 0 \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) } } } } }