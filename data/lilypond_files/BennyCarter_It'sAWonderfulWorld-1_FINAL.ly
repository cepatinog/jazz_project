\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "It's a Wonderful World"
  composer = "Benny Carter"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key c \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | s2. c4:maj 
      | c1:maj | e2:min7 a2:7 | d2:min7 g2:7 | c1:maj | s1 | e2:min7 a2:7 | d1:min7 | g1:7 
      | c1:7 | s1 | f1:7 | bes1:7 | c1:maj | e2:min7 a2:7 | d2:min7 g2:7 | c1:maj 
      | s1 | e2:min7 a2:7 | d2:min7 g2:7 | c1:maj | s1 | e2:min7 a2:7 | d1:min7 | g1:7 
      | c1:7 | s1 | f1:7 | bes1:7 | c1:maj | e2:min7 a2:7 | d2:min7 g2:7 | c1:maj 
      | s1 | e2:min7 a2:7 | d2:min7 g2:7 | c1:maj | s1 | e2:min7 a2:7 | d1:min7 | g1:7 
      | c1:7 | s1 | f1:7 | bes1:7 | c1:maj | e2:min7 a2:7 | d2:min7 g2:7 | c1:maj 
      | s1|
      }
      }

    \new Staff
    <<
    \transpose c' c'

    {
      \global
  		%\override Score.MetronomeMark #'transparent = ##t
  		%\override Score.MetronomeMark #'stencil = ##f

          \set Score.markFormatter = #format-mark-box-numbers

      \tempo 4 = 124
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r2. b'16 d''16 c''16 g'16 
      \bar "||" \mark \default e'8 r8 r4 \tuplet 6/4 {r8 b8 d'16 des'16} \tuplet 3/2 {c'8 e'8 g'8} 
      | \tuplet 6/4 {a'16 b'16 c''8 a'16 ais'16~} \tuplet 6/4 {ais'16 gis'16 ais'16 gis'16 fis'16 d'16} c'16 b16 ais16 gis16 c'8 aes8 
      | g8 ges8 c'8 a8 g8. b16~ b8 g8 
      | e8. e16 dis8 e8 a4 r4 
      \bar "||" r8 g16 a16 b16 d'16 c'16 e'16 g'16 a'16 b'16 d''16 des''16 c''16 a'16 bes'16 
      | a'4 r4 \tuplet 5/4 {r16 ais'16 c''16 ais'16 g'16} \tuplet 3/2 {gis'8 a'8 e'8} 
      | \tuplet 3/2 {g'8 ges'8 e'8} \tuplet 6/4 {c'8 a8. d'16~} d'8 r8 r8 des'16 e'16 
      | g'8 r8 r4 \tuplet 6/4 {r4 r16 d'16} \tuplet 3/2 {dis'8 e'8 g'8} 
      \bar "||" \tuplet 7/8 {a'16. c''16 d''32 c''32} a'8 bes'8 d''8 a'8 g'8 d'8 
      | f'8 e'4 es'8 d'4.. a16 
      | c'8 f'16 es'16 \tuplet 3/2 {g'8 e'8 f'8} a'8 c''8 d''8 c''8~ 
      | c''16 d''16 es''16 c''16 d''8. g'16 aes'16 ais'16 b'16 c''16 aes'8 f'16 e'16 
      \bar "||" g'8 e'8 \tuplet 3/2 {g4 d'8} c'8 r8 r4 
      | \tuplet 6/4 {r16 gis'16 ais'16 gis'8.~} gis'16 d'8 g'16~ g'8 e'8 r4 
      | \tuplet 3/2 {b'8 a'4} a8. f'16~ f'8 e'4 g8 
      | \tuplet 3/2 {d'8 c'4~} \tuplet 6/4 {c'4~ c'16 dis'16} \tuplet 3/2 {e'8 g'8 a'8} cis''16 d''8 c''16~ 
      \bar "||" \mark \default \tuplet 3/2 {c''8 g'8 e'8} c'16 d'16 c'16 a16 \tuplet 3/2 {d'8 c'4~} c'8 c'32 d'32 c'32 b32 
      | bes16 a16 gis8 \tuplet 3/2 {gis'8 f'8 d'8~} d'8 cis'8 a'8 g'8~ 
      | g'16 ges'32~ ges'8 d''32~ d''8 c''4 b'8 \tuplet 3/2 {g''4 f''8~} 
      | f''8 e''8 g'8 r8 r4 \tuplet 6/4 {r8 e''8. g''16~} 
      \bar "||" g''8 c'''16 g''16~ \tuplet 3/2 {g''8 dis''8 e''8} \tuplet 6/4 {c''8 g'8 e'16 des'16} c'16 bes16 a8 
      | c'16 g16 ges16 f16 \tuplet 3/2 {e8 es8 d8~} d32 ais16. gis16. a32~ a16. a'8 aes'32~ 
      | \tuplet 3/2 {aes'8 g'8 ges'8} \tuplet 3/2 {b'8 bes'8 a'8} e'8 c'8~ c'8. a16 
      | d'8 r8 r4 \tuplet 3/2 {c'8\glissando  e'8 g'8~} g'16 a'8 g'16~ 
      \bar "||" g'8 c''4 d''16 c''16~ c''8 a''8 d''16\glissando  es''8 c''16 
      | r4 r8 ges'8~ \tuplet 5/4 {ges'16 bes'16 c''16 b'16 a'16} c''16 bes'16 g'16 e'16 
      | \tuplet 6/4 {c'16 b16 bes16 aes8 c'16~} \tuplet 6/4 {c'16 g'8 e'16 f'16 a'16} c''16 e''16 g''8 d''8 f''16 e''16 
      | c''8 aes'8 d''8 c''8 aes'16. d'16 c'32 b32 bes32 a16 aes16 g16 e'16 
      \bar "||" g8 e8 r4 r8 b16 c'16~ \tuplet 6/4 {c'16 e'8 g'8 a'16~} 
      | \tuplet 3/2 {a'8 gis'8\glissando  b'8} \tuplet 6/4 {ais'8\glissando  b'8 ais'16\glissando  b'16~} b'16 ais'8 e'16 a'8 b'8 
      | c''8 a'8~ a'16 es'16 d'16 c'16 d'4~ d'16 a8 c'16~ 
      | c'8 a'8 dis'4\bendAfter #-4  a8 c'8 a'8. dis'16~ 
      \bar "||" \mark \default dis'16\bendAfter #-4  a8 c'16~ c'8 r8 r8 a'8 dis'4 
      | a8 c'8 r4 r8 a'4 dis'8 
      | \tuplet 3/2 {a4 c'8~} c'16 b16 a8 a'8 d'4\bendAfter #-4  a8 
      | c'8 r8 \tuplet 7/8 {r16. b32 c'32 d'32 g'32} b'8 d''8 \tuplet 3/2 {b'8 g'8 e'8} 
      \bar "||" \tuplet 6/4 {c'16 ais8 g16 d16 a16} \tuplet 3/2 {e'8 c'8 g8} e'8 r8 r8. f16~ 
      | f16 ais16. d'16 f'32~ \tuplet 3/2 {f'8 ais'8 d''8} g''8 gis''8 \tuplet 3/2 {gis''8 a''8 a'8} 
      | b'8 c''8 \tuplet 5/4 {aes'8 b'8 a'16~} a'16 e'16 ges'8 e'8 c'8 
      | d'8 r8 r4 \tuplet 6/4 {r8 b8 d'16 f'16~} f'16 e'16 g'16 b'16 
      \bar "||" \tuplet 6/4 {d''16 c''16 d''16 c''16 a'8} bes'8 d'8 ges'8 a'16 d'16~ \tuplet 5/4 {d'8 ges16 a16 ges16} 
      | \tuplet 6/4 {a16 d'16 bes16 d'16 f'8} \tuplet 6/4 {ges'16 bes'16 ges'16 bes'16 d''16 bes'16} d''16 ges''8.~ \tuplet 3/2 {ges''8 fis''8 g''8} 
      | e''8 c''8 \tuplet 5/4 {aes'8\glissando  ais'16 b'16 c''16} a'16 e'16 c'16 bes16 \tuplet 6/4 {aes16 g16 aes16 b16 es'16 g'16~} 
      | \tuplet 3/2 {g'8 f'8 d'8~} d'8 aes8 r4 \tuplet 6/4 {r8. dis'16 e'16 b16} 
      \bar "||" d'8 c'8 b'8 gis'16 a'16~ \tuplet 3/2 {a'8 e'8 g'8} e'8 c'16 b16~ 
      | b8 bes8 a8 gis8~ gis16 dis'16\glissando  e'16 a16 r4 
      | r8 d'16\glissando  e'16~ e'8 a8 \tuplet 3/2 {cis'8\glissando  dis'8 a8~} a8 c'16\glissando  d'16 
      | c'4~ \tuplet 6/4 {c'8 c'16 d'16 c'16 b16} \tuplet 6/4 {c'8 a'8 f'16 d'16~} d'8 b8~ 
      \bar "||" \mark \default \tuplet 3/2 {b8 e'8 c'8~} c'4 r2\bar  ".."
    }
    >>
>>    
}
