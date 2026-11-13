\version "2.24.4"

\paper {
  #(set-paper-size "letter")
  top-margin = 12\mm bottom-margin = 12\mm left-margin = 14\mm right-margin = 14\mm
  ragged-last-bottom = ##t
  markup-system-spacing.basic-distance = #8
  system-system-spacing.basic-distance = #13
}
\layout { \context { \Score \override RehearsalMark.self-alignment-X = #LEFT \override RehearsalMark.font-size = #-1 } } \book { \header { title = "ii–V–I Lines in All 12 Keys" composer = "Original exercise — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Four original lines per key: bebop/enclosure, triad pair (♭VI/♭V over alt), intervallic 4ths, tritone/half-step superimposition. Swing, 4 = 200–300. Written alto key." \markup \vspace #0.6 \score { << \new ChordNames \chordmode { d1*16/16:m7 g1*16/16:7 c1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "C major — bebop"} c''8\mf d''8 e''8-.\ff b''8 \tuplet 3/2 { gis''8-> a''8 a''8 } b''8\f c'''8 |
 c'''8\mf d'''8-> e'''8 f'''8 e'''8 d'''8 c'''8-- b''8 |
 b''16-. a''16 gis''16-. a''16-> b''8-> fis''8 r4 dis'''8 e'''8 |
 \tuplet 3/2 { e'''8( d'''8 c'''8) } b''8 a''8 \tuplet 3/2 { fis''8 dis''8 e''8 } e''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { d1*16/16:m7 g1*16/16:7.5+.9+ c1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "C major — triad pair"} \tuplet 3/2 { c''8 f'8 a'8 } g'8 d'8-- \tuplet 3/2 { b'8-> c''8-> a''8 } f'''8 g''8-. |
 g''8\ff ees'''8-> ais''8 cis'''8-> f'''8 aes''8 g''8 ais'8 |
 c''8 g''8 e'''16 fis''16 a''16-> d''16 c''16( e'16 g'16 fis'16) \tuplet 3/2 { d'8 a'8 c''8-> } |
 r4 g''8 e'''8-> fis''8 a''8 d''4-- \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { d1*16/16:m7 g1*16/16:7.5+.9+ c1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "C major — 4ths"} c''16->\mf g'16 d'16 a'16 a'8 d''8 g''8 f''8 b'16 ges'16 cis'16 gis'16 |
 aes'16( ees'16 ais'16-> f'16) f'16( ais'16-. ees''16 aes''16) aes'16 ees'16-> ais'16 f'16-- ais'8 ees''8-. |
 \tuplet 3/2 { d''8( g''8 c'''8) } bes''8 c''8-> f''8 ais''8 ees'''8 d''8-. |
 a'16 e'16 fis'16-- e''16 a''8-> d'''8 r4 c'''4-> \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { d1*16/16:m7 g1*16/16:7.5+.9+ c1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "C major — superimposition"} \tuplet 3/2 { c''8 aes'8-^ ges'8 } ees'8\mf c'8 dis'8 fis'8 \tuplet 3/2 { gis'8( c''8-. c''8) } |
 b'8-. cis''8 f''8 aes''8 \tuplet 3/2 { b''8 cis'''8 f'''8 } cis'''8 b''8 |
 \tuplet 3/2 { ais''8 cis'''8 e'''8 } \tuplet 3/2 { des'''8-> bes''8-. fis''8 } e''8-- des''8 r4 |
 \tuplet 3/2 { bes'8 fis'8 e'8 } cis'16( e'16-- fis'16-> ais'16--) cis''16-^ e''16-- fis''16 ais''16 b''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { g1*16/16:m7 c1*16/16:7 f1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "F major — bebop"} c''8\mf d''8 a''16 fis''16 g''16 g''16 c'''8-. a''8 bes''8 bes''8 |
 bes''8-- a''8 f''8 dis''8-> e''8 e''8-^ d''8->\p e''8 |
 e''8-^ d''8 cis''16( g''16-. e''16-. f''16) f''8 g''8-> f''16( d''16 b'16 c''16) |
 r4 c''16 b'16-> a'16-> g'16 f'8-^ e'8 d'4-- \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { g1*16/16:m7 c1*16/16:7.5+.9+ f1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "F major — triad pair"} bes'8-.\mf f''8 d'''8-. e'''8 g''16( c''16 bes'16 d'16) f'8-. e'8 |
 dis'8 c'8 aes'8->\mp des'8 bes'8-. fis'8-- \tuplet 3/2 { aes'8-> c'8 dis'8 } |
 f'8 c'8 a'8 d'8 b8-^ g'8-> r4 |
 a'8 c'8 f'16-- d''16 b'16 g'16 a'8-> c''8 f''4\p \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { g1*16/16:m7 c1*16/16:7.5+.9+ f1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "F major — 4ths"} c''8\mf f''8-> \tuplet 3/2 { bes''8 ees'''8 d''8-> } g''8 c'''8 bes''8\f e''8 |
 e''8\mp a''8 d'''8 c'''8-> des''8-. aes'8-> dis'8 bes'8-. |
 r4 a'8 e'8 b8-- fis'8 c''8 f''8 |
 bes''8 aes''8 d''8-> g''8 \tuplet 3/2 { c'''8 f'''8-^ c''8-^ } g'4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { g1*16/16:m7 c1*16/16:7.5+.9+ f1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "F major — superimposition"} cis''8\mf e''8 fis''16( bes''16 cis'''16-> e'''16) des'''16( bes''16-> ges''16 e''16) des''8-. bes'8 |
 b'8 aes'8-> \tuplet 3/2 { f'8( des'8 b8) } des'8 f'8 aes'8 bes'8 |
 a'8 ges'8-- ees'8 b8-> dis'8 fis'8 r4 |
 a'8 b'8-> dis''16-> fis''16 a''16 b''16 ees'''8 b''8 a''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { c1*16/16:m7 f1*16/16:7 bes1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "B♭ major — bebop"} c''8\mf bes'8-. a'16--( g'16 f'16 e'16->) ees'8 d'8 \tuplet 3/2 { c'8 d'8-> ees'8 } |
 ees'8 e'8-> f'8 g'8-> d''8 b'8-> c''8-> c''8-> |
 c''16( g'16 e'16-. f'16) f'8--\mp e'8 d'8 e'8 cis'8\p d'8 |
 d'8 c'8-> g'16 e'16-> f'16 f'16 r4 fis'4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { c1*16/16:m7 f1*16/16:7.5+.9+ bes1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "B♭ major — triad pair"} bes'16(\mf ees''16 g''16 a''16->) c'''8 f'''8-> g''16-- ees'''16 bes''16-- a''16 f''8 c''8 |
 des''8-> gis'8 \tuplet 3/2 { f'8( ges'8-> ees'8) } \tuplet 3/2 { b8-> gis'8 des'8 } f'8 ges'8 |
 f'8 bes'8 d''8-> e''8 g''8-- c'''8 r4 |
 d'''8 f'''8 bes''8 c'''8 g''8-^ e'''8 f'''4-> \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { c1*16/16:m7 f1*16/16:7.5+.9+ bes1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "B♭ major — 4ths"} c''8\mf g'8 d'8-^ e'8 a'16 e'16 b16-- fis'16 c''8-> f''8-> |
 f''8 c''8-> g'16 a'16-^ ges''16 b''16-> r4 e'''8-^ d'''8 |
 \tuplet 3/2 { d'''8 g''8 c'''8 } f'''8-> e'''8-. \tuplet 3/2 { b''8-^( fis''8 gis''8) } c'''8 f'''8 |
 bes''8 gis''8-> d'''16->( a''16 e''16 fis''16) e'''8 b''8 fis''4\f \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { c1*16/16:m7 f1*16/16:7.5+.9+ bes1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "B♭ major — superimposition"} \tuplet 3/2 { b'8( aes'8-- f'8-.) } des'8 b8 cis'8 f'8 \tuplet 3/2 { gis'8 b'8 bes'8 } |
 \tuplet 3/2 { bes'8( ges'8 e'8) } des'16( e'16-> ges'16 ais'16) des''8-> e''8 \tuplet 3/2 { ges''8 bes''8-- a''8-> } |
 a''8 g''8 e''8 des''8 a'8-> g'8 e'16->( cis'16 e'16 g'16) |
 a'8-> cis''8 r4 e''16--( g''16 a''16 cis'''16) d'''4-. \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { f1*16/16:m7 bes1*16/16:7 ees1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "E♭ major — bebop"} c''8\mf bes'8 a'8 aes'8 g'8-. aes'8-> a'16 bes'16-^ a'16 aes'16-. |
 c''16( a'16 bes'16-^ ees''16->) cis''8-^ d''8 \tuplet 3/2 { d''8( g''8-- e''8-.) } f''16 f''16-^ g''16 aes''16 |
 g''8 f''8 \tuplet 3/2 { ees''8( c''8 a'8) } bes'8-. bes'8 r4 |
 \tuplet 3/2 { a'8( g'8 f'8) } g'8--\p a'8-> bes'8-> b'8-> c''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { f1*16/16:m7 bes1*16/16:7.5+.9+ ees1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "E♭ major — triad pair"} c''8\mf ees''8 aes''8 bes''8 \tuplet 3/2 { d'''8-^( f'''8 aes''8->) } \tuplet 3/2 { ees'''8-- c'''8 bes''8 } |
 \tuplet 3/2 { bes''8( cis'''8 ges''8) } b''8-> e'''8 aes''8 ges''8 cis'''8-> bes''8 |
 bes''8 g''8 ees'''8-> f'''8 a''8 c'''8 bes''8 ees''8 |
 g'8\mf f'8-> r4 a'8-- c'8 ees'4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { f1*16/16:m7 bes1*16/16:7.5+.9+ ees1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "E♭ major — 4ths"} c''8\mf f''8 bes''16( ees'''16 d''16 a'16) e'8-> fis'8 f''8 bes''8 |
 bes''16-. f''16-> c''16 d''16 \tuplet 3/2 { cis'''8( aes''8-> ees''8) } bes'8 b''8 e'''8 a''8 |
 a''8-> e''8 b'16( cis''16-- f''16-> bes''16) r4 \tuplet 3/2 { ees'''8->( aes''8 ees''8) } |
 bes'16 f'16-> g'16 g''16 \tuplet 3/2 { c'''8-.( f'''8 ees'''8) } a''8 d'''8-. g''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { f1*16/16:m7 bes1*16/16:7.5+.9+ ees1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "E♭ major — superimposition"} b'8\mf a'8 \tuplet 3/2 { ges'8( ees'8 b8->) } ees'8 fis'8 \tuplet 3/2 { a'8 b'8 aes'8 } |
 a'8 ges'8 ees'8 b8-> r4 ees'8 d'8 |
 cis'8 e'8 g'8 a'8 cis''8 e''8 g''16 a''16-> cis'''16 e'''16 |
 des'''8 a''8 g''8-- e''8 des''8 a'8 g'4-> \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { bes1*16/16:m7 ees1*16/16:7 aes1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "A♭ major — bebop"} c''8\mf des''8 c''8\mp g''8 \tuplet 3/2 { e''8 f''8 f''8-^ } g''8-> aes''8-. |
 aes''8 bes''8-> c'''8 bes''8 aes''8 g''8 aes''8\mf bes''8-> |
 bes''8 c'''8 d'''8-> f'''8 d'''16 ees'''16 ees'''16 d'''16 f'''16 d'''16-. ees'''16 ees'''16 |
 e'''16-.( ees'''16 d'''16 bes''16) g''8 aes''8 r4 aes''4-> \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { bes1*16/16:m7 ees1*16/16:7.5+.9+ aes1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "A♭ major — triad pair"} \tuplet 3/2 { des''8( f'8-> aes'8) } g'8\ff ees'8 bes'8-. des''8-. aes''8 f'''8 |
 fis''8-- b''8 ees''8 e''8-> \tuplet 3/2 { a'8( des'8 b8) } fis'8 ees''8 |
 ees''8 aes'8 c'8 bes'8 r4 f'16 d''16 ees''16 c'''16 |
 aes''16 bes''16 d'''16 f''16 \tuplet 3/2 { ees''8 aes'8 c'8 } bes'8 f'8 d''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { bes1*16/16:m7 ees1*16/16:7.5+.9+ aes1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "A♭ major — 4ths"} c''8\mf f''8 bes''8 aes''8 ees''8 aes''8 des'''8 b''8 |
 b''8 e'''8-. a''8-. d'''8 r4 a''8 e''8-. |
 ees''8 aes''8 des'''8-> ges''8-^ d''8 a'8-^ \tuplet 3/2 { e'8 fis'8-> c''8-. } |
 g'8 d'8-. a'8 aes'8-> cis''8 ges''8-. e''4-. \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { bes1*16/16:m7 ees1*16/16:7.5+.9+ aes1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "A♭ major — superimposition"} b'16--(\mf aes'16 e'16 d'16) b8 d'8-^ e'8-> aes'8 b'8 des''8 |
 c''8 d''8-> fis''8-- a''8 c'''8-> d'''8-. c'''8 des'''8 |
 d'''8 f'''8-. d'''8-- b''8-- r4 \tuplet 3/2 { g''8 f''8 d''8 } |
 b'16 g'16-- f'16 d'16 b8 d'8 f'8-> g'8 g'4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { ees1*16/16:m7 aes1*16/16:7 des1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "D♭ major — bebop"} \tuplet 3/2 { c''8( bes'8-^ aes'8) } g'16( ges'16 f'16-> ees'16) des'8 c'8 des'8 ees'8 |
 \tuplet 3/2 { ees'8( des'8 des'8) } b16 c'16 des'16 b16 c'8 c'8-> des'8\mf ees'8 |
 r4 ees'8 des'8 b8 c'8 c'16-- des'16 ees'16-- f'16 |
 g'16 des''16 b'16 c''16-> c''16-^ des''16 ees''16-> des''16 c''8 bes'8 a'4\f \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { ees1*16/16:m7 aes1*16/16:7.5+.9+ des1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "D♭ major — triad pair"} des''8\mf bes'8 ges'8 aes'8 c'16-.( ees'16 des'16-^ ges'16) bes'8-> aes''8 |
 aes''16( e''16 b'16 d'16--) ges'8 a'8-> \tuplet 3/2 { aes'8-> e'8 b8 } ges'8-. d'8 |
 \tuplet 3/2 { des'8( aes'8 f'8-^) } bes'8 g'8-- ees'8 f'8 aes'16 des'16 bes'16-^ g'16 |
 ees'8-> f'8 aes'16( des''16 bes''16-. g''16) r4 ees''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { ees1*16/16:m7 aes1*16/16:7.5+.9+ des1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "D♭ major — 4ths"} c''8\mf g'8 d'16 e'16-> aes'16-. ees'16 bes'16->( c'16 f'16-> bes'16) ees''8-> des''8 |
 c''8-. g'8 \tuplet 3/2 { d'8-- a'8 d''8 } r4 g''8 c'''8-> |
 c'''8 g''8-. d''16( e''16 bes''16 ees'''16) aes''8 fis''8-> \tuplet 3/2 { c'''8-. g''8-. d''8-> } |
 a'8 ees'''8 aes''8 des'''8 b''16( f'''16 c'''16 g''16) a''4-> \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { ees1*16/16:m7 aes1*16/16:7.5+.9+ des1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "D♭ major — superimposition"} b'8\mf aes'8-^ e'8 d'8 b8-> d'8 \tuplet 3/2 { e'8( aes'8-^ ges'8) } |
 ges'16-> d'16 c'16 d'16-> \tuplet 3/2 { ges'8( a'8 c''8->) } \tuplet 3/2 { d''8 ges''8-> a''8 } c'''8-- c'''8-^ |
 b''16 d'''16-- f'''16-^ d'''16 b''8 g''8 f''16 d''16 b'16 g'16-> \tuplet 3/2 { f'8( d'8 b8-.) } |
 r4 d'8-> f'8-. g'8 b'8 c''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { aes1*16/16:m7 des1*16/16:7 fis1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "F♯ major — bebop"} \tuplet 3/2 { c''8->( des''8 aes''8) } f''8 ges''8-. ges''16( aes''16-. bes''16 b''16-.) c'''8 des'''8 |
 des'''8 c'''8-> \tuplet 3/2 { b''8 bes''8-> aes''8 } bes''8 b''8 c'''8 des'''8 |
 fis''8\f e'''8 f'''8 fis''8-^ r4 e'''8-^ f'''8 |
 f'''8 dis'''8 f'''8\f dis'''8 d'''8 cis'''8-. c'''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { aes1*16/16:m7 des1*16/16:7.5+.9+ fis1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "F♯ major — triad pair"} b'8\mf ges'8 ees'8-> aes'8-. f'8 des'8 \tuplet 3/2 { ees'8--( ges'8-> b'8) } |
 a'16( des''16-^ e''16 d'''16--) \tuplet 3/2 { b''8( g''8-. a''8) } des'''8-> e'''8 b''8 d'''8 |
 cis'''8 fis''8 ais'16-. gis'16 c'16-. dis'16-> cis'8\p ais'8 r4 |
 fis'16 gis'16-- dis''16-- c'''16 cis'''8-. ais''8 fis''8 dis'''8 gis''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { aes1*16/16:m7 des1*16/16:7.5+.9+ fis1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "F♯ major — 4ths"} b'16->(\mf e''16 a''16 d'''16) ees''8 aes''8 des'''16->( ges''16 ges''16 des''16-.) aes'8 bes'8 |
 a'8 e'8-. b8 des'8-- b'8-> e''8-> \tuplet 3/2 { a''8 d'''8 des''8 } |
 cis''8 fis''8 b''8 e'''8 dis''8-. ais'8-> f'16( c'16 cis''16 fis''16) |
 r4 b''8 a''8 ais'8 dis''8 gis''4-^ \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { aes1*16/16:m7 des1*16/16:7.5+.9+ fis1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "F♯ major — superimposition"} c''8\mf a'8 \tuplet 3/2 { ges'8 d'8-- c'8-> } \tuplet 3/2 { d'8( ges'8-> a'8) } c''16( d''16 ges''16 ges''16) |
 \tuplet 3/2 { f''8->( d''8-> b'8) } g'8 f'8 d'16-> b16 d'16 b16 r4 |
 c'8 dis'8 f'8 a'8 c''16 dis''16 f''16-. a''16 c'''8-. dis'''8 |
 f'''16( dis'''16 c'''16 a''16) f''8 dis''8 c''8 a'8-> ais'4-. \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { des1*16/16:m7 fis1*16/16:7 b1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "B major — bebop"} bes'8\mf g'8-> aes'8 aes'8 ges'8 f'8 e'8-^ ees'8-- |
 dis'8 e'8 gis'8-> f'8 fis'8 fis'8-. gis'8 ais'8 |
 gis'8 f'8 fis'8-. f'8 d'8 dis'8 dis'8-> cis'8-> |
 \tuplet 3/2 { b8 cis'8 dis'8 } r4 f'8 fis'8 g'4\mp \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { des1*16/16:m7 ges1*16/16:7.5+.9+ b1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "B major — triad pair"} \tuplet 3/2 { b'8 e'8-. aes'8 } ges'8 des'8 bes'8 b'8-> \tuplet 3/2 { aes''8 e'''8 ges''8-. } |
 ges''8 d''8-> \tuplet 3/2 { a'8( g'8 e'8->) } c'16( a'16 d'16 ges'16) r4 |
 fis'8-> b'8 dis''16( f''16-- gis''16 cis'''16-.) dis'''8 b''8 fis''8-> f''8-. |
 \tuplet 3/2 { cis''8 gis'8 fis'8 } dis'8 b8 gis'8-^ cis'8 f'4-^ \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { des1*16/16:m7 ges1*16/16:7.5+.9+ b1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "B major — 4ths"} \tuplet 3/2 { b'8 e''8 a''8-- } \tuplet 3/2 { d'''8 des''8 aes'8 } ees'8-> f'8-> bes'8 ees''8-> |
 d''16 g''16 c'''16 bes''16-- \tuplet 3/2 { e''8 b'8-> ges'8 } \tuplet 3/2 { cis'8 c''8 f''8 } \tuplet 3/2 { bes''8-> ees'''8 bes'8 } |
 ais'8 dis''8-- \tuplet 3/2 { gis''8 fis''8-. b'8 } \tuplet 3/2 { fis'8 cis'8-. gis'8-> } cis''8 fis''8 |
 r4 \tuplet 3/2 { b''8( e'''8 ais'8) } f'8 c'8 d'4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { des1*16/16:m7 ges1*16/16:7.5+.9+ b1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "B major — superimposition"} b'8--\mf g'8 f'8-. d'8 b16-> d'16-. f'16 g'16-> \tuplet 3/2 { b'8 d''8 e''8 } |
 f''8 d''8 \tuplet 3/2 { b'8 g'8-. f'8 } d'8-^ b8 d'8 e'8 |
 dis'16 f'16 a'16 c''16 r4 dis''8 f''8 a''8 c'''8 |
 dis'''8-> f'''8 \tuplet 3/2 { dis'''8 c'''8 a''8-> } f''8-> dis''8-> dis''4-> \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { fis1*16/16:m7 b1*16/16:7 e1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "E major — bebop"} b'8\mf fis''8 dis''8-. e''8 e''8 fis''8-. gis''8-.\mp a''8 |
 a''8-> gis''8 fis''8-. e''8 dis''16 cis''16 b'16 bes'16 \tuplet 3/2 { a'8--( gis'8 fis'8) } |
 fis'8 gis'8 ais'8\ff b'8 c''8 fis''8 r4 |
 dis''8-> e''8 e''8 ais''8 g''16-> gis''16 gis''16 ais''16 b''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { fis1*16/16:m7 b1*16/16:7.5+.9+ e1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "E major — triad pair"} cis''8\mf a'8-. e'8-> fis'8-. \tuplet 3/2 { b8( dis'8 cis'8-.) } e'16-- a'16-- fis''16 dis''16-> |
 d''8 b'8 \tuplet 3/2 { g'8 f'8-> c'8-- } \tuplet 3/2 { a'8 g'8 b8-> } d'16 f'16 a'16 c''16 |
 b'16-.( gis''16-. e'''16-> fis''16) r4 ais''8 cis''8-> b'8 e'8 |
 gis'8 fis'8 \tuplet 3/2 { cis'8-- ais'8 b'8 } \tuplet 3/2 { gis''8 e'''8 fis''8 } ais''4-- \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { fis1*16/16:m7 b1*16/16:7.5+.9+ e1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "E major — 4ths"} b'8\mf e''8 a''16-> d'''16 dis''16 gis''16-- cis'''16 b''16 e''16-^ b'16 fis'8-> gis'8 |
 g'16(\p c''16 f''16 dis''16->) f'8-> c'8 g'8 a'8-> g'8 c''8 |
 b'16(\mf e''16 a''16 d'''16-.) dis''8-. ais'8 r4 \tuplet 3/2 { f'8--( c'8 e''8-^) } |
 a''8 d'''8 g''8 cis''8 gis'8 dis'8-- f'4-> \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { fis1*16/16:m7 b1*16/16:7.5+.9+ e1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "E major — superimposition"} c''16->\mf bes'16-> g'16 e'16 c'16(\p e'16-> g'16 ais'16) c''8 e''8-> g''16(\p ais''16 c'''16 a''16-^) |
 a''8 c'''8 dis'''8-^ f'''8 dis'''8 c'''8 a''8 a''8 |
 r4 gis''8\mf ais''8 d'''8 f'''8 d'''8 ais''8-. |
 gis''8 f''8 \tuplet 3/2 { d''8-^ ais'8 gis'8 } \tuplet 3/2 { f'8( d'8 f'8->) } dis'4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { b1*16/16:m7 e1*16/16:7 a1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "A major — bebop"} b'8\mf cis''8 gis''16-> f''16 fis''16-> fis''16-> \tuplet 3/2 { gis''8 a''8-> b''8 } cis'''16->(\ff b''16 a''16 gis''16) |
 cis'''8 ais''8 \tuplet 3/2 { b''8->( b''8 cis'''8->) } \tuplet 3/2 { d'''8 dis'''8 e'''8 } r4 |
 fis''16-- dis'''16 e'''16 e'''16 dis'''8 c'''8-. cis'''8 cis'''8 b''16( a''16-> gis''16-> a''16) |
 b''8 cis'''8 dis'''8 fis''8 dis'''8 e'''8 e'''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { b1*16/16:m7 e1*16/16:7.5+.9+ a1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "A major — triad pair"} d''16(\mf a'16 fis'16 gis'16) b16( e'16-> d'16-> a'16-^) \tuplet 3/2 { fis'8 b8 gis'8 } e'8 fis'8 |
 g'8 e'8 c'16 ais'16-. d'16-- f'16-> r4 e'16( g'16 c''16-> d''16) |
 e''16( cis''16 a'16-> b16) dis'8 fis'8 e'16 cis'16 a'16 dis'16-^ b8 fis'8 |
 a'8-^ cis'8 e'16( b'16-> fis'16 dis'16) e'16 a'16-. cis''16-> b''16 fis''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { b1*16/16:m7 e1*16/16:7.5+.9+ a1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "A major — 4ths"} b'8->\mf e''8-> a''16 g''16 a'16 e'16-> \tuplet 3/2 { b8 fis'8 gis'8-> } cis''16( fis''16 b''16 e'16) |
 e'8\ff a'8 d''16 g''16-> g'16 c''16 f''8 ais''8-> \tuplet 3/2 { e'8( a'8 d''8) } |
 cis''8-^ gis'8 dis'8 ais'8 b'16( e''16 a''16 g''16--) r4 |
 \tuplet 3/2 { dis''8 gis''8 cis'''8-> } b''8 cis''8 fis''8 b''8 e'''4-> \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { b1*16/16:m7 e1*16/16:7.5+.9+ a1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "A major — superimposition"} c''16(\mf bes'16 g'16-- e'16) c'8-> e'8-> g'8 ais'8-^ c''8 d''8-> |
 cis''8-> dis''8 g''8 ais''8 cis'''8 d'''8-. r4 |
 dis'''8 c'''8 gis''8 fis''8 dis''8 c''8 gis'16-. fis'16 dis'16 c'16 |
 dis'16 fis'16-- gis'16 c''16 dis''8 fis''8-> \tuplet 3/2 { gis''8( c'''8 dis'''8-.) } cis'''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { e1*16/16:m7 a1*16/16:7 d1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "D major — bebop"} b'8->\mf cis''8-> \tuplet 3/2 { d''8 cis''8-> b'8-> } a'8 aes'8 g'16 fis'16 e'16-- d'16 |
 d'8 cis'8 b8\f cis'8 d'8 e'8 \tuplet 3/2 { d'8 cis'8 d'8-> } |
 d'16-^ cis'16 b16 cis'16 d'8 e'8 fis'8 gis'8-> a'8 ais'8-> |
 b'8-.\mp bes'8 r4 a'8 gis'8 fis'4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { e1*16/16:m7 a1*16/16:7.5+.9+ d1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "D major — triad pair"} d''8\mf b'8-> g'8 e'8-. cis'8-> a'8-- g'16 b16-^ d'16 cis'16 |
 c'8\ff f'8 a'8 bes'8-> dis''8 g''8 a''16--( c'''16 f'''16 g''16) |
 fis''8 a''8 r4 d'''8 e'''8 \tuplet 3/2 { b''8 gis''8 a''8-. } |
 fis''8 d''8 b'16 gis'16 e'16 d'16 a'8 fis'8 e'4-- \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { e1*16/16:m7 a1*16/16:7.5+.9+ d1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "D major — 4ths"} b'8\mf e''8 \tuplet 3/2 { a''8( d'''8 a'8) } e'8-> b8 cis'8 b'8 |
 \tuplet 3/2 { bes'8 f'8 c'8 } g'16( g'16 c''16 f''16) dis''16 a'16 e'16 b16 \tuplet 3/2 { fis'8 g'8 c''8 } |
 b'8 fis'8 cis'8 gis'8 gis'8 cis''8-> fis''16 e''16-> a'16-^ d''16-- |
 r4 g''8-. c'''8 \tuplet 3/2 { cis''8 gis'8-> dis'8 } f'4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { e1*16/16:m7 a1*16/16:7.5+.9+ d1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "D major — superimposition"} c''8\mf dis''8 \tuplet 3/2 { f''8( a''8 c'''8) } dis'''8-> f'''8-> ees'''8 d'''8-. |
 cis'''8-. bes''8 g''16( dis''16 cis''16 bes'16) g'8 dis'8 cis'16-^( dis'16 g'16-. g'16->) |
 gis'8 f'8-. \tuplet 3/2 { cis'8-> b8 cis'8 } \tuplet 3/2 { f'8( gis'8-- b'8-.) } r4 |
 cis''16 f''16-> gis''16-> b''16-. \tuplet 3/2 { cis'''8 f'''8 cis'''8 } b''16->( gis''16 f''16 cis''16-.) cis''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { a1*16/16:m7 d1*16/16:7 g1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "G major — bebop"} b'8->\mf gis'8 a'8 a'8 \tuplet 3/2 { g'8->( fis'8-> e'8) } d'8 cis'8 |
 cis'16( d'16 b16 c'16) c'8 b8 c'16 b16-> e'16 cis'16 d'16->( d'16 e'16 d'16->) |
 d'8 cis'8-- bes'8 b8 b16 e'16 cis'16 d'16 r4 |
 g'8 f'8 fis'8 fis'8-^ e'8-> ees'8 d'4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { a1*16/16:m7 d1*16/16:7.5+.9+ g1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "G major — triad pair"} c''8\mf g'8 e'8 d'8-> a'16( fis'16 e'16 g'16->) \tuplet 3/2 { c'8( d'8 fis'8) } |
 f'16\p d'16-> bes'16 gis'16 c'8-> ees'8 d'8 f'8-> bes'8 c''8-- |
 \tuplet 3/2 { b'8-.( d''8 g''8->) } a''8-. cis'''8 e'''8 g''8 r4 |
 d'''8 b''8 a''8-> e''8 cis''8 d''8 b'4-> \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { a1*16/16:m7 d1*16/16:7.5+.9+ g1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "G major — 4ths"} c''16(\mf g'16 d'16 a'16) b'8 e''8 a''16-- d'''16 d''16 g''16 c'''16( f'''16-. e''16 b'16) |
 bes'8 ees''8 \tuplet 3/2 { gis''8 des'''8 gis'8-> } ees'16->( bes'16 f'16-> fis'16) b'8 e''8-^ |
 e''16 a''16-> d'''16 c'''16 \tuplet 3/2 { cis''8-> aes'8 dis'8 } ais'8-> b'8 e''8 a''8-- |
 r4 d'''8 d''8 g''8 c'''8 ais''4 \bar "||" } >> \layout { indent = 0 } \header { piece = "" } }
\score { << \new ChordNames \chordmode { a1*16/16:m7 d1*16/16:7.5+.9+ g1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "G major — superimposition"} des''16\mf bes'16-> g'16-> ees'16-. cis'8 dis'8-- g'8 ais'8 cis''16-> dis''16 g''16 g''16 |
 g''8 bes''8 cis'''8-- ees'''8 des'''8-> bes''8 g''8 fis''8 |
 f''8 gis''8 b''8 cis'''8 \tuplet 3/2 { f'''8-> cis'''8 b''8-- } r4 |
 aes''8 f''8-^ cis''8 b'8-> aes'8 f'8 fis'4-> \bar "||" } >> \layout { indent = 0 } \header { piece = "" } } }