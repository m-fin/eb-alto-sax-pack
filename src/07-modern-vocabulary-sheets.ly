\version "2.24.4"

\paper {
  #(set-paper-size "letter")
  top-margin = 12\mm bottom-margin = 12\mm left-margin = 14\mm right-margin = 14\mm
  ragged-last-bottom = ##t
  markup-system-spacing.basic-distance = #8
  system-system-spacing.basic-distance = #13
}
\layout { \context { \Score \override RehearsalMark.self-alignment-X = #LEFT \override RehearsalMark.font-size = #-1 } } \book { \header { title = "Modern Vocabulary Sheets" composer = "Original exercise — CC0" tagline = ##f copyright = "E♭ alto sax (written pitch). Original material by the pack authors, CC0 1.0 public domain dedication." } \markup \small \italic \wordwrap-string #"Triad pairs, intervallic 4ths, pentatonic superimposition, side-slipping and wide-interval chord-tone lines in 12 keys. 16ths, 4 = 120–200." \markup \vspace #0.6 \score { << \new ChordNames \chordmode { c1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over Cm7"} bes'16\mf g'16 ees'16-. c'16 f'16 a'16 bes'16 ees''16-> g''16 a''16 c'''16 f'''16 g''16 ees'''16 bes''16 a''16 |
 f''16-- c''16-> bes'16-. g'16 ees'16( c'16 f'16 a'16) bes'16( ees''16 g''16-. a''16) c'''4-.\mp \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { g1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over Gm7"} d''16\mf f'16-> bes'16 g'16 e'16 c''16-> d''16 bes''16-> f'''16->( g''16 c'''16 e''16) f''16( bes'16 d'16 c'16) |
 g'16-^( e''16-- f''16 d'''16) bes''16 c'''16 e'''16-> g''16 f''16 bes'16 d'16 c'16 g'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { d1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over Dm7"} c''16(\mf a'16 f'16-- g'16) b16 d'16 c'16 f'16-- \tuplet 6/4 { a'16 g''16 d''16 b'16 c''16 f''16 } a''16( g''16 d'''16 b''16) |
 c'''16 f'''16-. a''16 d'''16-. \tuplet 6/4 { g''16( b''16 c'''16 a''16 f'''16-^ g''16) } b''16( d'''16 c'''16-> a''16) f''4-> \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { a1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over Am7"} c''16\mf g'16 e'16 d'16 a'16-.( fis'16 e'16-> g'16->) c'16 d'16 fis'16 a'16 c''16 e''16-. g''16-- fis''16-- |
 a''16\mf d'''16 e'''16 c'''16 \tuplet 6/4 { g''16 fis''16 d''16 a'16 g'16 e'16-. } c'16-> a'16-^ d'16 fis'16-> g'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { e1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over Em7"} d''16\mf b'16-. g'16 e'16 cis'16( a'16 g'16-> b16) d'16( cis'16 e'16-> a'16->) b'16 d''16 g''16-. a''16 |
 cis'''16( e'''16 g''16 d'''16) b''16 a''16-> e''16 cis''16 d''16-.( b'16-. g'16-> e'16) cis'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { b1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over Bm7"} d''16->\mf a'16 fis'16-> gis'16 b16(\mf e'16 d'16 a'16) fis'16( b16-> gis'16 e'16) fis'16 a'16 d'16-> b'16 |
 gis'16--( e'16 fis'16 a'16) d''16-^ b''16 gis''16 e''16-. \tuplet 6/4 { fis''16( a''16-. d'''16 gis''16 b''16 e'''16->) } d'''4-. \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { fis1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over F♯m7"} cis''16-.(\mf e'16 a'16-> fis'16) dis'16-^ b'16 cis''16-- a''16 e'''16( fis''16 b''16 dis''16) e''16-^ a'16 cis'16 b16 |
 fis'16( dis''16-> e''16-- cis'''16) a''16 b''16-. dis'''16 fis''16-> e''16->( a'16-> cis'16-. b16->) fis'4\f \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { des1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over D♭m7"} b'16-.(\mf e''16-^ aes''16 bes''16) des'''16-> ges''16-> aes''16-> e'''16 b''16( bes''16 ges''16 des''16) b'16( aes'16 e'16 des'16--) |
 bes'16 ges'16 e'16-- aes'16-^ b16( bes'16-. des'16 ges'16->) aes'16 b'16 e''16-^ ges''16 bes''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { aes1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over A♭m7"} \tuplet 6/4 { b'16->( ees'16-> ges'16 f'16 des'16 aes'16-.) } b'16( ges''16 ees'''16 f'''16->) \tuplet 6/4 { aes''16 des''16-. b'16 ees'16 ges'16-> f'16 } des'16 aes'16-- b'16 ges''16 |
 ees'''16( f'''16 aes''16 des''16->) b'16( ees'16 ges'16 f'16->) des'16-- aes'16 b'16-- ges''16 ees'''4-> \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { ees1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over E♭m7"} bes'16\mf ges''16-> des'''16-> ees'''16 aes''16 c''16 des''16-> ges'16 bes'16( aes'16-> ees'16-> c''16) des''16->( bes''16-^ ges''16-. aes''16->) |
 c'''16-- ees''16 des''16 ges'16 bes'16-. aes'16 ees'16 c''16 des''16-. bes''16 ges''16 aes''16 c'''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { bes1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over B♭m7"} des''16(\mf f''16-> aes''16 g''16) bes''16( ees'''16 f'''16 des'''16) aes''16( g''16-> ees''16 bes'16->) aes'16 f'16 des'16 bes'16-> |
 ees'16 g'16 aes'16 des''16 f''16 g''16 bes''16 ees'''16 f'''16-> des'''16-. aes''16 g''16-> ees''4-- \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { f1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over Fm7"} c''16->\mf ees''16 aes''16 f'''16-> d'''16( bes''16-^ c'''16 ees'''16->) aes''16 d'''16 f'''16 bes''16 aes''16-> ees'''16 c'''16 d''16 |
 f''16( bes''16-> aes''16-> ees''16-.) c''16 d'16-> f'16-. bes'16 r4 aes'4\mf \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { c1*32/16:7.5+.9+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over C7alt"} c''16(\mf dis'16 aes'16-> fis'16) des'16( bes'16 c''16-. aes''16) dis'''16 fis''16-. bes''16-- des''16 c''16( dis'16 aes'16 fis'16) |
 des'16( bes'16-> c''16-. aes''16) dis'''16( fis''16-^ bes''16 des''16) c''16 dis'16-> aes'16 fis'16-^ des'4-- \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { g1*32/16:7.5+.9+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over G7alt"} ais'16\mf ees'16 g'16 f'16-> cis'16( aes'16 g'16 ees''16) ais''16 cis'''16 aes''16 f'''16-^ ees'''16->( g''16-> ais''16-> aes''16) |
 cis''16 f'16 ees'16-- g'16 ais'16-> cis'16-. aes'16 f'16 r4 g'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { d1*32/16:7.5+.9+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over D7alt"} d''16->(\mf bes'16 f'16 gis'16) c'16( ees'16-> d'16 f'16) bes'16 gis''16 ees''16 c''16 d''16->( f''16-> bes''16 gis''16->) |
 \tuplet 6/4 { ees'''16-^ c'''16 d'''16-> f'''16 bes''16-> ees'''16-> } \tuplet 6/4 { gis''16-.( c'''16-. bes''16 f'''16 d'''16-. gis''16) } c'''16-. ees'''16-- d'''16 bes''16 f''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { a1*32/16:7.5+.9+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over A7alt"} c''16\mf a'16-> f'16 dis'16 bes'16( g'16 f'16 a'16-.) c'16( dis'16 g'16 bes'16) a'16( c''16 f''16 g''16--) |
 bes''16-. dis'''16 f'''16 c'''16 a''16( bes''16-> g''16 dis''16->) c''16-> a'16-. f'16 dis'16 bes'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { e1*32/16:7.5+.9+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over E7alt"} c''16(\mf e''16-> g''16-- f'''16) d'''16( ais''16-> c'''16 e'''16->) g''16(\mf d'''16-. f'''16 ais''16) g''16 e'''16 c'''16 d''16-^ |
 f''16 ais''16 g''16 e''16 c''16( d'16-. f'16 ais'16) r4 g'4-- \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { b1*32/16:7.5+.9+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over B7alt"} b'16(\mf d''16-> g''16-. f'''16-.) c'''16( a''16 b''16 d'''16) g''16( c'''16 f'''16-> a''16-.) g''16-.( d'''16 b''16 f''16) |
 a''16 c'''16-> b''16 g''16 d''16-. f'16-> a'16 c''16-> r4 b'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { ges1*32/16:7.5+.9+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over G♭7alt"} d''16\mf a'16 ges'16-> g'16-> e'16( c'16 a'16-. d'16-^) \tuplet 6/4 { ges'16 g'16-> c''16 e''16 ges''16 a''16-> } d'''16 e'''16 c'''16 g''16 |
 ges''16->( d''16-. a'16 g'16--) e'16->( c'16-> a'16 d'16) \tuplet 6/4 { ges'16( g'16 c''16 e''16 ges''16-. a''16--) } d'''4-^ \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { des1*32/16:7.5+.9+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over D♭7alt"} des''16->\mf a'16-> e'16 d'16 \tuplet 6/4 { b16 g'16 e'16 a'16 des'16 d'16 } g'16 b'16 des''16-> e''16-> a''16 b''16 d'''16 g''16 |
 a''16->( e'''16 des'''16 d'''16->) b''16-. g''16-^ e''16-- des''16 a'16( g'16 d'16 b16) a'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { aes1*32/16:7.5+.9+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over A♭7alt"} b'16(\mf aes'16 e'16 d'16) a'16( ges'16 e'16-. aes'16->) b16-^( d'16 ges'16 a'16) aes'16\f b'16 e''16 ges''16-> |
 \tuplet 6/4 { a''16 d'''16 e'''16-> b''16 aes''16 a''16-> } ges''16-.( d''16-> b'16 aes'16) e'16( d'16-. a'16-> ges'16) e'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { ees1*32/16:7.5+.9+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over E♭7alt"} \tuplet 6/4 { b'16->( ees''16 fis''16 a''16-> des'''16 e'''16) } fis''16 ees'''16 b''16-> a''16 e''16->( des''16-. b'16 fis'16) ees'16 des'16-> e'16 a'16 |
 b'16 ees''16 fis''16 a''16-. des'''16 e'''16 fis''16-> ees'''16-. r4 b''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { bes1*32/16:7.5+.9+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over B♭7alt"} bes'16\mf ges''16 cis'''16 e'''16-> aes''16( b'16 bes'16-> cis'16->) ges'16( e'16-> b16 aes'16) bes'16 ges''16 cis'''16 e'''16 |
 aes''16( b'16 bes'16 cis'16->) ges'16 e'16-. b16 aes'16 bes'16 ges''16 cis'''16 e'''16 aes''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { f1*32/16:7.5+.9+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "triad pair over F7alt"} des''16(\mf f''16 gis''16-- ges''16) ees'''16( b''16 des'''16 f'''16-.) gis''16->( ees'''16 ges''16 b''16) gis''16-. f'''16 des'''16 ees''16 |
 ges''16( b''16-. gis''16 f''16) des''16 ees'16 ges'16-> b'16 gis'16(\mf f'16-- des'16-^ ges'16) ees'4-> \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { c1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "4ths over Cm7"} c''16\mf f''16 bes''16 aes''16 bes'16--( f'16 c'16 g'16) a'16-.( d''16-. g''16-> f''16->) bes'16 ees''16 gis''16-. des'''16 |
 a'16 e'16-> b16-. fis'16-> c''16( f''16 bes''16-> aes''16) a'16 d''16 g''16 f''16-> g'4->\p \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { g1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "4ths over Gm7"} c''16(\mf g'16 d'16-- e'16) d''16( g''16 c'''16 f'''16) f''16-. bes''16 ees'''16 aes''16-> d''16( a'16 e'16-> b16->) |
 c''16->( f''16 bes''16 ees'''16) e''16( a''16-> d'''16 g''16) d''16->( a'16 e'16 fis'16) e''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { d1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "4ths over Dm7"} c''16\mf f''16-> bes''16 aes''16 b'16-- ges'16-. cis'16 dis'16 \tuplet 6/4 { a'16 e'16 b16 fis'16-> c''16-> f''16 } ais''16 ees'''16 b'16 ges'16-. |
 cis'16 gis'16 c''16-> f''16 ais''16( ees'''16 b'16 e''16-^) a''16 d'''16-> a'16 e'16 b4\f \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { a1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "4ths over Am7"} c''16\mf g'16 d'16 e'16 b'16( e''16-. a''16 d'''16) c''16->( f''16-. ais''16 ees'''16) d''16 g''16-^ c'''16 bes''16 |
 c''16 f''16 bes''16-- aes''16 d''16->( g''16-> c'''16 f'''16->) \tuplet 6/4 { c''16( f''16 bes''16 aes''16 d''16 a'16->) } e'4-> \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { e1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "4ths over Em7"} b'16\mf e''16 a''16 d'''16-^ cis''16->( aes'16 dis'16 f'16->) a'16 e'16 b16 cis'16-- cis''16( fis''16 b''16 e'''16) |
 e''16 b'16-. fis'16 gis'16 fis''16( b''16 e'''16-> d'''16) \tuplet 6/4 { e''16-. a''16-^ d'''16 g''16 d''16 a'16 } e'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { b1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "4ths over Bm7"} b'16\mf e''16-> a''16 g''16 cis''16 fis''16 b''16 a''16 b'16( e''16-. a''16-> g''16) d''16->( g''16 c'''16-. bes''16) |
 \tuplet 6/4 { b'16 fis'16 cis'16 dis'16 a'16 d''16-> } g''16-^ c'''16 b'16 e''16 r4 a''4-^ \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { fis1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "4ths over F♯m7"} b'16(\mf e''16 a''16 d'''16) gis'16( dis'16-. bes'16-> f'16) a'16->( d''16 g''16 f''16-^) cis''16( fis''16 b''16 e'''16) |
 dis''16( bes'16 f'16 c'16) cis''16( fis''16 b''16 e'''16) b'16 fis'16-> cis'16 dis'16 dis''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { des1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "4ths over D♭m7"} b'16-.\mf ges'16-> des'16-> ees'16-> \tuplet 6/4 { ees''16 aes''16-> des'''16 ges''16 des''16 aes'16-> } ees'16( bes'16 e''16 a''16) d'''16( g''16-> ees''16-. bes'16) |
 f'16 c'16 des''16-> aes'16 ees'16 f'16 e''16 a''16-^ \tuplet 6/4 { d'''16 c'''16 ees''16 bes'16 f'16-^ c'16 } e''4-> \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { aes1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "4ths over A♭m7"} b'16\mf ges'16 des'16 ees'16 des''16--( aes'16 ees'16 f'16-.) bes'16( f'16-> c'16 g'16-.) b'16->( e''16 a''16 g''16-.) |
 des''16 ges''16 b''16 e'''16-> ees''16( bes'16 f'16-> c'16-^) b'16( e''16 a''16 g''16) des''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { ees1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "4ths over E♭m7"} c''16\mf g'16-> d'16 a'16 bes'16 ees''16-^ aes''16 des'''16 aes'16 des''16 ges''16 e''16-> \tuplet 6/4 { ges'16( des'16 aes'16 ees'16 aes'16 des''16) } |
 ges''16( b''16 ges'16-^ des'16->) aes'16 ees'16 f'16-. bes'16 ees''16 aes''16 des'16 aes'16-> ees'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { bes1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "4ths over B♭m7"} c''16\mf f''16-> bes''16-> aes''16 des''16-- fis''16 b''16 e'''16 f''16-. bes''16 ees'''16 aes''16 aes''16( ees''16 bes'16 c''16) |
 f''16->( bes''16-> ees'''16 des'''16) ees''16->( bes'16 f'16 c'16) g''16 d''16 a'16 b'16 aes''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { f1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "4ths over Fm7"} c''16(\mf g'16-. d'16-. e'16) bes'16( f'16 c'16 d'16) c''16( f''16 bes''16-> ees'''16) d''16-.( g''16 c'''16-> bes''16) |
 bes'16->( f'16 c'16 g'16-^) \tuplet 6/4 { c''16( f''16 bes''16 ees'''16 d''16 g''16-^) } r4 c'''4\ff \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { c1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "pentatonic over Cmaj7"} fis''16\mf e''16 b'16 d''16 b''16\mf a''16 e''16-^ fis''16 d''16-> e''16 a''16-^ fis''16-> a'16( b'16 e''16 d''16) |
 \tuplet 6/4 { e'16--( fis'16-> b'16 a'16 b16-> d'16) } fis'16( e'16 a'16 fis'16) d'16( e'16-> d''16 b'16->) fis'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { g1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "pentatonic over Gmaj7"} fis''16\mf e''16 b'16 cis''16 b''16->( a''16-> e''16 fis''16) cis''16-> e''16 a''16-. fis''16 a'16( b'16 e''16 cis''16) |
 \tuplet 6/4 { e'16-> fis'16 b'16 a'16-> b16 cis'16 } fis'16 e'16 a'16 fis'16 cis'16 e'16 cis''16 b'16-> fis'4-. \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { d1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "pentatonic over Dmaj7"} b'16->\mf fis'16-- gis'16 e'16-- fis'16-> cis'16 e'16-- b16 cis'16 fis'16 e'16 gis'16 fis'16 b'16-- gis'16 cis''16 |
 b'16 e''16-- cis''16 fis''16-> e''16 gis''16 fis''16-> b''16 r4 gis''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { a1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "pentatonic over Amaj7"} b'16\mf fis'16 gis'16 dis'16 fis'16(\ff cis'16 dis'16 b16) cis'16->( fis'16 dis'16 gis'16) fis'16->( b'16 gis'16 cis''16) |
 \tuplet 6/4 { b'16 dis''16-> cis''16-> fis''16 dis''16 gis''16 } fis''16( b''16 gis''16 dis''16) fis''16\f cis''16 dis''16 b'16 cis''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { e1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "pentatonic over Emaj7"} fis'16\mf gis'16 cis''16 ais'16 \tuplet 6/4 { cis'16 dis'16 gis'16-^ fis'16 ais'16 gis'16-. } dis'16(\mp fis'16 dis''16-> cis''16) \tuplet 6/4 { gis'16 ais'16 gis''16 fis''16 cis''16 dis''16 } |
 ais'16-. cis''16-> fis''16-> dis''16 fis'16 gis'16 cis''16 ais'16 cis'16 dis'16 gis'16 fis'16-- ais'4-> \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { b1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "pentatonic over Bmaj7"} cis''16\mf dis''16 gis''16 f''16 f''16->( gis''16-> cis'''16-^ ais''16) ais''16( gis''16 dis''16-^ f''16) f''16 dis''16 ais'16 cis''16-> |
 cis''16->( ais'16 f'16-. gis'16) gis'16->( f'16 cis'16 dis'16) dis'16 f'16 ais'16 gis'16 gis'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { fis1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "pentatonic over F♯maj7"} f'16(\mf gis'16 c''16 ais'16) c'16( dis'16 gis'16 f'16-.) ais'16 gis'16 dis'16-. f'16 dis''16( c''16 gis'16-> ais'16->) |
 gis''16 f''16 c''16 dis''16 c'''16 ais''16 f''16-. gis''16 dis''16( f''16 ais''16 gis''16) ais'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { des1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "pentatonic over D♭maj7"} c''16\mf ees''16 g''16 f''16 f''16--( g''16 c'''16 bes''16-.) bes''16( g''16-- ees''16 f''16) f''16( ees''16-^ bes'16-- c''16) |
 c''16( bes'16 f'16 g'16) g'16 f'16-^ c'16 ees'16 ees'16\ff f'16 bes'16-> g'16 g'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { aes1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "pentatonic over A♭maj7"} c''16->\mf bes'16 g'16 d'16 \tuplet 6/4 { g'16 f'16 d'16-- c'16 d'16 f'16 } \tuplet 6/4 { g'16 c''16 g'16-> bes'16 c''16 f''16 } c''16--( d''16 f''16 bes''16) |
 f''16 g''16 bes''16 d'''16-> bes''16->( g''16 f''16-. c''16) f''16 d''16 c''16 g'16 c''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { ees1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "pentatonic over E♭maj7"} c''16->(\mf a'16 f'16 g'16) g'16 f'16 c'16-> d'16-. d'16 f'16 a'16 g'16 g'16-^ a'16 d''16 c''16 |
 c''16-^( d''16-- g''16 f''16) f''16 g''16-- c'''16 a''16 \tuplet 6/4 { a''16 g''16 d''16-^ f''16 f''16-> d''16-- } a'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { bes1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "pentatonic over B♭maj7"} e'16-.\mf g'16 c''16 a'16 \tuplet 6/4 { c'16 d'16-- g'16-. e'16-> a'16 g'16 } d'16( e'16 d''16-. c''16) g'16-> a'16 g''16 e''16-> |
 \tuplet 6/4 { c''16( d''16 c'''16-. a''16-- e''16-- g''16-^) } d''16->( e''16 a''16 g''16) a'16 c''16 e''16 d''16 e'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { f1*32/16:maj7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "pentatonic over Fmaj7"} b'16->(\mf a'16 g'16-> d'16) g'16-> e'16-^ d'16-> b16-> d'16->\ff e'16-> g'16-> b'16 g'16-.( a'16 b'16 e''16) |
 b'16( d''16-> e''16-. a''16) e''16 g''16-^ a''16 d'''16 a''16(\mp g''16-> e''16 b'16-.) e''4-. \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { c1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "side-slip over Cm7"} des''16->(\mf aes'16 ees'16 f'16->) ees''16->( gis''16 des'''16 ges''16) ges''16( des''16 aes'16 ees'16--) d'16-> g'16 c''16 bes'16-. |
 ees'16\f gis'16 des''16 b'16 d'16( g'16 c''16 f''16) r4 ees'4-- \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { g1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "side-slip over Gm7"} des''16\mf aes'16 dis'16 bes'16 b'16( e''16 a''16 g''16->) des''16 aes'16-. dis'16-. f'16 dis''16-^ aes''16 g''16 d''16 |
 a'16 e'16 f''16 bes''16 ees'''16( aes''16-- g''16 d''16--) a'16( b'16 a''16 d'''16) g''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { d1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "side-slip over Dm7"} dis''16(\mf f''16 bes''16 aes''16->) aes''16( f''16 c''16 ees''16) ees''16 c''16 gis'16 bes'16 bes'16-> aes'16-. g'16 e'16 |
 b16 d'16 d'16 e'16-- a'16( g'16 g'16 a'16) d''16-^( b'16-> b'16 d''16-.) g''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { a1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "side-slip over Am7"} des''16-.(\mf f'16 aes'16 g'16-.) dis'16( ais'16-- cis''16 gis''16) f'''16( g''16 bes''16 ees''16-.) \tuplet 6/4 { des''16 f'16 aes'16 g'16 e'16 c'16-. } |
 a'16 d'16-- fis'16 g'16-- c''16-^ e''16 fis''16 a''16 d'''16( e'''16-. c'''16 g''16) fis''4-> \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { e1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "side-slip over Em7"} c''16--\mf dis''16 gis''16 f'''16 d'''16 ais''16 c'''16 ees'''16-> gis''16--( d'''16 f'''16 bes''16-.) gis''16( ees'''16 d'''16 g''16) |
 b''16( e'''16-> a''16 cis'''16) d'''16->\f b''16-^ g''16 a''16 cis'''16-- e'''16 d'''16-. b''16 g''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { b1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "side-slip over Bm7"} d''16(\mf g''16-- c'''16 f'''16) ees''16-> bes'16 f'16-> g'16-. f''16 ais''16 ees'''16-> gis''16-. d''16->( a'16 e'16-^ d'16) |
 \tuplet 6/4 { g'16 c''16-^ bes'16 e'16 a'16 d''16 } g''16( cis'16 gis'16 dis'16) f'16 d'16 g'16-- c''16 ais'4\f \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { fis1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "side-slip over F♯m7"} d''16\mf a'16-> e'16 b'16 c''16 f''16 ais''16 dis'''16-^ \tuplet 6/4 { ais'16-> dis''16 gis''16 cis'''16 c''16-. f''16 } bes''16-> a''16 d'''16 g''16 |
 f'''16 fis''16 cis''16 gis'16-> dis'16( gis''16-- cis'''16-> fis''16) e'''16 b''16-> e'''16 a''16 d'''4-. \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { des1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "side-slip over D♭m7"} d''16(\mf a'16-> e'16 b'16--) c''16 f''16-> bes''16 aes''16 e''16( a''16 d'''16 c'''16->) f''16 bes''16 aes''16 des'''16-> |
 ges''16-. e'''16 bes''16 ees'''16 aes''16-^( des'''16-> b''16 ges''16->) des''16--( ees''16 ees'''16-^ bes''16) f''4-> \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { aes1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "side-slip over A♭m7"} \tuplet 6/4 { d''16->( ges''16 e''16 a''16-. ges''16 b''16->) } a''16 d'''16 b''16 ges''16 a''16( e''16 ges''16 d''16--) e''16 ees''16-> f''16 bes''16-. |
 aes''16( aes''16-> f''16 des''16) ees''16-. ees''16-> des''16 aes'16 bes'16-> bes'16 aes'16 ees'16 f'4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { ees1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "side-slip over E♭m7"} des''16->(\mf e''16 a''16-- ges''16) \tuplet 6/4 { ges''16( a''16 des'''16-> b''16-> b''16-> a''16) } e''16 ges''16 ges''16-> e''16 b'16-. bes'16 f'16 aes'16 |
 ees'16 f'16 c'16 ees'16 c'16( c'16-. f'16 ees'16-.) aes'16 f'16-. bes'16-> aes'16-. c''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { bes1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "side-slip over B♭m7"} d''16(\mf a'16 e'16 fis'16) b'16-.( e''16-- a''16 g''16) aes'16-.( des''16 ges''16 e''16) \tuplet 6/4 { e'16-. b'16 ges'16 f'16-. bes'16-> ees''16 } |
 des''16 ees'16 aes'16 des''16 b'16( g'16-. d'16 a'16) b16-^ f'16-^ bes'16-> ees''16-> aes''4-. \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { f1*32/16:m7 }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "side-slip over Fm7"} e''16\mf des''16 a'16 b'16 \tuplet 6/4 { ees'16 ges'16-. e'16 cis'16-> a'16 ees'16 } b'16-. fis'16 a'16-^ cis'16 e'16-> b'16 c''16 aes'16 |
 \tuplet 6/4 { ees'16( bes'16 f'16 d'16 ees'16 aes'16) } c''16( bes''16-> f''16 d''16--) ees''16 aes''16 c'''16-. bes''16 f'''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { c1*32/16:7.11+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "wide over C7♯11"} d'''16->\mf bes'16 bes''16-. bes'16 c'''16-^( e''16 c'''16 d''16) \tuplet 6/4 { c'''16-> a'16-- a''16 bes'16 a''16 bes'16 } c'''16( c''16 d'''16 d''16->) |
 bes''16( d''16 a''16 d''16) a''16 a'16 a''16 bes'16 a''16-> g'16-> a''16 c''16-. a''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { g1*32/16:7.11+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "wide over G7♯11"} a''16\mf f'16 e''16 g'16 g''16( g'16 f''16 f'16) \tuplet 6/4 { g''16-. g'16 b''16 b'16 d'''16 e''16 } b''16 d''16 d'''16 d''16-> |
 \tuplet 6/4 { e'''16 a''16-> e'''16 e''16 e'''16 f''16 } f'''16\f f''16 f'''16 d''16-> f'''16( d''16 d'''16 b'16) g''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { d1*32/16:7.11+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "wide over D7♯11"} a''16\mf a'16 c'''16-> b'16 a''16-> a'16 b''16 e''16 c'''16 e''16-> b''16-. c''16 d'''16--( e''16-> c'''16 b'16) |
 c'''16( d''16-^ b''16-> b'16-^) b''16-> e''16 c'''16-> b'16 b''16--( c''16 d'''16 e''16) b''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { a1*32/16:7.11+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "wide over A7♯11"} a''16-^\mf b'16-. fis''16-. a'16 g''16 e'16 g''16-> a'16-> cis'''16-> cis''16 a''16 a'16 g''16->( b'16 fis''16 a'16) |
 e''16( a'16 e''16 a'16) cis'''16-.( cis''16-> b''16-> g'16) a''16 b'16 g''16 g'16-- a''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { e1*32/16:7.11+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "wide over E7♯11"} e'''16\mf fis''16 cis'''16-^ e''16 cis'''16( fis''16-> d'''16 b'16) d'''16( d''16 e'''16-> d''16) b''16 cis''16-- d'''16 cis''16 |
 e'''16-- gis''16 e'''16 gis''16-> e'''16 e''16-> cis'''16-> cis''16 d'''16( fis''16 e'''16-^ d''16) e'''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { b1*32/16:7.11+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "wide over B7♯11"} b16\mf b'16 b16 cis''16 b16-> gis'16 b16-> gis'16-> cis'16->( dis''16 dis'16 dis''16->) b16( a'16 b16-. fis'16) |
 b16 cis''16 fis'16 fis''16-- \tuplet 6/4 { fis'16( fis''16 b'16-^ a''16 b'16-. gis''16) } r4 cis''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { fis1*32/16:7.11+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "wide over F♯7♯11"} cis'16\mf ais'16-^ cis'16-> gis'16 cis'16 dis''16-. fis'16 cis''16 dis'16 cis''16 e'16 gis''16 cis''16(\f cis'''16 fis''16-> cis'''16) |
 cis''16 cis'''16 ais'16 ais''16-. \tuplet 6/4 { cis''16 cis'''16 cis''16 dis'''16 gis''16-. dis'''16 } dis''16-^ dis'''16 e''16-> e'''16 gis''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { des1*32/16:7.11+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "wide over D♭7♯11"} f'16-^\mf des''16 b16 aes'16-> b16 ees''16 f'16 des''16 \tuplet 6/4 { f'16 ees''16 des'16-> b'16 des'16-> des''16 } ees'16-> bes'16-> b16 aes'16-> |
 des'16( aes'16 b16 des''16->) \tuplet 6/4 { ees'16 ees''16 f'16 ees''16 f'16 f''16 } bes'16-.( des'''16-> bes'16 bes''16) des''4-> \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { aes1*32/16:7.11+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "wide over A♭7♯11"} f'16--\mf ges''16 ees'16 ees''16-. c'16 ees''16-> aes'16 ees''16 ges'16( ges''16 ees'16 bes'16) ees'16( ees''16 ges'16 ges''16) |
 ges'16 aes''16 bes'16 c'''16-- ees''16 f'''16-- f''16 f'''16 ees''16-- f'''16-> ges''16-^ ees'''16 c''4 \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { ees1*32/16:7.11+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "wide over E♭7♯11"} des'''16\mf des''16 des'''16-^ f''16 f'''16 bes''16 f'''16 f''16 ees'''16-> ees''16 bes''16 g'16 bes''16-> bes'16 c'''16 f''16 |
 f'''16 ees''16-> ees'''16-- c''16-. c'''16( c''16-> g''16-. f'16) ees''16 des'16 c''16 des'16 c''4-> \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { bes1*32/16:7.11+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "wide over B♭7♯11"} d'16(\mf f''16-. bes'16 g''16) aes'16( f''16 g'16 f''16) bes'16 d'''16 g''16 d'''16 bes'16 d'''16 f''16 c'''16 |
 aes'16( g''16 g'16 d''16) d'16( d''16 f'16-- g''16) aes'16( g''16 aes'16-. aes''16) c''4-> \bar "||" } >> \layout { indent = 0 } }
\score { << \new ChordNames \chordmode { f1*32/16:7.11+ }
\new Staff { \time 4/4 \accidentalStyle modern \mark \markup{\bold "wide over F7♯11"} ees'16\mf d''16-> g'16 f''16 g'16->( ees''16-> f'16 c''16) d'16( ees''16 f'16 f''16) g'16( f''16 ees'16 f''16) |
 d'16( a'16 c'16 d''16) g'16( f''16 a'16 f''16) f'16 d''16-. ees'16 f''16-. d'4-^ \bar "||" } >> \layout { indent = 0 } } }