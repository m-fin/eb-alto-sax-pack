\version "2.24.4"

\paper {
  #(set-paper-size "letter")
  top-margin = 12\mm bottom-margin = 12\mm left-margin = 14\mm right-margin = 14\mm
  ragged-last-bottom = ##t
  markup-system-spacing.basic-distance = #8
  system-system-spacing.basic-distance = #13
}
\book { \bookpart { \paper { page-count = 1 } \header { title = "1. Glass Harbor" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 Up swing. Vocabulary: superimposition, bebop, triad pair, side-slip. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { aes1*8/16:m7 des1*8/16:7.5+.9+ fis1*16/16:maj7 fis1*8/16:m7 b1*8/16:7.5+.9+ e1*16/16:maj7 aes1*8/16:maj7 b1*8/16:7 e1*8/16:maj7 g1*8/16:7 c1*8/16:maj7 ees1*8/16:7.5+.9+ aes1*16/16:maj7 ees1*32/16:7.11+ des1*32/16:7.11+ fis1*32/16:sus4.7 b1*16/16:sus4.7 a1*16/16:sus4.7 bes1*16/16:m7.5- ees1*16/16:7.5+.9+ aes1*32/16:m6 f1*64/16:m7 e1*32/16:7.11+ d1*32/16:7.11+ des1*8/16:maj7 e1*8/16:7 a1*8/16:maj7 c1*8/16:7 f1*8/16:maj7 aes1*8/16:7.5+.9+ des1*16/16:maj7 } }
\new Staff { \time 4/4 \tempo "Up swing" 4 = 280 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers d''8\mf a'16 aes'16 ees'4 f'16( d''16-- bes''16 a''16) des'''8 e'''8-> |
 r8 g''8-> d'''16 b''16 cis''16 e''16-. \tuplet 3/2 { cis''8-- ais''8-. fis''8-> } \tuplet 3/2 { gis''8-- c'''8 dis''8 } |
 dis''8 e''8 fis''4 r8 g''8 ais''8( c'''16-> a''16->) |
 r8 gis''8 r8 ais''8 r4 b''8 ais''16-> gis''16 |
 aes''4-- \tuplet 3/2 { ees''8-. c''8-> d'8 } dis'8 c'8 \tuplet 3/2 { dis'8 f'8 dis'8-^ } |
 dis'8-. f'8 a'8 c''16 dis''16 r8 f''8-. r4 |
 e''16 c''16-- ais'8-> b'8 b'8 \tuplet 3/2 { b'8-.( des''8 b'8) } a'8 b'8-> |
 \tuplet 3/2 { bes'8( aes'8 g'8-^) } f'8 e'8-> r4 ees'8 d'8 |
 ees'8-> g'8 bes'8-. c'8 a'8-. f'8-- g'8 ees''8 |
 bes''16( a''16 f'''16 c'''16) ees'''16( g''16 bes''8) a''8-> c''8-> f'16 ees'16-> g'8 |
 r4 \tuplet 3/2 { a'8( c''8 e''8) } \tuplet 5/4 { d''16 d''16 e''16 a''16 g''16 } g''8 e''8-> |
 c''8 b'8-> aes'8-- ges'8 des'8-> ges'8-. \tuplet 6/4 { ees'16 des'16 b16-- des'16 ees'16 fis'16 } |
 r4 r8 fis'8 \tuplet 3/2 { f'8 fis'8 gis'8 } fis'8 dis'8 |
 \tuplet 3/2 { e'8 e'8 dis'8-> } cis'8-. dis'8 \tuplet 3/2 { e'8 dis'8-. cis'8 } r4 |
 cis'8-- bes'8 r8 b8-> b16( cis'16 dis'8) e'8 fis'8 |
 gis'8 cis''8-- fis''8-> e''8 d''16( a'16 e'16 b16) r8 cis''8 |
 d''8 f''8 g''16 c'''16-> g''8-> b'8 des''8 ges''8\mp e''16-> ges'16 |
 r4 fis'4 b16-> ees'16 des'16-> a'16 e'16( ees'16-> b'8) |
 \tuplet 3/2 { b'8( des''8 ees''8) } f''8-> g''8 aes''8 bes''8 b''8 des'''8-. |
 ees'''8 f'''8-> r4 ees'''4 f'''8-- ees'''8-> |
 ees'''8 b''16 a''16 ges''8 ees''8 b'8 a'8 r4 |
 ges'16 ees'16 b8 ees'8 fis'8-- a'8 b'8 ees''8-^ fis''8 |
 a''8 b''8 \tuplet 3/2 { ees'''8( b''8 a''8) } ges''8 ees''8 b'8 a'8 |
 \tuplet 6/4 { ges'16->( ees'16-> b16 ees'16-> fis'16 a'16) } \tuplet 3/2 { b'8( ees''8 fis''8) } \tuplet 5/4 { a''16-^( b''16 ees'''16 b''16 a''16) } fis''8-. aes''8-> |
 gis''8 b''8 r4 e'''8(\ff fis''16 cis'''16) ais''8 b''8 |
 r8 gis''8 r8 e''8 cis''8 ais'8-. \tuplet 3/2 { fis'8( e'8 b8) } |
 r4 \tuplet 3/2 { b8 e'8 cis'8 } \tuplet 3/2 { d'8( d'8-> e'8) } d'8-- e'8 |
 fis'8 gis'8 a'8 gis'16 f'16 fis'4 \tuplet 3/2 { fis'8 e'8 d'8-> } |
 r8 e'8 des'4 dis'8 f'8-> e'8 fis'8 |
 r4 g'8 c''8-> \tuplet 3/2 { d''8 bes'8 f'8-> } g'8 c'8-> |
 dis'4 aes'8 g'8-> aes'8 e'16-> b16-^ ges'8-. d'8 |
 e'4-.\mf fis'8 b'8-> f''8 ees''8-- bes'4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "2. Signal Fire" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 Burnout swing. Vocabulary: wide, superimposition, pentatonic, triad pair. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { c1*64/16:m7 g1*32/16:sus4.7 c1*16/16:sus4.7 bes1*16/16:sus4.7 b1*16/16:m7.5- e1*16/16:7.5+.9+ a1*32/16:m6 b1*8/16:maj7 d1*8/16:7 g1*8/16:maj7 bes1*8/16:7 ees1*8/16:maj7 ges1*8/16:7.5+.9+ b1*16/16:maj7 a1*8/16:m7 d1*8/16:7 aes1*8/16:m7 des1*8/16:7 g1*8/16:m7 c1*8/16:7.11+ fis1*16/16:maj7 ees1*64/16:m7 des1*16/16:m7 ges1*16/16:7.5+.9+ b1*32/16:maj7 e1*32/16:7.11+ d1*32/16:7.11+ } }
\new Staff { \time 4/4 \tempo "Burnout swing" 4 = 320 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers c'8\mf g'8-. c'16( g'16 c'16 ees''16) \tuplet 3/2 { d'8 c''8 d'8 } \tuplet 3/2 { ees''8 ees'8-> ees''8 } |
 r8 d'8 ees''16 g'16 a''16 g'16 g''8 c''8 bes''8-- a'8-> |
 r4 g''16 bes'16 bes''16-> d''16 \tuplet 3/2 { bes''8( d''8 ees'''8->) } r8 d''8-> |
 d'''4 bes'8-> c'''8 r4 d''4-> |
 d''4-- r8 a'8 c''8 g'8-. a'16-> f'16 g'8-> |
 d'16( f'16 c'8) \tuplet 6/4 { d'16-.( c'16 c'16 f'16-. d'16 g'16) } r8 f'8 r8 a'8 |
 \tuplet 3/2 { bes'8( d''8 c''8-.) } r8 f''8-> d''8-> g''8 r4 |
 r8 fis''8 r8 a''8 b''8-> ees'''8 \tuplet 6/4 { b''16 a''16-> ges''16 ees''16 b'16 aes'16 } |
 \tuplet 3/2 { cis'8-> d''8-- d'8-. } cis''8 d'8 f''16 gis'16 aes''16 cis''16 \tuplet 6/4 { f'''16->( cis''16 f'''16 d''16 a''16-. f'16) } |
 d''8 d'8 c''16-.( c'16 e''8) \tuplet 3/2 { fis'8-^( e''8 cis'8) } r4 |
 d'8 fis'16-> a'16-> b8 gis'8 e'16( fis'16 d''16 a''16) gis''16( e'''16-^ b''16 d'''16) |
 fis''16-> a''16-. gis''16 b'16 r4 e'8-- d'8-. fis'8-> a'8 |
 cis'4 b'16->( dis'16 dis''8) \tuplet 6/4 { ees''16-> c''16-> aes'16 fis'16 ees'16 c'16-. } r4 |
 b8 cis'8 e'8-> a'8 aes'8 f'8-- c'8 ees'8 |
 d'16( f'16 a'16 g'16) g'8 a'8 r4 a'16-^ ges''16 d'''16 e'''16-> |
 dis'''8\ff cis'''8 ais''8 f''16 ais''16 cis'''8 dis'''8 \tuplet 6/4 { f'''16( dis'''16 cis'''16 ais''16 f''16-- ais''16) } |
 c'''8 e'''8 g''16( a''16 fis''16 d'''16) ees'''8-. c'''8-> aes''8-> fis''8-> |
 \tuplet 6/4 { g''16( e''16-> des''16-- a'16 g'16 e'16) } des'8 b8-> r4 \tuplet 3/2 { c'8-> d'8 b8-. } |
 bes'8-^ d'8 \tuplet 6/4 { f'16-. e'16 g'16 c''16 d''16-> f''16 } f''8 g''16 c'''16 bes''8 bes''8 |
 r4 \tuplet 3/2 { ais''8-.( fis''8 cis''8) } c''16( gis'16 dis'16 cis'16) fis'16-. ais'16 c''16 dis''16 |
 \tuplet 3/2 { ees''8 aes''8-- f''8-> } bes''8 aes''8 ees''16(\f f''16 c''8) ees''16 bes'16-- c''8-- |
 \tuplet 3/2 { aes'8( bes'8 f'8-.) } aes'8 ees'8 f'8 c'8-. r4 |
 ees'8 c'8 c'16-^ f'16-> ees'16 aes'16-- f'8 bes'8 r8 aes'8 |
 c''8-> bes'8 r8 ees''8 \tuplet 3/2 { c''8 f''8 ees''8 } aes''16\p f''16 bes''16-^ aes''16 |
 g''8 bes''8 c'''8-> e'''8-> c'''8 bes''8 g''8 e''8 |
 gis'8 aes''8 r8 bes'8-. r4 d'''8 dis''8 |
 r8 dis''8-- r8 b''8 fis''8 gis''8-> \tuplet 3/2 { cis'''8-> f''8 fis''8 } |
 b'8-> dis'8 cis'4 \tuplet 3/2 { gis'8-- f''8 fis''8 } r8 dis'''8 |
 r4 ees'''8-^ cis'''8-> ais''8-> g''8 ees''8 cis''16 ais'16 |
 g'16( ees'16-> cis'8--) dis'8 g'8 ais'8 cis''8-^ dis''16->( g''16 gis''8) |
 g''8 e''8-- d''8 a'8 d''8 c''8 r4 |
 a'8-. e'8-. \tuplet 6/4 { a'16 g'16-. e'16 c'16 e'16 d'16 } r8 c'8 c'4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "3. Undertow" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 Fast swing. Vocabulary: pentatonic, wide, 4ths, triad pair. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { bes1*8/16:m7 ees1*8/16:7 a1*8/16:m7 d1*8/16:7 aes1*8/16:m7 des1*8/16:7.11+ g1*16/16:maj7 g1*16/16:m7.5- c1*16/16:7.5+.9+ f1*32/16:m6 aes1*32/16:m7 a1*16/16:m7 aes1*16/16:m7 aes1*16/16:m7.5- des1*16/16:7.5+.9+ fis1*32/16:m6 e1*8/16:m7 a1*8/16:7.5+.9+ d1*16/16:maj7 d1*8/16:m7 g1*8/16:7.5+.9+ c1*16/16:maj7 e1*32/16:sus4.7 a1*16/16:sus4.7 g1*16/16:sus4.7 a1*64/16:m7 aes1*16/16:m7 des1*16/16:7.5+.9+ fis1*32/16:maj7 } }
\new Staff { \time 4/4 \tempo "Fast swing" 4 = 260 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers des''16\mf f''16 aes''16 g''16 bes''16( ees'''16-> f'''16-. des'''16) des'''8-> fis''8 b''8 e'''8 |
 e'''16 g''16 c'''16 d'''16 a''16 fis''16 g''16-> e'''16-> e'''8 c'''8 g''8 a'8 |
 aes'8 ees'8-> bes'8 f'16 b'16-> r8 b'8 ges'8 des'16 ees'16 |
 d'8 g'8 r4 r8 b'8 \tuplet 3/2 { a''8 e''8 cis''8 } |
 e'8 des''8 r8 e'8 \tuplet 3/2 { e''8--( f'8 a''8->) } bes'8 a''8-> |
 aes''8 des'''8 \tuplet 3/2 { fis''8 e'''8-- c'''8 } r4 f'''8->\ff bes''8 |
 bes''16( f'''16-- d'''16 e'''16) g''8-> c'''8 \tuplet 6/4 { bes''16( d''16 f'16 e'16 g'16 c'16) } d'8\mp bes'8-> |
 f'8--( e'16-^ c''16) g''8 bes''8-> f'''8 d'''8 e'''16 g''16-- c'''8 |
 f''8 aes''8 r8 des'''8 r4 \tuplet 3/2 { bes''8 ees'''8 des'''8-^ } |
 \tuplet 3/2 { aes''8( bes''8 f''8) } aes''8-- des'''8 bes''8 ees'''8 des'''8 aes''8 |
 r8 a''8-^ fis''16\mf d''16 e''16-> e''16-- r4 d''8 a'8-> |
 \tuplet 3/2 { aes'8--( ees'8-. bes'8) } c'16 bes'16-> ees''16 aes''16-- ges''8 b'8-. ges'8 des'8 |
 ges'16 b16-. ges'16 b16 \tuplet 3/2 { b'8 b8 bes'8 } \tuplet 3/2 { b8->( aes'8 b8) } b'8-. d'8-> |
 b16 b16 d'16-- b16-> r4 e'4 d'8( b16 b16) |
 \tuplet 3/2 { a'8->( cis'8-> dis''8) } cis'8( dis''16-. gis'16) \tuplet 3/2 { dis''8 cis'8-> dis''8 } r8 fis'8 |
 \tuplet 3/2 { dis''8 cis'8-. cis''8 } fis'8-> gis''8 a'8\ff cis'''8 dis''8-- cis'''16-> dis''16 |
 r4 e''8 fis''8 \tuplet 3/2 { f''8 c''8 a'8 } bes'16-^( g'16-- dis'8) |
 d'16( a'16 e'16 b16) r8 cis'8 fis'8 b'8 e''16 b16-- e'8 |
 r4 \tuplet 3/2 { e'8 a'8-> d''8 } r8 ees'''8-> e''16( e'''16 e''16 ees'''16) |
 e'''16-.( c'''16-. g''16 a'16) d''8 fis''8 g''8 e''8-. \tuplet 3/2 { c''8 d'8 fis'8 } |
 d''8->( b16-. a'16) d'8 b'8 e'8 b'8 b8 fis'8 |
 b8 d''16-> e'16-^ b'8 d'8 b'16 cis'16 d''8-^ r4 |
 d''4 b''8 g''8-- \tuplet 3/2 { a''8( d'''8-- fis''8) } g''8 b'8 |
 g''8 c''8 d'''8 c''8 e'''8 a''8-^ f'''8 a''8 |
 a''8-^ b''8 \tuplet 5/4 { d'''16->( e'''16 d'''16-. b''16 a''16) } e''8 a''8-. b''8 d'''8 |
 e'''4 r4 r8 d'''8 b''8-> a''8 |
 e''4-^ \tuplet 3/2 { a''8->( b''8 d'''8->) } e'''8-> d'''8 b''8 a''8 |
 e''8 a''8 \tuplet 3/2 { b''8-> d'''8-> e'''8-> } r4 d'''8-. b''8-> |
 ees''8 f'''8 f''16\ff f'''16-> bes''8 f'''8 aes''8 ees'''8 ges''16 ees'''16 |
 d'''8-> g''8 r8 c'''8 f'''8( des'''16 aes''16) dis''8 f''8 |
 r4 dis'16( dis''16-> fis'8) dis''8 dis'8 fis''4-> |
 fis'8-> f''8 cis'8-> f''8 \tuplet 3/2 { dis'8( dis''8 gis'8-^) } gis''4-> \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "4. Night Ferry" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 Straight-8th fusion. Vocabulary: pentatonic, bebop, wide, triad pair. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { g1*32/16:sus4.7 c1*16/16:sus4.7 bes1*16/16:sus4.7 fis1*64/16:m7 e1*32/16:7.11+ d1*32/16:7.11+ aes1*32/16:7.11+ fis1*32/16:7.11+ c1*16/16:m7 f1*16/16:7.5+.9+ bes1*32/16:maj7 b1*8/16:m7 e1*8/16:7.5+.9+ a1*16/16:maj7 a1*8/16:m7 d1*8/16:7.5+.9+ g1*16/16:maj7 g1*32/16:sus4.7 c1*16/16:sus4.7 bes1*16/16:sus4.7 f1*32/16:sus4.7 bes1*16/16:sus4.7 aes1*16/16:sus4.7 } }
\new Staff { \time 4/4 \tempo "Straight-8th fusion" 4 = 200 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers e''8\mf cis''8 d''8 d''8 e''4 f''16 fis''16 g''8 |
 a''8\mf b''8-> \tuplet 3/2 { a''8( b''8 e'''8-.) } cis'''8 d'''8 d'''8 e'''8 |
 e'''8 d'''8 r4 c'''8-> b''8 bes''8 a''8 |
 \tuplet 3/2 { aes''8 c''8 ees'8 } ees'16-. bes'16 g''16 aes''16 ees'''8-> c'''8-> r4 |
 cis'''8-. e''8-. \tuplet 5/4 { a'16-.( fis'16-- b16 dis'16 cis'16) } a'8-> e'8 \tuplet 5/4 { dis'16-. b'16 fis''16 a''16 e'''16 } |
 \tuplet 3/2 { cis'''8 dis'''8-. fis''8 } b''8-> a''8 cis''8 e'8 dis'8( fis'16 b16->) |
 cis'8 a'8 \tuplet 6/4 { e'16( dis'16 b'16 fis''16 a''16 e'''16->) } cis'''8 dis'''8 r4 |
 r8 fis''8 b''16->( a''16 cis''8->) e'16(\mf dis'16 fis'16-. b16) r8 cis'8-^ |
 b16( gis'16-> e'16-> cis'16-^) fis'8 ais'8 b8-> e'8-^ r4 |
 gis'8 ais'8-> cis''8-> fis''8 gis''16( b''16-> e'''16-> fis''16) \tuplet 5/4 { cis'''16 ais''16-- b''16 gis''16 e''16-> } |
 e''4-> fis''8 gis''8 a''8-. b''8 c'''8 cis'''8 |
 d'''8-> e'''8 r8 d'''8 b''8->\mf c'''16 b''16-^ \tuplet 6/4 { gis''16( a''16 a''16 gis''16-. fis''16 e''16) } |
 r4 r8 bes''8 aes''8( ees''16 ges''16) cis''16->( ees''16 aes''16 ges''16) |
 aes'4 \tuplet 3/2 { bes'8 ees''8-> des''8 } \tuplet 6/4 { ees'16-> ges'16 bes'16 aes'16 des'16-> cis'16 } ges'16->( ees'16 aes'16 ges'16) |
 fis'8 cis'8 \tuplet 6/4 { e'16( b16 cis'16 fis'16 e'16 gis'16) } fis'4 b'8 gis'8 |
 r4 cis''4 \tuplet 3/2 { b'8( e''8-. cis''8->) } fis''8 e''8 |
 e''8 ees''8-> d''8( c''16-- a'16) r8 bes'8 bes'8 c''8-> |
 \tuplet 3/2 { b'8-. gis'8 a'8 } \tuplet 5/4 { a'16( ges'16 e'16-. f'16 f'16) } ges'16( gis'16-> a'8) r4 |
 a'8 bes'8 \tuplet 6/4 { c''16( g''16 e''16 f''16 f''16 bes''16) } gis''8 a''16 a''16 bes''8-^ c'''8 |
 d'''8 e'''8 f'''8 e'''8 d'''16-. c'''16 bes''8 c'''8 d'''8 |
 cis'''4 b''8-> gis''8 \tuplet 3/2 { g''8-> ais''8-> c'''8-^ } f'''16->( c'''16 ais''16 g''16-^) |
 r4 a''16 e''16 cis''8 b'16 fis'16 dis'16-^ cis'16 e'8 a'8 |
 a'16( g'16 fis'8) r8 e'8 r4 f'16-- bes'16 d'16 c'16 |
 \tuplet 3/2 { b8 g'8-> d''8 } \tuplet 6/4 { cis''16 a''16 e'''16-> g''16 b''16-> d''16-> } cis''8-> e'8 a'8--\mp g'8 |
 g'16( ges'16-^ f'8->) \tuplet 5/4 { e'16->( d'16-> b16-> c'16 c'16) } d'8 b8 \tuplet 3/2 { c'8 c'8-. b8 } |
 \tuplet 6/4 { c'16-. d'16 e'16 d'16 d'16 b16-- } r4 c'8 c'8 b8 c'8 |
 g'4 e'8 f'8-> f'8 g'8 a'8 bes'16 b'16 |
 bes'8 g'16 e'16 \tuplet 3/2 { f'8-> f'8 d'8 } \tuplet 3/2 { ees'8-- ees'8-^ f'8-> } d'8-.( ees'16 ees'16) |
 ees'8->\p d'8 r4 d'8 b8 c'16-.( d'16 b16-- c'16) |
 c'8 d'8 ees'8-> e'8-> f'8 g'8-> a'8-- bes'8 |
 \tuplet 3/2 { c''8-> aes'8-> ees'8 } bes'8-. g'8 r4 ees'8 ees'8 |
 ees'8 f'8-^ ges'8 ees'8-> \tuplet 3/2 { c'8( des'8 des'8->) } c'4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "5. Copper Wire" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 Up swing. Vocabulary: pentatonic, superimposition, wide, side-slip. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { aes1*8/16:m7 des1*8/16:7.5+.9+ fis1*16/16:maj7 fis1*8/16:m7 b1*8/16:7.5+.9+ e1*16/16:maj7 d1*32/16:sus4.7 g1*16/16:sus4.7 f1*16/16:sus4.7 fis1*64/16:m7 ees1*8/16:maj7 fis1*8/16:7 b1*8/16:maj7 d1*8/16:7 g1*8/16:maj7 bes1*8/16:7.5+.9+ ees1*16/16:maj7 bes1*16/16:m7.5- ees1*16/16:7.5+.9+ aes1*32/16:m6 e1*8/16:maj7 g1*8/16:7 c1*8/16:maj7 ees1*8/16:7 aes1*8/16:maj7 b1*8/16:7.5+.9+ e1*16/16:maj7 b1*32/16:sus4.7 e1*16/16:sus4.7 d1*16/16:sus4.7 bes1*16/16:m7 ees1*16/16:7.5+.9+ aes1*32/16:maj7 } }
\new Staff { \time 4/4 \tempo "Up swing" 4 = 300 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers des''8\mf f''8 r8 ees''8-> d''16 b'16 a'16 e'16 \tuplet 3/2 { a'8 g'8 e'8 } |
 f''8\mf ais'8 f''16 cis'16 dis''8 cis'16-- f''16 fis'8-. r8 f''8-. |
 \tuplet 3/2 { g''8 d''8 cis''8 } gis'8 dis'8 r4 dis'8-> dis'8 |
 dis'8 cis'8 dis'8 g'8 ais'8-. cis''8 dis''8-> dis''8-^ |
 r4 f''8 gis''8 ais''4-> ees'''8 bes''16-- aes''16 |
 \tuplet 5/4 { f''16-^ cis''16 f''16 ees''16-> des''16-> } \tuplet 6/4 { c''16-> e''16 d''16 g''16 e''16-> a''16 } g''8-.\ff c'''16 a''16 e''8 g''16 d''16 |
 f'8 f''8 g'4-- r8 f''8 g'8-- e''8 |
 \tuplet 6/4 { f'''16 d''16 ees'''16 ees''16 f'''16 f''16 } r4 \tuplet 3/2 { f'''8( g''8 d'''8) } ees''16( f'''16 ees''16 bes''16) |
 fis'8 e''8-. dis'16-> dis''16-^ dis'8 \tuplet 3/2 { dis''8 cis'8 dis''8 } \tuplet 5/4 { fis'16-. fis''16 e'16 fis''16 fis'16-> } |
 dis''16( e'16 cis''8) cis'8 cis''8 \tuplet 3/2 { cis'8( a'8 cis'8) } gis'8 cis'8-- |
 gis'4 r4 cis'8 cis''8 e'8\mp gis''16 e'16 |
 \tuplet 3/2 { dis''8-^( gis'8-. a''8) } gis'16( fis''16 e'8->) \tuplet 3/2 { fis''8( gis'8 e''8->) } fis'8-> fis''8 |
 \tuplet 3/2 { aes''8 e''8-- b'8 } bes'16 g'16-> ees'16 a'16 g'8 f'8 d'8 e'8 |
 dis'8\mf cis'8-- cis'8 cis'16 cis'16 des'16-> b16 cis'16-> f'16 aes'8 fis'8 |
 r4 a''8 a'8 aes'8 e'8 r8 ges'8 |
 r8 bes''8-. ees''8 f'''8 r8 bes''8-> \tuplet 3/2 { f'''8( g''8 d'''8) } |
 f'''16( d'''16 c'''16-> g''16->) \tuplet 3/2 { ges''8 e''8-- b'8 } des''8 des''8 r4 |
 d''8-> a'8 e'8 fis'8 e'8( a'16 d''16) g''8->\p ees'8-- |
 \tuplet 3/2 { d'8 d'8 e'8 } r8 d'8 \tuplet 6/4 { ges'16-.( e'16 d'16-> d'16 d'16 d'16) } e'8 bes'8 |
 \tuplet 3/2 { aes'8 ees'8 f'8 } ees''8-> des''8 aes'8 bes'8 aes''16-. f''16-> des''8 |
 r4 d''8 ais'16-> gis'16 ges'8 e'8 f'4 |
 e'8 fis'8-> a'8 d''8 r8 bes''8 r8 c''8 |
 \tuplet 3/2 { des''8 aes'8-> ees'8-> } \tuplet 5/4 { bes'16--( aes'16 ees'16-- bes'16 c'16) } des'8 des'8 \tuplet 3/2 { c'8-- d'8 g'8 } |
 r4 a'16->( b'16-> d''16 g''16) d''16( cis''16-> gis'16 ais'16) fis'8( gis'16 dis'16--) |
 d'8 f'8 r8 gis'8 ais'8 d''8 r8 f''8 |
 gis''16( ais''16 d'''8) r4 \tuplet 5/4 { f'''16->( d'''16 bes''16 gis''16 f''16-.) } \tuplet 3/2 { d''8( bes'8 a'8) } |
 ais'16( c''16 f''8) e''8-> a''8 fis''4-> r8 b''8-> |
 g'16 d''16-^ g'8 e''4 d'8->\mf a'8-- r4 |
 f''8 ees''8 bes'8 c''16 bes''16 g''8 ees''8 f''16 c''16 ees''8 |
 e''8-> fis''8 r8 a''8-> r4 des'''8 a''8-. |
 f'''8 bes''8-- r8 f'''8-> \tuplet 3/2 { aes''8( ees'''8 f''8) } ees'''16 c''16 ees'''16 g''16-. |
 f'''8-> bes''8 \tuplet 3/2 { f'''8( g''8 ees'''8) } g''16\mp f'''16 bes''8 f'''4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "6. Static Bloom" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 Medium-up swing. Vocabulary: 4ths, bebop, triad pair, pentatonic. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { a1*8/16:m7 d1*8/16:7 aes1*8/16:m7 des1*8/16:7 g1*8/16:m7 c1*8/16:7.11+ fis1*16/16:maj7 des1*8/16:m7 fis1*8/16:7 c1*8/16:m7 f1*8/16:7 b1*8/16:m7 e1*8/16:7.11+ bes1*16/16:maj7 g1*32/16:m7 aes1*16/16:m7 g1*16/16:m7 fis1*32/16:sus4.7 b1*16/16:sus4.7 a1*16/16:sus4.7 a1*32/16:7.11+ g1*32/16:7.11+ e1*8/16:maj7 g1*8/16:7 c1*8/16:maj7 ees1*8/16:7 aes1*8/16:maj7 b1*8/16:7.5+.9+ e1*16/16:maj7 ees1*64/16:m7 bes1*16/16:m7 ees1*16/16:7.5+.9+ aes1*32/16:maj7 } }
\new Staff { \time 4/4 \tempo "Medium-up swing" 4 = 220 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers c''8->\mf a'8 \tuplet 3/2 { fis'8-. g'8 g'8-. } r8 g'8 d'4-> |
 des'8 aes'16 ees'16 f'8 f'16-> bes'16 r4 r8 bes'8 |
 \tuplet 3/2 { bes'8( dis''8-. aes''8) } ges''16->\p c''16-. g'16-> d'16-. bes'8 g'8 d'8->\mp f'8-- |
 f'8 dis'8 c'8-> c'8 \tuplet 5/4 { c'16-> dis'16 f'16 ais'16-. f'16 } gis'4 |
 r4 aes'8 ees'8 e'4 \tuplet 5/4 { b'16 gis''16 ais''16 fis''16 cis'''16 } |
 \tuplet 5/4 { ees'''16( g''16-> bes''16 c'''16 a''16) } f'''8 ees'''8-^ r4 ees'''8 f'''8 |
 e'''8-^ ees'''8 d'''16--( cis'''16-> b''16-. a''16) gis''16 cis'''16-> fis''16 e'''16-. fis''8 b''8 |
 c'''8 d'''8-> e'''4 e'''8 e'''16 d'''16 \tuplet 3/2 { c'''8 g''8 c'''8 } |
 c'''8 f'''8 r8 bes''8 \tuplet 6/4 { gis''16 d'''16 a''16 e''16-> b'16 bes''16 } f''8 c''8-- |
 \tuplet 3/2 { g'8( g''8 d''8-^) } r4 \tuplet 5/4 { a'16 b'16-> a''16 e''16-. b'16 } cis''16( bes''16 f''8) |
 \tuplet 3/2 { bes''8 g''8 aes''8-> } \tuplet 3/2 { aes''8 bes''8 b''8 } \tuplet 5/4 { f'''16-- d'''16 ees'''16 ees'''16 f'''16-> } ees'''8 des'''8 |
 c'''8 b''8 bes''8 a''8 g''8 a''8-> g''16-.( f''16 e''8->) |
 \tuplet 6/4 { e''16 dis''16-- cis''16 b'16 cis''16 dis''16 } r4 \tuplet 3/2 { cis''8 b'8 ais'8 } \tuplet 3/2 { gis'8 fis'8-> f'8-. } |
 e'8( cis'16 ais'16) b8-> b8 cis'8 dis'8 e'8 f'8-^ |
 r4 e'8 cis'8-> a'8->\ff e'8-. b16( gis'16 a'16 cis'16--) |
 cis'16( d'16-^ e'16-. fis'16) g'8 gis'8-. r4 a'8 b'8 |
 cis''16-> e'16-> a'8 \tuplet 5/4 { fis'16 dis'16-- b'16 cis''16 a''16 } e'''16 fis''16 b''16 dis''16 e''8-> a'8-. |
 cis'16(\p b16-> fis'16-> dis''16) \tuplet 3/2 { e''8 cis'''8-> a''8 } b''8 dis'''16-^ fis''16 \tuplet 3/2 { e''8 a'8-> cis'8 } |
 \tuplet 3/2 { b8( g'8-> d''8->) } cis''8 a''8 r4 e'''16--( g''16 b''16 d''16) |
 cis''8 e'8-> \tuplet 6/4 { a'16 g'16-^ d'16-- b'16 cis''16-. a''16-> } \tuplet 3/2 { e'''8-- g''8-- b''8 } d''16-> cis''16 e'16 a'16 |
 cis''8 ais'8 b'8-- b'8 \tuplet 3/2 { a'8-- f''8 c'''8 } b''8 g''8-- |
 fis''8 e''8 r4 ees''8-^ f''8 ees''4 |
 d''8-> g''8-^ \tuplet 3/2 { f''8-> bes''8 g''8 } g''4-- \tuplet 3/2 { f''8( c''8 d''8-.) } |
 r4 e''8-^ gis'8 \tuplet 3/2 { b8 ais'8-> fis'8 } cis''8 e''8 |
 ees''8-> bes'8-. f'16 c'16-- f''16 c''16 g'8-. d'8 \tuplet 3/2 { ees''8 bes'8 f'8-> } |
 r4 c'8 f''8 bes''4 ees'''4 |
 aes''8 ges''8 des''8 aes'8 r4 bes'8 bes''8-> |
 ees'''8 aes''8 \tuplet 6/4 { des'''16 aes''16 ees''16-> bes'16 f'16 bes''16 } f''8 c''8 r8 g'8 |
 r8 ees''8 c''8 g'8-> bes'8 g''8-. r4 |
 fis''16-> a''16 des'''16-> b''16-> b''8-> a''8 e''4 fis''16 fis''16 a''16 des'''16-. |
 c'''4-^ d'''8( ees'''16 e'''16) f'''16 e'''16 ees'''16 d'''16-. bes''8-- g''8-> |
 aes''8 f''8 d''8 ees''8 \tuplet 6/4 { d''16( b'16 c''16-. bes'16-> g'16 aes'16) } aes'4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "7. Switchback" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 Up swing. Vocabulary: superimposition, bebop, wide, triad pair. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { g1*16/16:m7 c1*16/16:7.5+.9+ f1*32/16:maj7 d1*32/16:7.11+ c1*32/16:7.11+ g1*64/16:m7 ees1*8/16:maj7 fis1*8/16:7 b1*8/16:maj7 d1*8/16:7 g1*8/16:maj7 bes1*8/16:7.5+.9+ ees1*16/16:maj7 aes1*64/16:m7 c1*32/16:m7 des1*16/16:m7 c1*16/16:m7 f1*8/16:m7 bes1*8/16:7.5+.9+ ees1*16/16:maj7 ees1*8/16:m7 aes1*8/16:7.5+.9+ des1*16/16:maj7 g1*16/16:m7 c1*16/16:7.5+.9+ f1*32/16:maj7 } }
\new Staff { \time 4/4 \tempo "Up swing" 4 = 280 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers bes'4-.\mf d''16->( f''16 e''8) g''8-> c'''8-> \tuplet 5/4 { d'''16( f'''16 bes''16 c'''16 g''16) } |
 r8 fis''8 \tuplet 3/2 { e''8( des''8-. bes'8) } fis'16 e'16-> des'16-- e'16 fis'8-> e'8 |
 f'8-. a'16 c''16 b'8-> d''8-> r4 g''16 a''16 c'''8 |
 f'''8-. g''8-> r8 d'''8 b''8 c'''8 r8 a''8 |
 gis''8-- f''16 des''16-- b'8\mp gis'8 f'8\f des'8 r8 b8 |
 cis'16-^\ff f'16 gis'16-. b'16 cis''8-> f''8 r4 gis''8 fis''8 |
 e''8 g''8 c'''8-. a''8 fis''8 d'''8 \tuplet 3/2 { e'''8->( c'''8-. g''8) } |
 r4 a'8-- d''8 fis''8 g''8-> e''4 |
 dis''8 fis''8 gis''8-> c'''8 ees'''8-- c'''8 aes''8( ges''16 ees''16) |
 c''8 aes'16 ges'16 ees'8 c'8 dis'8 fis'8 \tuplet 3/2 { gis'8 c''8 dis''8-> } |
 fis''16( gis''16 c'''16 ees'''16-^) r4 c'''4 aes''8\mp ges''8 |
 \tuplet 6/4 { ees''16 c''16 aes'16 ges'16 ees'16 c'16 } dis'8 fis'8 gis'8 c''8 dis''8 f''8 |
 g''8-^ ees''8 bes'8 c'8 b8\mp e'8 \tuplet 5/4 { gis'16( ais'16-> cis''16 fis''16 gis''16) } |
 r8 fis''8-- dis''8( b'16 gis'16) \tuplet 6/4 { g'16( e''16-> c'''16 d'''16-^ a''16 fis''16) } e'''8 g''16 c'''16 |
 r4 b''8 cis'''8 cis'''8 b''8 bes''4 |
 r8 bes''8-> b''8 c'''8 d'''8-- ees'''8 \tuplet 3/2 { f'''8 ees'''8-. d'''8 } |
 d'''8-- f'''8 d'''8 b''8-> g''8 f''8 d''8\p b'8-> |
 g'16 f'16 d'16 b16 d'16( f'16 g'16-- b'16) r4 d''8 f''16 g''16 |
 \tuplet 3/2 { b''8-. d'''8 f'''8 } d'''8 b''8 \tuplet 6/4 { g''16( f''16 d''16 b'16 g'16 f'16) } \tuplet 3/2 { d'8 b8 d'8-> } |
 f'8-^ g'8 \tuplet 6/4 { b'16( d''16 f''16-. g''16 b''16 d'''16->) } f'''16 d'''16 b''8 g''16-> f''16 d''16 b'16 |
 \tuplet 5/4 { bes''16( d''16 a''16-> a'16-> a''16) } g'16( ees''16-> c'8) \tuplet 5/4 { g'16 c'16-> bes'16-- ees'16 c''16-> } r4 |
 d'16-.( a'16 c'16 a'16) d'8 ees''8 c'8 d''8 c'4 |
 \tuplet 6/4 { c'16->( e'16 g'16 bes'16 c''16 e''16) } g''4-> bes''8 c'''8 e'''16( c'''16-- b''8) |
 bes''8 ees'''16 g''16 c'''16( f'''16 a''16 bes''16) g''8 ees'''8 f''16 a''16 c'''16 bes''16 |
 aes''8-- c'''8 r4 r8 ges''8-. d'''8 ges''8 |
 r8 e''8-> d''8\mf b'8 aes'8 e'8-> d'16( b16 d'16 d'16->) |
 des'8--( c'16 des'16) \tuplet 3/2 { ees'8( f'8 ges'8) } e'8-> aes'8-. \tuplet 3/2 { b'8( d''8 ges''8) } |
 \tuplet 3/2 { ges''8 d''8-- c''8 } r4 a'16 ges'16 d'16 c'16 \tuplet 3/2 { d'8( ges'8 f'8) } |
 \tuplet 3/2 { f'8 e'8 f'8 } g'8-^ a'8 r8 bes'8 e''16( cis''16-> d''16 d''16-^) |
 des''8 dis''8 \tuplet 6/4 { e''16 bes''16-> g''16 aes''16 aes''16 des'''16 } b''8 c'''8 c'''8 des'''8-> |
 cis'''8 d'''8 g''8-.( e'''16 f'''16) \tuplet 6/4 { g''16 e'''16 f'''16 f'''16-> e'''16 d'''16-> } r4 |
 \tuplet 3/2 { des'''8 c'''8 b''8 } gis''8 a''8-. a''8 g''8-> a''4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "8. Iron Lantern" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 Burnout swing. Vocabulary: wide, pentatonic, 4ths, bebop. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { d1*16/16:m7.5- g1*16/16:7.5+.9+ c1*32/16:m6 ees1*16/16:m7.5- aes1*16/16:7.5+.9+ des1*32/16:m6 bes1*32/16:sus4.7 ees1*16/16:sus4.7 des1*16/16:sus4.7 ees1*64/16:m7 a1*16/16:m7 d1*16/16:7.5+.9+ g1*32/16:maj7 f1*32/16:m7 fis1*16/16:m7 f1*16/16:m7 ees1*16/16:m7 aes1*16/16:7.5+.9+ des1*32/16:maj7 aes1*8/16:m7 des1*8/16:7 g1*8/16:m7 c1*8/16:7 fis1*8/16:m7 b1*8/16:7.11+ f1*16/16:maj7 } }
\new Staff { \time 4/4 \tempo "Burnout swing" 4 = 320 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers c''8\mf bes'8-> r8 g'8-> aes'16->( aes'16 g'8) e'8( f'16 f'16-.) |
 \tuplet 3/2 { f'8->( aes'8 ais'8-.) } ees''8 ais'8 cis''8 ees''8 r4 |
 \tuplet 3/2 { ees'''8->( ees''8-. ees'''8->) } d''8( a''16 g'16) d''8 c'8 a'16( c'16-> c''16 c'16) |
 \tuplet 3/2 { c''8-> d'8 d''8-^ } r4 g'8-. d''8-. d'8 ees''8-> |
 ees''8 des''8-> b'8-. aes'8 a'8( a'16 aes'16->) ges'8-> f'8 |
 e'8-> b8 d'8 b8 r4 b8-.( e'16-^ d'16) |
 des'8 ges'8-> r8 b'8 e''8 ees'8 aes'4-> |
 des''8-> b'8 des'8 aes'8 ees'4 r4 |
 r8 aes'8 r8 c'8 c''8 c'16-> c''16 \tuplet 3/2 { ees'8( ees''8 aes'8) } |
 f''16 aes'16-> c'''16 ees''16 ees'''8 aes''8 \tuplet 3/2 { f'''8( bes''8 f'''8) } aes''8 f'''8 |
 c'''8 c''8-. aes''8-> des''8-. r4 aes''8\ff aes'8-> |
 des'16 des''16 b16 bes'16-- r8 b8 des''16 des'16-. ees''16 b16 aes'8-> des'8 |
 r8 bes'8 c'8 bes'8 r8 des'8 ees''8-> c'8-> |
 \tuplet 3/2 { des''8-> des'8 f''8-> } des'16 f''16-> f'16-. c''16 ees'8 ges''8 r4 |
 ges'8 f''8 ges'8-. ees''8 c'16( c''16 f'16 f''16) \tuplet 3/2 { ges'8( des''8 ees'8) } |
 c''8 f'8 f''8( f'16 c''16) \tuplet 3/2 { des'8--( f''8 ges'8-^) } r4 |
 fis'8 b'8 e''4 a''8-- e'8-. a'16 d''16 c''16 c'16 |
 c'8-> f'8 \tuplet 3/2 { bes'8-- ees''8-> c'8 } r4 g'16-> d'16-> e'8 |
 e'8 b8 r8 fis'8 cis'8-> d'8 g'8( c''16 bes'16--) |
 \tuplet 6/4 { e'16( b16 fis'16-- aes'16 d'16 g'16) } c''16--\ff bes'16 e'16 a'16-> \tuplet 3/2 { d''8-.( c''8 g'8) } \tuplet 3/2 { d'8 a'8 e'8 } |
 ees'16 aes'16-> des''8-. b'8 d'8-. r8 g'8 r8 c''8 |
 r4 r8 bes'8-> c'8 g'8 d'16-> a'16 d'8 |
 cis'8-- dis'8-- r8 e'8-> fis'16 gis'16 a'8 bes'8 a'8-> |
 bes'8-> c''8 \tuplet 3/2 { d''8 g''8 d''8 } r4 \tuplet 3/2 { f''8 g''8-> c'''8 } |
 des''8-.\mp ees'''8 des''8-^ bes''8-. r8 des''8 bes''8 ges'8 |
 ges'8( aes'16 a'16) d''8\p b'8-> r4 c''8 c''16-^ d''16 |
 \tuplet 3/2 { des'8 des''8-> c'8 } r8 ees''8-> aes'4 \tuplet 6/4 { ees''16 f'16-. aes''16 f'16-> c''16-> des'16 } |
 c''8 des'8 c''8 c'8 r8 des''8 des'16( des''16 des'8--) |
 \tuplet 6/4 { des'16( des'16-. des'16 des'16 ees'16-> des'16->) } r4 b4-> \tuplet 3/2 { b8 des'8 b8 } |
 c'8-. c'8-> c'8( c'16-> c'16-.) r8 c'8 c'8 c'8 |
 b8 fis'8-> \tuplet 6/4 { cis'16( gis'16 cis'16 fis'16-> b'16-- a'16) } a'8 gis'8 fis'8 gis'8 |
 \tuplet 5/4 { g'16( d'16-- a'16 b16 e'16) } r4 a'8\p d''8 g''4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "9. Paper Moons" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 Fast swing. Vocabulary: triad pair, bebop, pentatonic, side-slip. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { aes1*32/16:7.11+ fis1*32/16:7.11+ a1*8/16:m7 d1*8/16:7.5+.9+ g1*16/16:maj7 g1*8/16:m7 c1*8/16:7.5+.9+ f1*16/16:maj7 e1*16/16:m7 a1*16/16:7.5+.9+ d1*32/16:maj7 g1*8/16:m7 c1*8/16:7.5+.9+ f1*16/16:maj7 f1*8/16:m7 bes1*8/16:7.5+.9+ ees1*16/16:maj7 des1*8/16:maj7 e1*8/16:7 a1*8/16:maj7 c1*8/16:7 f1*8/16:maj7 aes1*8/16:7.5+.9+ des1*16/16:maj7 fis1*32/16:sus4.7 b1*16/16:sus4.7 a1*16/16:sus4.7 f1*32/16:m7 fis1*16/16:m7 f1*16/16:m7 d1*32/16:7.11+ c1*32/16:7.11+ } }
\new Staff { \time 4/4 \tempo "Fast swing" 4 = 260 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers c''16--(\mf ees''16 aes''16 bes''16) d'''16-- f'''16-> aes''8-. ees'''8-- c'''8 bes''4-> |
 f''4 d''8 ees''8 c''8\f aes'8 f'8 d'8 |
 cis'8 e'8 fis'8-. b'8 fis'16( gis'16 b'16 e''16) \tuplet 3/2 { b'8--( cis''8-> e''8) } |
 gis''8 e''8-> fis''8 gis''8 r4 \tuplet 3/2 { cis'''8 gis''8-> fis''8 } |
 d'''8 b''8-^ \tuplet 3/2 { fis''8-.( a''8 e''8) } \tuplet 5/4 { fis''16 b''16 e'''16-> ees'''16 bes''16 } f''8\p c''8 |
 r4 b'16 e''16-> cis''8 d''8 d''8 dis''8 e''8 |
 f''8 d''8 bes'16->( c'16 e'16 g'16->) fis'8 dis'8-^ des'8 des'8 |
 d'8 b8 b8 b8-> b8-> b8 \tuplet 3/2 { d'8 g'8-> d'8-^ } |
 a'8 fis'8-> r4 cis'8 e'8 \tuplet 3/2 { cis''8-> b'8-> fis'8-> } |
 r8 aes'8 e'8 bes'8-. g'4-> dis'4 |
 r8 dis'8 r4 \tuplet 5/4 { ais'16 g''16 a''16 f'''16 c'''16 } ees'''8-> g''16 bes''16 |
 a''8 d''8-> fis'16-- e'16 gis'16 b16 d'16( a'16 fis'8) r4 |
 c'8-. d'8-- r8 g'8 fis'16( des'16 dis'8) des'8 des'8-. |
 \tuplet 3/2 { des'8( c'8 b8) } c'8 cis'8 d'8 e'8 f'8 g'16 a'16 |
 r4 ees'8-> fis'8-. ges'8 cis'8-^ e'8 b16 cis'16 |
 c'8-> d'8 g'16( f'16 f'16 g'16->) c''8( a'16-. a'16-^) c''8-> f''8 |
 f''8 aes''8 \tuplet 5/4 { des'''16( g''16 bes''16 ees'''16 des'''16--) } cis'''4 \tuplet 3/2 { d'''8( cis'''8 b''8) } |
 d'''16 f''16 e''16 a''16-> cis'''4 r4 c'''8->\p b''8 |
 \tuplet 6/4 { des'''16--( bes''16 ges''16 ees''16 c''16 a'16) } f'8-. d'8 \tuplet 3/2 { d'8 e'8 ges'8 } aes'8-^ a'8 |
 aes'8 des''8 f''8-> ees'''8 bes''8-. g''8 aes''16( des'''16 f'''16 bes''16->) |
 r4 gis''8-> b''8 \tuplet 3/2 { e'''8 fis''8 dis'''8 } b''16-. b''16-> gis''8 |
 r8 e''8-. \tuplet 6/4 { dis''16 b'16 fis'16 e'16-> b16 gis'16 } r8 fis'8-. b16(\f dis'16-> e'8) |
 \tuplet 3/2 { f'8-> ais'8 dis''8 } cis''16 g'16 c''8 \tuplet 5/4 { f''16( e''16 a''16 d'''16 c'''16->) } \tuplet 3/2 { dis''8( bes'8 f'8-.) } |
 g'16( b16 d'16-. d'16) r8 a'8-> r4 \tuplet 3/2 { fis'8-.( g'8 d''8) } |
 d''8-^ ees''8 f''16 g''16 aes''8-> d'''8-^ b''8-- c'''8 c'''16 bes''16-> |
 a''16->( bes''16 c'''8) d'''16( ees'''16 f'''16-> ees'''16) d'''8 c'''8 bes''8 a''8 |
 bes''8 f''8 c''4 b'8 e''8 a''4-> |
 a''8 cis'''16 e'''16-^ r4 b''16( c'''16 aes''8) ees''16( f'16 bes'8-.) |
 \tuplet 3/2 { a'8-^ fis'8 d'8-> } gis'16 e'16 b8 \tuplet 3/2 { d'8( fis'8 a'8) } e''16-- b'16 gis'16 a'16-^ |
 r4 d''4 \tuplet 3/2 { fis''8-. e'''8 b''8 } gis''8 a''8 |
 des'''16-> f''16 aes'16 g'16 \tuplet 3/2 { bes'8 ees'8 cis'8 } aes'8 f'8 r4 |
 \tuplet 5/4 { e'16-> g'16 c''16-> a''16 fis''16 } d''8-> e''8 r8 g''8 c'''4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "10. Coastline" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 Straight-8th fusion. Vocabulary: side-slip, wide, triad pair, bebop. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { e1*16/16:m7 a1*16/16:7.5+.9+ d1*32/16:maj7 d1*8/16:m7 g1*8/16:7.5+.9+ c1*16/16:maj7 c1*8/16:m7 f1*8/16:7.5+.9+ bes1*16/16:maj7 e1*32/16:7.11+ d1*32/16:7.11+ g1*32/16:sus4.7 c1*16/16:sus4.7 bes1*16/16:sus4.7 e1*64/16:m7 g1*8/16:m7 c1*8/16:7.5+.9+ f1*16/16:maj7 f1*8/16:m7 bes1*8/16:7.5+.9+ ees1*16/16:maj7 bes1*64/16:m7 a1*8/16:m7 d1*8/16:7.5+.9+ g1*16/16:maj7 g1*8/16:m7 c1*8/16:7.5+.9+ f1*16/16:maj7 } }
\new Staff { \time 4/4 \tempo "Straight-8th fusion" 4 = 200 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers d''16->\mf b'16 g'16 e'16-> cis'8 a'8 g'16--( b16 d'16 cis'16) r8 e'8-. |
 fis'8 cis''8-> bes''16 b''16 aes''8 \tuplet 3/2 { f''8 a''8 c'''8 } \tuplet 3/2 { bes''8-. g''8 dis'''8-> } |
 \tuplet 5/4 { d'''16 e'''16-. d'''16 cis'''16 b''16 } \tuplet 3/2 { gis''8 f''8 fis''8 } fis''8 e''8 d''16 cis''16 b'16 bes'16 |
 r4 \tuplet 3/2 { gis'8 f'8 fis'8 } fis'8 e'8 \tuplet 3/2 { d'8 cis'8 b8-. } |
 a'4 c'4 \tuplet 5/4 { ais'16 g'16 ees'16 cis'16 f'16 } aes'8 g'8 |
 \tuplet 5/4 { aes'16 f'16-> cis'16 g'16 dis'16-> } bes'8 g'8-- \tuplet 5/4 { c''16-> e''16-> fis''16 a''16 d'''16-> } r4 |
 ees'''8-> g''8 bes''16 c'''16 a''16-> f'''16 r8 e'''8-- d'''8 des'''8-> |
 d'''16( bes''16 f''8) r4 e''8 c''8 g'8-> f'8 |
 e'4-. \tuplet 3/2 { ais'8 g'8 gis'8 } gis'8-> e''8-. r4 |
 cis''8 d''8-> d''8 cis''8 r8 ais'8 \tuplet 3/2 { b'8 b'8 cis''8-. } |
 d''8->\ff a'8 \tuplet 3/2 { fis'8-> e'8-. b8 } gis'8 fis'8-> a'8 d'8 |
 r4 r8 e'8-> gis'16 b'16 d''16-^ fis''16 a''8 gis''8-> |
 bes''8 fis''8 aes''8 dis''8 ges''8-> cis''8 r4 |
 ees''8 bes'16 a'16 c''8\f f''8 d''8-- d''8-> \tuplet 3/2 { f''8 a''8 g''8 } |
 g''8 a''8 bes''16( b''16-. g''8) \tuplet 5/4 { e'''16( f'''16 f'''16-. e'''16-. c'''16) } a''16-> bes''16 bes''8 |
 c'''8-- ees''16-> aes'16 g'8 bes'8-> \tuplet 6/4 { ees'16 c'16 aes'16 ees'16-> ees'16 bes'16 } g''16( aes''16 ees'''16 c'''16) |
 r4 f'''8( f'''16-> d'''16) f'''8 c'''8 d'''8 f'''8-- |
 \tuplet 5/4 { f'''16( f'''16 f'''16 d'''16 f'''16-.) } \tuplet 3/2 { c'''8 d'''8 f'''8 } f'''8 e'''8 e'''4->\mf |
 \tuplet 3/2 { e'''8->( e'''8 e'''8->) } \tuplet 3/2 { e'''8( cis'''8 e'''8->) } \tuplet 3/2 { e'''8( e'''8-> e'''8) } e'''4 |
 r8 e'''8 r4 e'''8 cis'''8-> e'''8 e'''8 |
 a''8 e'''8 \tuplet 3/2 { g''8( d'''8 f''8) } g''4 \tuplet 6/4 { d''16( a'16 aes'16 des''16 fis''16-> b''16--) } |
 a''8-^ f'''8 \tuplet 3/2 { c'''8( d'''8-. g''8) } r4 b''8-- c'''8 |
 aes'8 ees''8 f'8 g''8 ges''8 cis''8-> bes'16 b'16-- aes'16 e'16 |
 ees'8-. bes'8-^ g'4 c'8 a'8 \tuplet 3/2 { f'8->( g'8 bes'8) } |
 r4 bes'8 c''16-> g''16 e''8-. f''8-. \tuplet 3/2 { bes''8( g''8-. aes''8) } |
 aes''8-> bes''8 c'''16 des'''16-. g''8 e'''8 f'''8 \tuplet 6/4 { f'''16 ees'''16-^ f'''16 ees'''16 c'''16 des'''16-. } |
 des'''8 c'''8 r8 bes''8 \tuplet 3/2 { aes''8 g''8-> aes''8-. } bes''16-.( aes''16 g''16-> e''16) |
 f''8 ees''16 c''16 \tuplet 3/2 { des''8->( des''8 c''8) } \tuplet 3/2 { bes'8-^( aes'8 g'8) } r4 |
 bes'8-. f'8 e'8\mp d'8 d'8( bes'16 f'16) r8 c'8 |
 b16-> cis'16 d'16-> dis'16-> e'8-- fis'8 g'16-.( a'16 b'8) cis''8 d''8 |
 r8 f'8 d''8 g'8 \tuplet 3/2 { aes'8( dis'8 c'8-^) } bes'16( des'16 fis'8) |
 r4 a''8-> f'8-> \tuplet 5/4 { c''16( e'16-- f''16 d'16-> f''16) } e'4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "11. Firebreak" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 Up swing. Vocabulary: 4ths, superimposition, bebop, pentatonic. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { bes1*64/16:m7 e1*8/16:m7 a1*8/16:7.5+.9+ d1*16/16:maj7 d1*8/16:m7 g1*8/16:7.5+.9+ c1*16/16:maj7 fis1*8/16:m7 b1*8/16:7 f1*8/16:m7 bes1*8/16:7 e1*8/16:m7 a1*8/16:7.11+ ees1*16/16:maj7 aes1*16/16:m7.5- des1*16/16:7.5+.9+ fis1*32/16:m6 b1*8/16:m7 e1*8/16:7 bes1*8/16:m7 ees1*8/16:7 a1*8/16:m7 d1*8/16:7.11+ aes1*16/16:maj7 aes1*8/16:m7 des1*8/16:7.5+.9+ fis1*16/16:maj7 fis1*8/16:m7 b1*8/16:7.5+.9+ e1*16/16:maj7 bes1*32/16:sus4.7 ees1*16/16:sus4.7 des1*16/16:sus4.7 a1*32/16:m7 bes1*16/16:m7 a1*16/16:m7 } }
\new Staff { \time 4/4 \tempo "Up swing" 4 = 300 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers r8 ees''8 c''8-^ des''8 r8 des''8 \tuplet 6/4 { d''16 ees''16 bes''16-. g''16 aes''16-. aes''16-^ } |
 bes''8 c'''8 bes''8\mp aes''8 r8 g''8 e''16( f''16 ees''8) |
 r4 c''8 des''16 des''16-> \tuplet 5/4 { c''16 g''16 e''16 f''16-> f''16 } g''8 aes''8 |
 bes''8 c'''8 des'''16\ff d'''16 des'''8-> d'''8 ees'''8 \tuplet 5/4 { f'''16( ees'''16-. d'''16-. des'''16 c'''16->) } |
 b''16 cis'''16 fis''16 dis'''16 e'''16 e'''16 d'''8-> cis'''8 c'''8-> bes''8 a''8 |
 r4 \tuplet 3/2 { a''8( d'''8 g''8) } f'''8 gis''8 r8 dis''8 |
 d''8 e''8 \tuplet 6/4 { g''16( b''16-> g''16-> e''16 d''16 a'16) } aes'8 cis''8 ges''8 e''16 ais'16 |
 \tuplet 6/4 { b'16 cis''16-> f''16 gis''16 b''16 cis'''16-> } f'''8 des'''8-> r4 b''8 b''8 |
 bes''8 g''8 e''8-^ e''8-> e''8-. a''8 fis''4 |
 r8 bes'8 r4 bes'8 ees''8-> aes''8 cis'''8 |
 cis'''8 aes''8-. dis''8 f''8 e''8\p a''8 g''8 b''8 |
 \tuplet 3/2 { b''8-^( c'''8 d'''8) } ees'''8 d'''8-> c'''8-. b''8 bes''8( a''16 g''16) |
 ges''8\mp des''8-> r4 \tuplet 6/4 { aes'16-. dis'16-> d''16-. g''16 c'''16 f'''16 } ges''8-> b''8-^ |
 bes''4 g''8 e''8 c''8 bes'8 g'8-^( e'16 f'16-.) |
 f'4-^ ais'16 dis''16-> gis''16 dis'16-> bes'8 f'8 c'8-. cis'16-> fis'16 |
 b'8 a'8 b16( fis'16-> cis'16 gis'16) r4 b4 |
 \tuplet 3/2 { b8 b8 b8 } b8 b8 fis'8 e'8 b8 d'8 |
 d'8 des'8 r4 \tuplet 3/2 { des'8-^( fis'8 b'8->) } a'16-^ c'16 g'16 d'16-> |
 \tuplet 3/2 { cis'8 dis'8 g'8 } g'4 fis'8 cis'8-> gis'8 dis'8-> |
 ees'8 bes'8 f'16( g'16-> d'16-- g'16--) c''8 f''8 ees'16-- aes'16 cis''16 fis''16 |
 f''16( ees''16-^ des''8-.) aes'4-> g'16--( f'16-> d'16-> b16) d'8-> b8 |
 r4 r8 c'8 g'8(\p d'16 a'16) c'8 f'8 |
 fis'16( cis'16 dis'16 b16) cis'8 fis'8 \tuplet 3/2 { g'8-> ais'8 c''8 } \tuplet 5/4 { e''16-- g''16 ais''16 c'''16 a''16-> } |
 r4 gis''8 fis''8 \tuplet 3/2 { e''8->( dis''8 cis''8) } c''8 b'8 |
 \tuplet 3/2 { b'8-.( d''8 e''8) } aes''8 b''8 d'''8 e'''8 d'''16( b''16-> aes''8) |
 r8 e''8 d''8 b'8 r8 aes'8 r4 |
 aes'16( g'16 f'16 ees'16) ees'8 c'8 \tuplet 6/4 { des'16 des'16 c'16 des'16 d'16 ees'16-. } f'4\ff |
 f'8-> c'8 r4 g'8-. d'8 ges'8 b'8 |
 b'4 d''8 e''8 \tuplet 3/2 { a''8( e''8 fis''8) } a''8 d'''8 |
 a''16-> fis''16 e''8 b'8 e''8 d''8-> b'8 \tuplet 3/2 { fis'8 b'8 a'8-> } |
 a'16 g'16 e'8 des'4-> e'8 g'8 aes'4 |
 r4 d'4 e'16 a'16-> fis'16-. b16 b4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "12. Overpass" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"4/4 Medium-up swing. Vocabulary: 4ths, triad pair, side-slip, pentatonic. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { f1*32/16:m7 fis1*16/16:m7 f1*16/16:m7 c1*8/16:m7 f1*8/16:7 b1*8/16:m7 e1*8/16:7 bes1*8/16:m7 ees1*8/16:7.11+ a1*16/16:maj7 des1*32/16:7.11+ b1*32/16:7.11+ ees1*32/16:7.11+ des1*32/16:7.11+ g1*32/16:m7 aes1*16/16:m7 g1*16/16:m7 c1*8/16:m7 f1*8/16:7.5+.9+ bes1*16/16:maj7 bes1*8/16:m7 ees1*8/16:7.5+.9+ aes1*16/16:maj7 aes1*32/16:m7 a1*16/16:m7 aes1*16/16:m7 c1*8/16:m7 f1*8/16:7.5+.9+ bes1*16/16:maj7 bes1*8/16:m7 ees1*8/16:7.5+.9+ aes1*16/16:maj7 } }
\new Staff { \time 4/4 \tempo "Medium-up swing" 4 = 220 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers \tuplet 3/2 { cis''8--( a''8 e'''8--) } fis''8 b''8 r8 ees''8 e''16(\mf a'16-> cis'16-> b'16) |
 \tuplet 3/2 { aes'8->( ees''8 c'''8) } r8 d'''8-- bes''16-> f'''16 ees'''16 aes''16 c'''8 bes''8-. |
 d'''16 f''16 bes'16 g'16 r4 c'16( a'16-^ cis'16-^ e'16) dis'8-> fis'16-. b'16 |
 \tuplet 6/4 { c''16 ees''16 aes''16-> bes''16 d'''16 f'''16-> } aes''16 ees'''16 c'''16 bes''16 f''8-. d''8 ees''8 c''8-- |
 r4 aes''8-> fis''8 f''16( g''16-. c'''8) bes''8( bes''16 g''16) |
 fis''16 a''16 d'''16-> e'''16 b''16 gis''16-> a''8 a''8 fis''8 d''8 b'8 |
 des''8-> f''8 aes''8\p g''8 g''8--( d''16 a'16) b'8-> ees''8 |
 r8 f''8 bes''8 a''8 e''8 b'8 r4 |
 b'8 e''8 a''4 d'''8 bes'8 f'4 |
 c'8-> d'8 g'8 c''8-. r8 f''8 ees''8-. ees'16 aes'16-> |
 fis'16-.( b'16 dis''8) f''8 gis''8-> \tuplet 3/2 { cis'''8 dis'''8-. b''8-- } fis''16( f''16 cis''8) |
 \tuplet 5/4 { gis'16 fis'16 dis'16 b16 gis'16 } r4 \tuplet 3/2 { cis'8-> f'8 fis'8 } \tuplet 3/2 { b'8( dis''8-. f''8-.) } |
 r8 ees''8 g''8\f bes''8 r8 f'''8 \tuplet 3/2 { c'''8( a''8 bes''8) } |
 ees'''8-> g''8-> c'''8 f'''8-> a''8 bes''8 g''8 ees'''8 |
 r4 fis''8-- d'''16 a''16 e'''8 aes''8 r8 b''8 |
 a''16 d''16 des''8 f'8 aes'8 g'8-> ees'16 bes'16 \tuplet 3/2 { des''8 aes''8 f'''8 } |
 e'''4 r4 d'''16-. c'''16 g''8 c'''4-> |
 d'''8-^\ff e'''8 r8 e'''8 e'''16( d'''16 c'''16 g''16) c'''8-. d'''8 |
 ges''8 ges''8 e'''8 ges''8 f'''8-> f'''8-. f'''8-> f'''8 |
 fis''4 ees'''16 b''16 aes''16-> f''16 f''16 d''16 bes'8 c'8 e'8 |
 r4 ees'4-^ \tuplet 5/4 { ees'16 gis'16-> des''16 ges''16-^ des'16 } r8 gis'8 |
 \tuplet 5/4 { bes'16 aes'16 dis'16 f'16 f'16 } ees'8 des'8-. c'8( c'16 c'16) c'16( c'16 c'16 d'16) |
 r4 des'8-> fis'8 \tuplet 5/4 { fis'16 b16 ees'16 des'16 a'16 } e'8 ees'8 |
 ees'8-> bes'8-> f'8 g'8 \tuplet 3/2 { c'8 f'8 bes'8 } ees''8\mf c'8 |
 r8 d'8-> d'8 d'8 r8 d'8-. r8 e'8 |
 \tuplet 6/4 { d'16 d'16-- des'16 ees'16 f'16-> bes'16 } r4 f'8 aes'8 bes'8-. ees''8 |
 r8 d''8-> g''16( c'''16-> f'''16-^ fis''16) des''16-^( aes'16 dis'8) r8 e''8 |
 ees''8 des''8 aes'4-> bes'8 bes'8-. r4 |
 b'8( e'16 ees'16) r8 bes'8 b'4-> gis'8-> ees'8 |
 a'8 g'8 \tuplet 5/4 { d'16( e'16-> d''16 c''16-. g'16--) } \tuplet 3/2 { a'8-> g''8 e''8 } c''16 d''16 c'''8 |
 ges''8-. fis''8 f'''8-> ees'''8 e'''8 des'''8 a''16( b''16 b''16 des'''16) |
 c'''8 bes''8 r4 f''8 g''8-. g''4-> \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "13. Low Orbit" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"7/8 Straight 8ths, 2+2+3. Vocabulary: wide, bebop, 4ths, side-slip. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { a1*14/16:m7 d1*14/16:7.5+.9+ g1*14/16:maj7 e1*14/16:7.11+ g1*28/16:m7 f1*14/16:m7 bes1*14/16:7.5+.9+ ees1*14/16:maj7 fis1*28/16:7.11+ ees1*14/16:m7 aes1*14/16:7.5+.9+ des1*14/16:maj7 a1*14/16:maj7 des1*14/16:maj7 c1*28/16:7.11+ b1*14/16:m7 e1*14/16:7.5+.9+ a1*14/16:maj7 b1*14/16:m7 aes1*28/16:m7 g1*14/16:m7 g1*14/16:m7 c1*14/16:7.5+.9+ f1*14/16:maj7 d1*28/16:sus4.7 c1*28/16:sus4.7 } }
\new Staff { \time 2,2,3 7/8 \tempo "Straight 8ths, 2+2+3" 8 = 320 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers r8 a''8-> \tuplet 6/4 { g'16 fis''16-> a'16 fis''16 a'16 fis''16 } a'8( a''8 g'16 fis''16) |
 \tuplet 3/2 { b'8( fis''8 b'8) } fis''4-> fis'8\mp e''8 e'16-> fis''16-> |
 \tuplet 3/2 { fis''8( g''8 a''8) } r4 b''8 cis'''8-- d'''8-. |
 d'''8-- g''8 c'''16 ais''16 b''16-> fis''16 cis''8-> gis'8 ais''8 |
 bes''8->\ff ees'''8 gis''16-. des'''16 a''16 e''16-> b'4-> fis'8 |
 g''8 d''8 a'16-. e'16 f''16 bes''16 r4. |
 des'''16->( a''16-> e''16 ges'16->) ees'8 c'8-> r8 aes'8 f'8 |
 c''16-.( d'16 bes'16 c'16) g'8\p c'8 bes'8 c'8 c''16 c'16 |
 c'8-> b8 r4 c'4-> d'8-- |
 f'8-> d'8-- c'8 c'8 c'8 d'4-^ |
 f'8 b8-. b16 e'16 cis'8-> fis'8->( e'8 b16 cis'16) |
 des'8 ges'8 r4 b'8\mp a'8-> ees'8-. |
 f''8-> f'8 f''16( e'16 c''8->) f'8 ges''4 |
 r8 bes''8 r4 g''8( aes''8 aes''16 a''16) |
 a''8-> fis''8 dis''8 e''16 e''16-. dis''8 cis''4 |
 \tuplet 5/4 { f'16( ees''16 c'16 c''16 des'16) } f''8 f'8 aes''8 c''8 des'''8 |
 ees'''8 bes''8-^ f''8 g''8-. des'''8( c'''8 f'''8) |
 r4 bes''4 dis'''8( e'''8-. b''8-.) |
 a'4-> gis''8 cis''8 cis'''4 a'8-> |
 \tuplet 6/4 { gis'16-> ais'16-> gis'16 f'16 dis'16 e'16 } e'16 d'16-> c'16-> f'16 dis'8 e'8 e'8 |
 f'16->( ais'16-> d''8) c'''8 a''8 cis'''8 e'''8-> b''8-. |
 e'''8 cis'''8 d'''8-> d'''8 r4. |
 e'''8 b''8-> \tuplet 3/2 { ges''8( des''8 ges''8) } b''16 e'''16 a''16-> ges''16 des'''16 b''16-- |
 ges''4 des''16-. aes'16 bes''8-^ ees'''16-> aes''16 des'''16 ges''16 des''16 aes'16 |
 r4 bes'4 ees''4 g'8 |
 \tuplet 3/2 { bes''8-. g'8-^ bes''8 } \tuplet 3/2 { bes'8 d'''8-- e''8-. } d'''8-> d''8 f'''8 |
 r4 a''4 des'''8 c'''8 dis'''8 |
 \tuplet 3/2 { d'''8 b''8-> gis''8 } a''8-> a''8 g''4 f''8 |
 r8 cis''8 dis''8-> aes''8 r8 f''8-. gis'8 |
 bes'16( a'16 c''16-. d''16) g''8 d''8 e''4-. g''8-> |
 gis''4-. r8 des'''8 r4. |
 fis''4-> f'''8->(\f c'''16-> g''16) a''4. \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "14. Shoreline Code" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"5/4 Straight 8ths. Vocabulary: side-slip, bebop, wide, 4ths. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { b1*20/16:m7 e1*20/16:7.5+.9+ a1*20/16:maj7 c1*20/16:m7 f1*20/16:7.5+.9+ bes1*20/16:maj7 a1*20/16:maj7 aes1*20/16:m7 a1*20/16:m7 d1*20/16:7.5+.9+ g1*20/16:maj7 fis1*20/16:m7 b1*20/16:7.5+.9+ e1*20/16:maj7 d1*20/16:m7 g1*20/16:7.5+.9+ c1*20/16:maj7 ees1*40/16:7.11+ c1*20/16:m7 f1*20/16:7.5+.9+ bes1*20/16:maj7 fis1*20/16:m7.5- d1*20/16:maj7 } }
\new Staff { \time 5/4 \tempo "Straight 8ths" 4 = 220 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers ees''8\mf g'16 bes'16 a'8( f'16 c''16) \tuplet 3/2 { a'8-> d''8 fis''8 } e'''8 b''8 gis''8-- a''8 |
 \tuplet 3/2 { gis''8-> ais''8-^ c'''8 } \tuplet 5/4 { ais''16( gis''16 g''16 e''16 cis''16) } r4 d''8-. d''8-> c''8-. ais'8-> |
 c''8 f''8-. ais''16 dis'''16 d''16-> a'16 \tuplet 6/4 { e'16( dis'16-> gis'16-> cis''16 b'16 cis'16) } r4 fis'8 b'8 |
 c'8\ff a'8-. \tuplet 3/2 { d'8( a'8 c'8) } \tuplet 3/2 { a'8 d'8-> c''8-. } c'8 ees''8 d'8-- bes'8-> |
 \tuplet 3/2 { a'8->( d''8-- g''8->) } c'''8-- ges'8 des'8 gis'8 \tuplet 5/4 { bes'16( gis'16 des''16 ges''16 b''16->) } b'16-> ges'16 des'8 |
 c'8 f'16 bes'16 \tuplet 3/2 { ees''8 c'8-- f'8 } \tuplet 5/4 { bes'16 aes'16 e'16 a'16 d''16 } r4 c''8-> f'8 |
 e'8 b8-. fis'8 cis'8 fis'16 b'16 e''16 d''16 a'8-^ e'8-> b8\f fis'8 |
 ges'8 des'8 aes'16 bes'16 f'16 bes'16 ees''16->( des''16 ges'8) b'8-> e''8 a''8 f'8 |
 e'8-. a'8 d''8-> g''8 r8 g'8-> r4 d'8-> a'8 |
 gis'8-> cis''8 \tuplet 3/2 { fis''8-> b''8 bes'8-. } ees''8-> gis''8 fis''8 d''8-^ a'8 e'8-. |
 e'8-> a'8 \tuplet 3/2 { d''8-^( c''8 fis'8) } b'16 e''16 a''8 r4 d'8 a'8 |
 \tuplet 3/2 { ais'8 dis''8 gis''8 } cis'''16( g'16-> c''16 b'16) \tuplet 3/2 { e''8->( a''8 d'''8) } a'8 d''8-> r8 g''8 |
 f''16 d''16-> dis''8-. \tuplet 3/2 { dis''8 c''8 ais'8-. } b'8 b'8 r8 c''8 r4 |
 b''8->( b'16-> dis'''16) cis''16 dis'''16-- dis''16-- cis'''16 e''8-. e'''8 \tuplet 3/2 { fis''8( e'''8 gis''8) } dis'''16( fis''16 cis'''16 dis''16) |
 d'''16 d''16 a''16 d''16-> e'''16 d''16-. e'''16 c''16 c'''8 c''8 r4 r8 c'''8 |
 r8 b''8-> \tuplet 3/2 { e'''8( a''8 d'''8-^) } ais''8 f''8 c''8-. g'8 aes''8 ees''8-> |
 \tuplet 5/4 { d''16 g''16-- c'''16 bes''16 b'16 } \tuplet 6/4 { e''16 a''16 g''16-. c''16-> g'16 d'16 } e'8-> e''8-- b'8\p fis'8 gis'8-> c''8 |
 d''8 ges''8-. \tuplet 6/4 { e''16( a''16 fis''16 b''16-. a''16-> d'''16) } b''8-> ges''16-> f''16 r4 ees''8-^ des''8 |
 gis'4 des''8 bes'8 aes'8 ees'8 aes'8-> f'8-^ ees'4\f |
 e'8( a'16 d''16) g''8 aes'8-> ees'16-.( bes'16-> a'16 e'16) b8\f cis'8-^ bes'16 f'16 c'16 g'16 |
 r8 ges'8-. b'8-> e''8-> a''8 a'8 r4 e'8 b8 |
 c'8 f'8 \tuplet 3/2 { bes'8 aes'8 c'8 } g'4-> d'8-> e'8 r4 |
 \tuplet 5/4 { e'16-^ d'16 c'16 b16-> c'16-^ } d'8-> e'16-> fis'16-. r8 gis'8 \tuplet 5/4 { a'16 d''16 b'16-. c''16 c''16 } r8 d''8 |
 gis''8 f''8 fis''8 fis''8 gis''8-^ a''8 r8 ais''8 b''4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "15. Red Shift" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"11/8 3+3+3+2 groove. Vocabulary: bebop, side-slip, wide, triad pair. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { des1*22/16:m7 ges1*22/16:7.5+.9+ b1*22/16:maj7 fis1*22/16:maj7 b1*22/16:maj7 ees1*22/16:m7 aes1*22/16:7.5+.9+ des1*22/16:maj7 des1*22/16:m7 ges1*22/16:7.5+.9+ b1*22/16:maj7 ees1*22/16:m7 aes1*22/16:7.5+.9+ des1*22/16:maj7 aes1*22/16:maj7 g1*22/16:m7 c1*22/16:7.5+.9+ f1*22/16:maj7 aes1*44/16:sus4.7 } }
\new Staff { \time 3,3,3,2 11/8 \tempo "3+3+3+2 groove" 8 = 300 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers c''8->(\mf f''8 a''8) g''8 d'''8 b''8 r8 aes''8 e'''8 des'''8( ges''16-^ bes''16) |
 bes''4 c'''8 r8 d'''8 e'''8-- r8 d'''8 c'''8-> bes''8-> a''8 |
 gis''8( f''8 fis''8) fis''8( f''8 dis''8) r4. cis''8 b'8-^ |
 ais'8( gis'8 fis'8->) f'8 dis'8 d'16-^ cis'16 c'8 fis'8 e'8 f'8 f'8 |
 gis''8 cis''8 ais''16 b'16-> ais''8-> dis''8 dis'''16-. b'16 ais''8( ais'8 b''8) dis''16 cis'''16-> fis''16-> cis'''16 |
 d'''8 g''8-> b''8-> e'''4 a''8-^ ges''8( des'''8-. bes''8) \tuplet 3/2 { c'''8 ees'''8-- aes''8 } |
 f'''8 ges''8 e'''16-. ges''16 r4. f'''4-- f''8-. c'''8-> aes'8 |
 a'8->( e'8-> b'8) ges'8 f'4 bes'4-. ees''8 des''4 |
 r4. d''16 b'16 g'16-> a'16 a'16 g'16 ges'8-> aes'8 des''8-- \tuplet 3/2 { bes'8 bes'8 des''8 } |
 dis'8 d''8-- d'16 ees''16 d'8 ges''8-> ges'16 d''16 e'8 ees''8 d'8 dis''4-> |
 dis''8->( f''8 fis''8) r4. g''16-> gis''16-. ais''16-. b''16 cis'''16 dis'''16 f'''16--( dis'''16-- cis'''16-> dis'''16) |
 f'''8-^ d'''8-- ees'''16 f'''16 d'''4 ees'''8-- r8 ees'''8-. f'''8 ees'''8( f'''16 ees'''16) |
 d'''8 c'''8 a''8 g''8-.( aes''8-> aes''8) ges''4 e''8 d''8 c''8-> |
 d''8 fis'8-> a'8 aes'8( e'8-> b'8) aes'8( des''8-> f''16 g''16->) bes''8 ees'''8 |
 r4. ees''8 ees'''8 ees''8 ees'''8-- ees''8 ees'''8-. \tuplet 5/4 { g''16( ees'''16 f''16 c'''16 aes'16) } |
 g'8( a'8 bes'8) b'8 c''4-. b'4-> bes'8 r4 |
 bes'4-> c''8 des''8 dis''8-> bes''8 r8 g''8-^ aes''8 r8 aes''8 |
 a''8-> c''4 f'8->( d'8 g'16 b16->) c'8( a'8 f'16-^ g'16) d''8 b''8 |
 e'''8 e'''4-- d'''8-> e'''8 b''8 r8 d'''8 e'''8 e'''4 |
 e'''16->\p ees'''16-> ees'''16-- ees'''16 ees'''16 ees'''16 ees'''8 des'''8-> ees'''8-> r4. ees'''4-^ \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "16. Northbound" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"7/4 Even 8ths. Vocabulary: wide, bebop, superimposition, triad pair. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { des1*28/16:m7 aes1*28/16:m7 des1*28/16:7.5+.9+ fis1*28/16:maj7 d1*28/16:maj7 g1*28/16:m7 c1*28/16:7.5+.9+ f1*28/16:maj7 g1*28/16:m7.5- aes1*28/16:m7 des1*28/16:7.5+.9+ fis1*28/16:maj7 d1*28/16:m7.5- b1*28/16:m7 e1*28/16:7.5+.9+ a1*28/16:maj7 e1*56/16:7.11+ } }
\new Staff { \time 7/4 \tempo "Even 8ths" 4 = 200 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers b'8\mf bes'8-> b'16 des''16 ees''8 \tuplet 3/2 { e''8( f''8 ges''8) } aes''8 bes''8 aes''16 ges''16-> f''16 e''16 ees''8 des''8 ees''8 e''8 |
 f''8-> g''8 \tuplet 3/2 { b''8-> d'''8-> f'''8 } d'''8 b''8-. g''8( f''16 d''16--) r4 \tuplet 3/2 { b'8 g'8 f'8 } d'8 b8-. |
 \tuplet 3/2 { b8-> g'8 e'8 } \tuplet 3/2 { f'8 f'8 e'8 } d'8 e'8 f'16->( g'16 a'8) b'8-> des''8 r4 d''8-> e''8 |
 \tuplet 3/2 { dis''8-> f''8 c'''8 } a''8 ais''8 ais''8 c'''8 fis''16( e'''16 f'''8) r8 f'''8 r4 \tuplet 3/2 { dis'''8 d'''8-^ dis'''8-> } |
 d'''4 e'''8 d'''8-> \tuplet 3/2 { b''8( gis''8 a''8-.) } a''16(\f gis''16-. fis''16 e''16->) b'8 gis'8 \tuplet 3/2 { a'8-- a'8 gis'8-> } \tuplet 3/2 { fis'8 e'8 d'8 } |
 \tuplet 3/2 { d'8 e'8 f'8-- } g'16 f'16-> e'16 d'16 \tuplet 6/4 { c'16 b16-> c'16-> d'16 e'16 a'16-. } \tuplet 3/2 { fis'8--( g'8 c''8) } a'16-.( bes'16 bes'16 b'16->) c''4-. r4 |
 d'4-> d''16 e'16-> c''16 d'16 \tuplet 3/2 { d''8 c'8 e''8 } a'8 a''8-^ c''16-> aes''16 a'16 a''16-- r8 d''8-> bes''16( bes'16-> bes''16-- d''16->) |
 dis''16( fis''16 a''16 b''16) ees'''8 b''8 a''8 ges''8-> ees''8-. b'8-> a'8 ges'8 r8 e'8-> r4 |
 \tuplet 3/2 { ees'8 c'8 des'8 } \tuplet 3/2 { ees'8 c'8 des'8 } des'16( c'16 des'16-> ees'16->) c'16 des'16 des'16 c'16 r8 des'8 ees'8-. f'8 g'16 f'16-^ g'8 |
 g'8 a'8 des''8 e''8 g''16 a''16 des'''16 e'''16 des'''4 a''8 g''8 e''16( des''16 a'8--) g'8( e'16 ges'16) |
 r4 e'8 a'8-> des''8 d''8 g''4-> b''8 des'''8 \tuplet 3/2 { e'''8-> a''8 b''8 } g''16( d'''16 des'''16-> a''16) |
 \tuplet 5/4 { cis''16( dis'''16 fis''16 cis'''16 f''16) } dis'''8--\ff dis''8 f'''16( cis''16 cis'''16 dis''16) f'''8 cis''8 f'''16( f''16 f'''16 f''16->) r4 \tuplet 3/2 { cis'''8( fis''8-^ f'''8-^) } |
 d''8 d'''8 b'8 d'''8 b'4 aes''16( b'16 aes''8) \tuplet 3/2 { c''8 e'''8-^ f''8 } c'''8-> e''16-. e'''16-^ \tuplet 3/2 { f''8-> c'''8 f''8 } |
 fis''4 a''16-^( d'''16-- gis''8) b''16\ff e'''16 d'''8 r4 a''8\p fis''8-> gis'8( b'16 e''16->) d''16 a'16 fis'16-> gis'16 |
 g'8 e''8 c'''16-> d'''16 ais''16-> f'''16-> \tuplet 3/2 { e'''8( g''8 c'''8->) } ais''8-> d''8 r8 f'8 e'16( g'16 c'16 d'16-.) r4 |
 fis'8 dis'8 \tuplet 5/4 { e'16-. e'16 f'16 fis'16 gis'16 } dis''8-^ c''8 cis''8-. cis''8-> fis''16-> dis''16-^ e''16-. e''16 f''8 fis''8 gis''16->( a''16 b''8) |
 c'''8 dis'''8-> f'''8 ees'''8 r4 \tuplet 3/2 { c'''8( a''8 f''8) } \tuplet 6/4 { ees''16( c''16 a'16 f'16-- ees'16 c'16) } dis'8-> f'8 a'16->( c''16-> dis''16 f''16) |
 r8 a''8-. r4 c'''8 dis'''8 r8 f'''8 r8 ees'''8 c'''8-. a''8 gis''4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "17. Drift Logic" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"9/8 3+3+3, flowing. Vocabulary: pentatonic, bebop, side-slip, superimposition. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { bes1*18/16:m7 ees1*18/16:7.5+.9+ aes1*18/16:maj7 a1*18/16:m7 d1*18/16:7.5+.9+ g1*18/16:maj7 e1*18/16:m7 a1*18/16:7.5+.9+ d1*18/16:maj7 des1*36/16:m7 c1*18/16:m7 f1*18/16:7.5+.9+ bes1*18/16:maj7 bes1*18/16:m7 ees1*18/16:7.5+.9+ aes1*18/16:maj7 e1*18/16:7.11+ d1*18/16:m7 g1*18/16:7.5+.9+ c1*18/16:maj7 a1*18/16:m7 d1*18/16:7.5+.9+ g1*18/16:maj7 } }
\new Staff { \time 9/8 \tempo "3+3+3, flowing" 8 = 330 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers des''8\mf e''8 g''8-. a''8 des'''8 e'''8 des'''8( a''8 aes''8) |
 a''8-^ b''4 e'''8( des'''8-^ des'''8) b''8 fis''4 |
 f''4 bes''8 g''8( c'''8 bes''8) r8 f''8 g''8-> |
 r4. fis''16( gis''16 c'''16 ees'''16 c'''16-. aes''16-.) fis''8 ees''8 c''8 |
 c''8--( ees''8 fis''8) gis''8-> c'''8-^ ees'''8 c'''16( gis''16 fis''16 ees''16 c''16 c''16) |
 r4. r8 b'8 fis'8-- a'8 e'8-> fis'8-^ |
 b8( cis'8-> fis'8-.) e'8( a'8 fis'8) cis'8 e'8-- cis''8 |
 c''8( bes'8 f'8) g'16( g'16-> f'16 c'16 dis'16-^ dis'16->) r4. |
 dis'8( g'8 ais'8) cis''8->( dis''8 g''16 ais''16-.) cis'''8 ees'''8 cis'''8 |
 c'''8( bes''8-> g''8) e''4-> c''8 r8 bes'8 g'8-. |
 r8 e'8 c'8 e'4 g'8 r8 bes'8 b'8-> |
 r4. bes'8->( c''8 d''8) r8 ees''8-> d''8-> |
 gis''8-^ ges''8 des''8 ees''4 b'8-- r8 des''8-> ges''8 |
 ges''4 ees''8 b'8(\f a'8 ges'8--) ees'8-> b8 d'8 |
 d'8 ees'8 bes'8 g'4-> aes'8 aes'8-> bes'8 c''8 |
 e'8 fis'8 b'8 a'4-> b8 des'8-- fis'8-> e'8-. |
 r4. d'8 fis'8-> a'8 c''8 d''8 c''8-> |
 r8 c''8 a''8 r8 f'''8 e'''8 b''8( gis''8-> cis'''8) |
 ees'''8-- gis''8-. des'''8 fis''8 f'''4 ais''8( ees'''8 cis'''8) |
 c'''8( aes''8 ges''8) ees''8 f''4 r4. |
 e''16->( fis''16-- g''16 gis''16-> a''16 d'''16) b''8 c'''8-> c'''8 d'''8-^( e'''8-> d'''8) |
 r8 ees'''8 gis''8-> des'''8->( fis''8-> f'''8) e'''16( b''16-> fis''16 gis''16 e'''16-. b''16-.) |
 bes''8 c'''8 f'''8-> r8 ees'''8-^ ees'''8 r8 c'''8 gis''8-> |
 ais''8-. ees'''4-> aes''8->( g''8 c'''8) f'''4.->\p \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "18. Afterimage" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"5/8 3+2 groove. Vocabulary: wide, pentatonic, bebop, superimposition. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { a1*10/16:m7 d1*10/16:7.5+.9+ g1*10/16:maj7 fis1*10/16:m7 b1*10/16:7.5+.9+ e1*10/16:maj7 d1*10/16:m7 g1*10/16:7.5+.9+ c1*10/16:maj7 a1*10/16:7.11+ f1*10/16:maj7 c1*10/16:m7 f1*10/16:7.5+.9+ bes1*10/16:maj7 b1*20/16:m7 a1*10/16:m7 d1*10/16:7.5+.9+ g1*10/16:maj7 a1*10/16:m7 aes1*10/16:m7 des1*10/16:7.5+.9+ fis1*10/16:maj7 d1*10/16:maj7 a1*10/16:m7.5- a1*10/16:m7 d1*10/16:7.5+.9+ g1*10/16:maj7 d1*10/16:m7 g1*10/16:7.5+.9+ c1*10/16:maj7 b1*10/16:m7 e1*10/16:7.5+.9+ a1*10/16:maj7 e1*20/16:7.11+ } }
\new Staff { \time 3,2 5/8 \tempo "3+2 groove" 8 = 300 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers c''8\mf aes'8 fis'16 ees'16 r8 c'8 |
 c'8 gis'8 f'16 fis'16 fis'8 f'8-^ |
 fis'8-> ees'8 c'8 dis'8 fis'8 |
 fis'8-> dis'4-> b16( cis'16 cis'16 dis'16-.) |
 r8 d'8-> f'8 g'8-- c''8-. |
 b''8( b'8 b''8->) r4 |
 b''8 a''8 g''8 d''8 g''8 |
 f'8->( e''8 a'8) f''16-> f'16-> g''16 g'16 |
 r8 fis'8-> e'8 des'8\p b8 |
 d'8 f'8 gis'16 bes'16 g'4 |
 r8 g'8-. d'8 \tuplet 3/2 { b8 c'8-> c'8 } |
 c'8( c'8 c'8) c'8 d'8-. |
 g'8->( ees''8-. f'8) r4 |
 e'8 a'8 g'8 c''16-.( a'16 d''8) |
 c''8( bes'8 g'16 e'16->) r8 c'8 |
 e'8 g'4-> bes'8-> a'8 |
 gis'16 ais'16 d''16 f''16 gis''16-. ais''16 d'''16 f'''16 c'''8 |
 b''8 cis'''8 f'''16 des'''16 \tuplet 5/4 { b''16-. gis''16 f''16-. des''16-- c''16-. } |
 b'8->( aes'8 f'16 cis'16) b8 b8 |
 r4. \tuplet 5/4 { g'16 c'16 c''16 c'16-. g'16 } |
 aes'8 f'8 des'8-> ees'16 ees'16-> f'16-> bes'16-> |
 f''8 a'4 des'''8 des''8-> |
 cis''4-> d''8 r8 cis''8-- |
 c''8( dis''8 fis''8) gis''8->\mp fis''8-> |
 r8 ees'''8 b'8-. g''8 c''8 |
 c''8-> dis''8 fis''8-> aes''8 g''8 |
 r4. fis''8-> gis''16 bes''16 |
 r8 bes''8 fis''8 e''8-. fis''8 |
 g''4 ais''8 cis'''8 dis'''16 f'''16-> |
 e''4 b''8 a'4 |
 a'4\f b'8-. r8 b'8 |
 fis''8 b'8 b''8 b'8-. a''8 |
 cis''16-> gis''16-> cis''16 gis''16 gis'16 ges''16 \tuplet 3/2 { gis'8( c'''8 cis''8) } |
 r4. cis'16 cis''16 b16 a'16 |
 gis'8-- ais'8-. d''8-- f''8 gis''8 |
 r8 ais''8-> d'''8 d'''4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "19. Fault Line" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"7/8 Straight 8ths, 2+2+3. Vocabulary: triad pair, side-slip, bebop, pentatonic. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { bes1*14/16:m7 ees1*14/16:7.5+.9+ aes1*14/16:maj7 b1*14/16:m7 e1*14/16:7.5+.9+ a1*14/16:maj7 g1*28/16:7.11+ des1*14/16:m7 ges1*14/16:7.5+.9+ b1*14/16:maj7 fis1*14/16:m7 b1*14/16:7.5+.9+ e1*14/16:maj7 d1*14/16:m7.5- fis1*14/16:maj7 c1*14/16:m7 f1*14/16:7.5+.9+ bes1*14/16:maj7 bes1*14/16:m7 ees1*14/16:7.5+.9+ aes1*14/16:maj7 ees1*14/16:m7 aes1*14/16:7.5+.9+ des1*14/16:maj7 fis1*28/16:7.11+ a1*28/16:sus4.7 aes1*28/16:m7 bes1*14/16:m7 } }
\new Staff { \time 2,2,3 7/8 \tempo "Straight 8ths, 2+2+3" 8 = 320 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers c''8\mf des''8 r8 d''8 ees''4 f''8 |
 r8 ees''8-^ fis''8-> b''8-. a''8 e'''8-> des'''8 |
 ees'''8 c'''8-. aes''8 f''8 d''4 bes'8 |
 r8 cis''8 ais'8-.( b'16 b'16-.) r4. |
 r8 ais'8 f'8 g'8 d'4-- f'8 |
 f'8 e'8 dis'8 cis'8 b8 cis'8-^ dis'8 |
 d'8-> g'16 f'16-> a'4 g'8 c''8 a'8 |
 d''16( c''16 f''16 d''16-.) g''8( f''16 a''16) g''8 c'''4 |
 des'''8\ff bes''8 r4 ges''8\mp aes''4 |
 bes''8 ees''8 g'8 ges'8 d''8-^ a''8 c'''8 |
 \tuplet 3/2 { b''8 fis''8 dis'''8-> } r4 f'''8 gis''4 |
 \tuplet 3/2 { a''8 c'''8 d'''8-> } \tuplet 6/4 { e'''16-. d'''16 c'''16-> b''16 cis'''16 dis'''16 } dis'''8( dis'''8-> cis'''8) |
 \tuplet 5/4 { f'''16( d'''16-> dis'''16 dis'''16 d'''16->) } \tuplet 6/4 { dis'''16( f'''16 dis'''16-. f'''16 d'''16-^ dis'''16) } dis'''8( f'''8 dis'''16-> f'''16) |
 dis'''8 dis'''16-> dis'''16 dis'''8 cis'''8 r8 dis'''8-. dis'''8 |
 d'''16--( bes''16 f'''16 e'''16) \tuplet 5/4 { g''16 c'''16-> bes''16-> d''16 f'16-> } e'4-> g'8 |
 \tuplet 3/2 { fis'8 f'8 dis'8 } r4 d'8 dis'4-. |
 ees'16( bes'16 g''16 a''16->) f'''8 c'''8 ees'''8( g''8 bes''8--) |
 c'''8(\f g''16-> d''16) e''8-^ ees''8-> bes'8-- f'8-- c'8 |
 bes'16( d'16-> f'8) e'16-> g'16-> c''8-. d''8( f''8 bes''8) |
 \tuplet 3/2 { d'''8 ges''8 a'8 } \tuplet 3/2 { aes'8 des''8-. f''8 } r4. |
 \tuplet 6/4 { e''16( ees''16 des''16 ees''16 e''16-> fis''16) } g''8 a''8 b''8 des'''8 b''8 |
 bes''4-> aes''8 bes''8 c'''16 d'''16 bes''16 g''16 aes''16 aes''16 |
 aes''8-> bes''16-> ees'''16 \tuplet 5/4 { c'''16( c'''16-> bes''16-. f''16-. aes''16) } r4. |
 d'''16( b''16 c'''16-^ c'''16-.) b''8( a''16 b''16) c'''8->( d'''8 e'''16 d'''16--) |
 des'''8( aes''16 f''16) \tuplet 3/2 { g'8->( bes'8 ees''8->) } des''8( aes'8 f'8) |
 b'16 gis'16 e'8 fis'8 e''8-^ r4. |
 cis''8 gis'8-- b'8-> gis''8-^ r8 fis''8 cis''8 |
 ees''8 c''8-. bes'8 f'8 bes'8-> aes'4-. |
 \tuplet 3/2 { f'8-> e'8-- d'8-> } b8 b8-^ b8( d'8 e'8->) |
 r4 \tuplet 6/4 { bes'16 aes'16 ees'16 f'16 ees''16 des''16 } aes'8->( bes'8 aes''16 f''16-^) |
 r8 des''8 ees''8 des'''8 bes''8 f''8 aes''8 |
 r8 aes''8-> g''8 aes''8 bes''4. \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "20. Sodium Lights" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"5/4 Straight 8ths. Vocabulary: triad pair, wide, pentatonic, bebop. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { ees1*20/16:maj7 b1*20/16:7.11+ d1*40/16:m7 fis1*20/16:m7 b1*20/16:7.5+.9+ e1*20/16:maj7 c1*20/16:7.11+ des1*20/16:7.11+ b1*40/16:sus4.7 fis1*20/16:m7.5- f1*20/16:m7 bes1*20/16:7.5+.9+ ees1*20/16:maj7 g1*20/16:m7 c1*20/16:7.5+.9+ f1*20/16:maj7 e1*20/16:m7 a1*20/16:7.5+.9+ d1*20/16:maj7 des1*20/16:m7 ges1*20/16:7.5+.9+ b1*20/16:maj7 } }
\new Staff { \time 5/4 \tempo "Straight 8ths" 4 = 220 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers bes'4\mf ees'8-> g'8-> f'8 c'8-. a'4 bes'8-- g''8 |
 fis''8-^ f''8 r4 dis''8\p cis''8 r8 b'8 bes'16->( a'16 gis'8) |
 g'8 ges'8 \tuplet 3/2 { f'8( e'8 d'8) } c'8-- b8 c'8 d'8 e'8 f'8-- |
 fis'4 r8 g'8-. \tuplet 3/2 { a'8--( b'8-> c''8) } \tuplet 3/2 { d''8-- e''8-. d''8-. } r4 |
 \tuplet 6/4 { cis''16 b'16 fis'16-- gis'16 gis'16-. fis'16 } cis'8 dis'16 dis'16 cis'8\f b16 b16-. b8-> cis'8 fis'8 dis'8-> |
 \tuplet 3/2 { b'8 b8 aes'8 } b16-> des''16 b8-> aes'16( cis'16 des''8->) b8 des''8 \tuplet 3/2 { b8 aes'8 cis'8 } |
 b8-> e'8 r4 gis'16-> cis'16-^ ais'16-- fis'16 r8 gis'8 e''8 b''8 |
 b''8 bes''8-> a''16-^( fis''16-> g''8) fis''8 dis''8-- r4 \tuplet 6/4 { e''16-- e''16 d''16 c''16 b'16 bes'16 } |
 aes'8 des''8-> f''8\ff g''8 r8 bes''8-. ees'''8 f'''8 des'''8-> aes''8 |
 a''8 fis''16 e''16 r4 \tuplet 3/2 { b'8 e''8 cis''8 } b'4 r8 fis'8-. |
 b'16--( a'16-> fis'8) \tuplet 5/4 { cis'16( fis'16-^ e'16 cis'16 b16) } cis'8 e'8 fis'4 b'16 fis'16 a'8 |
 r8 d'8 r4 \tuplet 5/4 { e'16( a'16 g'16 c'16 c'16) } e'8 d'8 \tuplet 3/2 { g'8( e'8 c'8) } |
 c''4-- c'8--\p ees''8 g'8-> g''8-. g'8 ees''8 d'16-> f''16 f'8 |
 d''4 c'16 c''16 d'8-> r4 ges''16 g'16 d''8 ges'8 d''8-^ |
 f'''8 d''8-> c'''8-- ees''16 f'''16-> d''8 f'''8 r4 bes''8 f'''8-- |
 f''8 e'''8 \tuplet 3/2 { d''8( d'''8 bes'8) } \tuplet 3/2 { a''8( d''8-. a''8) } g'8-^ a''8 g'8 bes''8 |
 c'''8-> dis''8-> aes'16( fis'16 bes'16 des'16->) r4 c'8 aes'8 dis'16-^ fis'16 des''16 bes''16 |
 f'''4 \tuplet 3/2 { a''8-^( e'''8 f''8-^) } c'''16\mp a'16 f''16 f'16-. c''8-> d'8 r8 f''8 |
 r4 e''8 cis''8 d''8 d''8 r8 cis''8 b'8-. a'8 |
 a'16-^( g'16 f'16 dis'16) cis'8 c'8 cis'8 dis'8 r8 f'8 \tuplet 3/2 { dis'8 cis'8 dis'8 } |
 r8 d'8 c'8 cis'8-> r4 cis'8-> b8-> cis'8 d'8 |
 des'8 des'8-> \tuplet 3/2 { des'8( des'8 des'8-.) } des'8 ees'8 \tuplet 3/2 { des'8 des'8-. des'8 } des'8-.\mf des'8 |
 d''4 r8 e'8 r8 aes''8-> r4 gis'8-. aes''16 bes'16 |
 b'16 dis''16-. fis''16 f''16 r8 gis''8 cis'''8( dis'''16-. b''16) fis''16(\f f''16 cis''16 gis'16) fis'4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "21. Quarry" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"11/8 3+3+3+2 groove. Vocabulary: 4ths, side-slip, wide, triad pair. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { d1*44/16:sus4.7 fis1*22/16:m7 b1*22/16:7.5+.9+ e1*22/16:maj7 d1*22/16:m7 g1*22/16:7.5+.9+ c1*22/16:maj7 ees1*22/16:m7.5- a1*22/16:m7 d1*22/16:7.5+.9+ g1*22/16:maj7 g1*22/16:m7 c1*22/16:7.5+.9+ f1*22/16:maj7 ees1*22/16:7.11+ fis1*44/16:7.11+ e1*22/16:m7 c1*22/16:m7.5- } }
\new Staff { \time 3,3,3,2 11/8 \tempo "3+3+3+2 groove" 8 = 300 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers d'''8->\mf c''8-> b''8 r8 a'8 e''8 a'8( a''8-> d''8) e'''8 g''8 |
 d'''8 d''8 a''8 a'8->( e''8 a'8-.) r8 g''8 a'8-^ c'''8 b'16 c'''16-. |
 cis'''8 a''8 e''16 fis'16-> b'4 dis''8-> e''4 cis''8 a'8-> b8 |
 r4. aes'8 b4 a'8 cis'4 des''16( dis'16 g''16 b'16) |
 dis'''8 fis''4-> e'''8-> gis''8 dis'''8 e''16-^( e'''16-> e''16 dis'''16 dis''16-> cis'''16) dis''8( cis'''16-> fis''16) |
 f'''8-> a''8-. f'''8 e''8 e'''8-. c''8-> a''8 b'4 b''8 a'8-^ |
 b'16 ges'16 cis'16-> aes'16 g'16 c''16 r8 f''8-^ ais''8 r4. r8 aes'8-> |
 g'8( c'8-^ e'8) d'8 a'8 fis'8-- g'16--( e''16 c'''16 d'''16 a''16-> fis''16) e'''8 g''8 |
 ges''8 b''8 ees'''8 r4. f'''4\ff des'''8-> aes''8\p ges''16 ees''16 |
 r8 b''8-> g'8 e''8-^( e'8 c''16 b16) g'8 c'8-. a'8-. c'8 g'8 |
 r4. r8 fis'8-> b'8 e''8( a''8 gis'8-.) ees'8 bes'8 |
 b8( d''8-- d'16 fis''16) g'8 b''8-- g'8 r4. a''16 b'16-> b''16 d''16 |
 d''8 bes'8 f'8 g'8( c'8 e'8) f'8( d'8 bes'8) e'8\f c'16 g'16 |
 a''4 c''8 r8 aes''8-> aes'8-> r8 e''8 d'8 c''4\mf |
 a''8->( d''8 c'''8) c''8->( e'''8 f''8) d'''8( f''8-- d'''8) e''4-. |
 r4. c'''4-. ees''8 f'''8(\mf f''8 c'''8-.) \tuplet 3/2 { bes'8( g''8-> g'8) } |
 fis'8 ais'8-- cis''8-^ gis''8 dis''4 c''8-.( cis''8 fis''16-> ais''16) r4 |
 gis''8( dis'''8-- c'''8) cis'''8( fis''8 ais''8) dis'''8-^ gis''8 c'''16 cis'''16 ais''8 fis''8 |
 r8 b'8 fis''8 g'8 d''4 b4\ff b'8 d'16( b'16 cis'8->) |
 c'8( g'8-> d'8->) a'8-. d'8 g'8 c''8 bes'8 c'8-. g'4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "22. Wire Walker" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"7/4 Even 8ths. Vocabulary: triad pair, pentatonic, side-slip, superimposition. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { e1*56/16:7.11+ ees1*28/16:m7.5- e1*28/16:7.11+ g1*28/16:maj7 c1*28/16:m7 f1*28/16:7.5+.9+ bes1*28/16:maj7 des1*28/16:maj7 b1*28/16:maj7 aes1*56/16:7.11+ f1*56/16:m7 e1*56/16:7.11+ c1*28/16:7.11+ ees1*28/16:m7 } }
\new Staff { \time 7/4 \tempo "Even 8ths" 4 = 200 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers c''16\mf f''16-> a''16 b''16-> d'''16->( g''16 a''8->) \tuplet 5/4 { f'''16 c'''16-> b''16 g''16 d''16 } \tuplet 5/4 { c''16-> a'16-> f'16 d'16 b'16 } g'8 f'8-> \tuplet 3/2 { a'8-.( c'8-> b8) } e'8-- gis'8-- |
 cis'16( ais'16-. fis'8) \tuplet 3/2 { gis'8->( e''8 b''8->) } \tuplet 6/4 { ais''16 fis''16 cis'''16-> e'''16-- gis''16 b''16 } ais''8-> cis''8 r8 fis'8 e'8 gis'8-. b8 cis'8 |
 r4 des'8 e'8 r8 g'8 a'8 des''8-. r8 e''8 g''8( a''16 des'''16) e'''8 des'''8-. |
 d'''8-- ais''8 gis''8-> f''8-> d''16 ais'16 gis'8 \tuplet 5/4 { f'16( d'16 f'16 gis'16 ais'16-^) } d''8 f''8 gis''8-^ ais''8-. d'''8 d'''8 |
 \tuplet 5/4 { f'''16 f'''16 f'''16 f'''16 f'''16 } r4 \tuplet 3/2 { f'''8 f'''8 c'''8 } f'''8 f'''8 \tuplet 5/4 { f'''16( e'''16 cis'''16 a''16 b''16->) } b''8-^ cis'''8 \tuplet 6/4 { e'''16 e'''16 e'''16 cis'''16 a''16 b''16 } |
 b''8-> cis'''8 \tuplet 3/2 { f'''8 des'''8 b''8 } r4 aes''16 f''16 des''8 b'8 aes'8 f'8\f des'8 b8-> ees'8 |
 f'8 des'8-> \tuplet 5/4 { gis'16( ges'16 b16 ees'16 f'16) } gis'8 des''8-. \tuplet 3/2 { ees''8( ges''8 b''8) } \tuplet 6/4 { des'''16( f'''16-> gis''16-> b''16 ges''16 ees'''16) } des'''4-> gis''16(\p f''16 ges''16 ees''16) |
 d''8 e''16 gis''16-^ b''8 d'''8 r4 e'''8 d'''8-- b''8 aes''8 \tuplet 3/2 { e''8 d''8 b'8 } gis'8 a'8 |
 \tuplet 6/4 { g'16 f'16 d'16 b16 d'16 f'16 } \tuplet 6/4 { g'16-> b'16-. d''16-> f''16 g''16 b''16 } d'''8 f'''8 d'''16-> b''16 g''16 f''16 d''16 b'16 g'8-> f'8 d'8-- b8-> c'8-. |
 c'8\ff e'8 g'8( fis'16-> a'16) r4 fis'8 b'8 r8 dis''8-> f''8 gis''8-- cis'''4-- |
 \tuplet 5/4 { d'''16( e'''16 e'''16 e'''16 e'''16) } r4 e'''8-- d'''8 a''8-> d'''8-> e'''8-- e'''8 \tuplet 3/2 { e'''8-> e'''8 e'''8 } d'''8-. a''8 |
 \tuplet 3/2 { aes''8->( bes''8-> cis'''8--) } ees'''8 des'''8 bes''16( aes''16 ees''16 aes''16->) bes''8-> cis'''8-. r8 ees'''8-^ \tuplet 3/2 { des'''8( bes''8 aes''8) } ees''8 aes''8 |
 \tuplet 5/4 { aes''16-> c''16 ees'16 d'16 bes'16-> } r4 f''8 aes''16 ees'''16-> c'''4 d'''8( f'''16 bes''16) aes''16 c''16 ees'16 d'16-. bes'8 f''8-> |
 aes''4 ees'''8( c'''16 d'''16) \tuplet 3/2 { f'''8-> bes''8-- aes''8-> } c''8 ees'8 d'8-^ bes'8-. \tuplet 3/2 { f''8( aes''8 ees'''8) } c'''4 |
 r4 \tuplet 3/2 { cis'''8 ees'''8 cis'''8 } \tuplet 3/2 { ais''8( g''8-- ees''8) } cis''8 ais'8 g'8 ees'8-> cis'8-> dis'8 \tuplet 3/2 { g'8( ais'8 cis''8) } |
 r8 dis''8 g''8-- ais''8 cis'''8 ees'''8 r8 cis'''8 ais''8 g''8 ees''16 cis''16 ais'16 gis'16-> r4 |
 \tuplet 3/2 { d''8->( c''8 g'8) } \tuplet 5/4 { bes'16 g''16 f''16 c''16 d''16-^ } c'''8 bes''8-. f''8 g''8 d''4 r8 f''8-. bes''4-^ |
 \tuplet 3/2 { bes''8-- des''8 ges'8 } ees'8 aes'8 r4 c'8 des'8-- \tuplet 3/2 { bes'8 ges'8 aes'8 } ees''8( c'''16-^ des'''16) bes''4 \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "23. Tidal" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"9/8 3+3+3, flowing. Vocabulary: wide, superimposition, triad pair, 4ths. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { d1*18/16:m7.5- fis1*36/16:sus4.7 ees1*18/16:7.11+ a1*18/16:m7 d1*18/16:7.5+.9+ g1*18/16:maj7 des1*18/16:m7 ges1*18/16:7.5+.9+ b1*18/16:maj7 bes1*36/16:sus4.7 des1*36/16:sus4.7 fis1*18/16:m7 g1*18/16:m7 c1*18/16:7.5+.9+ f1*18/16:maj7 ees1*18/16:m7 aes1*18/16:7.5+.9+ des1*18/16:maj7 des1*18/16:m7 ges1*18/16:7.5+.9+ b1*18/16:maj7 } }
\new Staff { \time 9/8 \tempo "3+3+3, flowing" 8 = 330 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers c''8(\mf g'8 d'8) e'8-. d''8 a'8 e'8( fis'8 e''8--) |
 dis''8 c''8 a'8-. f'8( dis'8-> c'8->) dis'8 f'8 a'8-> |
 c''8 dis''8 f''8 a''8( c'''8 b''8->) r4. |
 bes''8-^ g''8 ees'''8 f'''16-^ a''16-> c'''16 bes''16 ees''16 g'16 f'8->( a'8 c'8) |
 c'8-> g'8-> d'8-- a'8-> b8-> e'16-^ a'16 g'8 b4-> |
 cis'8( ees'8 g'8->) bes'4 cis''8-> ees''8->( g''8 fis''8) |
 r8 e'''8 g''8-> r4. e'''16( fis''16-- d'''16 d''16 e'''16 e''16) |
 b''8 des''8-. e'''16 aes''16 e'''8( aes''8 ees'''8) des''8(\mp b''8 des''16-> e'''16) |
 ges''8( a''8-> d''16 c''16) e'4 g'8 ges'8-^( d'8 a'8->) |
 b'8 dis''8 fis''16 f''16-> gis''4-> cis'''8 dis'''8( b''8 fis''8) |
 aes''8 ees''8 c''16 ees'16 g'8 bes'8 aes'8 ees'16 c'16 g'16 ees'16 bes'16 c'16 |
 r4. ees'8 aes'4 r8 ees''8 bes'8 |
 b'16 g'16 f'16 d'16 b16 d'16-> f'8( g'8 b'8) d''8( f''8 g''8--) |
 b''8( d'''8 f'''8->) r8 d'''8 b''8 g''4 ges''8 |
 fis''8( cis''8-> gis'8) r8 ais'8 e''8-. r8 a''8-. d'''8 |
 r4. r8 des'''8 b''8 aes''8-> f''8 f''8 |
 e'''4-> e''8 r8 c'''8 a'8 c'''8 e''4-> |
 e''8--( b'8 fis'8) r8 gis'8 c''8-- f''8 ais''8-- dis'''8 |
 c''16 bes''16-- des''16 f'''16 ees''16 des'''16 r8 ees''8 c'''8 r8 f''8-- des'''8 |
 r8 b''8 e''8 r4. aes'8 a'8 d'8-> |
 des'16 aes'16 ees'16 bes'16 c'16 f'16 r8 bes'8 ees''8 ees'4 bes'8 |
 r8 aes'8 b'8 e''8-- ges''8 bes''8-> des'''8( e'''8 b''16 aes''16->) |
 g''8 c'''8 f'''8 r4. bes''8( e''8 b'8) |
 b'8 fis'8 dis'16-- cis'16 f'8( gis'8-. b'8) dis''4. \bar "|." } >> \layout { indent = 0 } } }
\bookpart { \paper { page-count = 1 } \header { title = "24. Outrider" composer = "Original etude — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"5/8 3+2 groove. Vocabulary: bebop, pentatonic, 4ths, triad pair. Original changes (written alto key). Play the changes as written; chord symbols are for E♭ alto." \markup \vspace #0.6 
\score { << \new ChordNames { \set chordChanges = ##t \chordmode { aes1*20/16:7.11+ c1*10/16:m7 f1*10/16:7.11+ aes1*10/16:m7 des1*10/16:7.5+.9+ fis1*10/16:maj7 bes1*10/16:maj7 des1*10/16:m7 ges1*10/16:7.5+.9+ b1*10/16:maj7 g1*10/16:m7.5- aes1*10/16:m7 des1*10/16:7.5+.9+ fis1*10/16:maj7 b1*10/16:m7.5- bes1*10/16:m7.5- aes1*20/16:7.11+ c1*10/16:m7 b1*10/16:maj7 bes1*20/16:m7 des1*20/16:sus4.7 bes1*20/16:sus4.7 g1*10/16:m7 g1*10/16:m7 c1*10/16:7.5+.9+ f1*10/16:maj7 aes1*10/16:m7 g1*20/16:m7 ees1*10/16:m7 bes1*10/16:m7 } }
\new Staff { \time 3,2 5/8 \tempo "3+2 groove" 8 = 300 \accidentalStyle modern \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers des''8\mf bes'8 ges'16 aes'16-> \tuplet 3/2 { aes'8( ges'8 cis'8) } |
 ees'4-> ees'8 \tuplet 5/4 { ges'16( bes'16 aes'16 aes'16 bes'16->) } |
 bes'8 a'8-. g'8-^ f'16( e'16 ees'16 d'16) |
 ees'8 c'8 c'8 c'16 c'16 ees'16 c'16 |
 des'8( bes'8-. b8) b16 c'16-> des'16 c'16-^ |
 b4 des'8-. r4 |
 cis'8\mp fis'8 b'16 a'16-> \tuplet 3/2 { f'8( c'8 g'8) } |
 g'16 e'16-> d'16-^ c'16-> d'16 e'16 g'8 c''8-> |
 b'8( bes'8 aes'8) ges'8 f'8-. |
 e'8( d'8-> c'16-. d'16) e'16( ges'16 g'8) |
 r8 fis'8 b8 dis'16( cis'16 gis'16 f'16) |
 f'8( gis'8 des''8->) r4 |
 des''8-^ aes'8-- bes'8-. f'8 aes'8 |
 a'8-> des'8-> e'8 d'16( b16 g'8) |
 fis'8( gis'8-> dis''8->) \tuplet 3/2 { c''8-. cis''8 cis''8 } |
 cis''16->( aes'16-- dis'16 ais'16 d''16 g''16->) r4 |
 ges''8 b''8 e'''8 \tuplet 3/2 { d'''8 aes''8-. des'''8 } |
 r8 c'''8-> f'''8-> bes''8( aes''16 d'''16) |
 a''4-. e''8-. b'8->( ees'''16 aes''16) |
 g''4 c'''8 r4 |
 r8 b''8-> cis'''8 f'''16( d'''16 dis'''16-> dis'''16) |
 g''8 bes''4 ees'''8( c'''16 f'''16-^) |
 r8 ees'''8 bes''8 r8 c'''8 |
 ees'''8( ees'''8 b''8) des'''8-- aes''8-> |
 b''8(\ff ees'''8-> des'''8) ees'''8->\p ees'''8 |
 r4. ees'''16 f'''16 f'''16 f'''16 |
 f'''8-. f'''8 ees'''8 bes''8-> ees'''8 |
 d'''8 g''4-> c'''8( f'''16 c'''16) |
 bes''8 d'''8 f'''8-> c'''8 e'''8 |
 e'''8 dis'''4 des'''8\ff c'''8 |
 e'''4 e'''8 r8 b''8-- |
 r8 b''8 bes''8 r4 |
 bes''8 f''8 d''8-> e'8-. g'16 c''16 |
 bes'16( f'16 d'16 g'16 e'16-> c'16) d'8 f'8 |
 r8 ges'8-. bes'8-> des''8 c''8-. |
 c''8 f''8-> bes''8-> aes''4 \bar "|." } >> \layout { indent = 0 } } } }