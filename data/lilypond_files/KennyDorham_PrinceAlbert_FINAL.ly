\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Prince Albert"
  composer = "Kenny Dorham"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble"
    \key f \minor

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | r1 | s1 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | d2:min7 g2:7 | c1:maj | s1 
      | c1:min7 | f1:min7 | bes1:7 | es1:maj | aes1:maj | a2:min5-7 d2:7 | g1:maj | s1 
      | a1:min5-7 | d1:7 | g1:maj | s1 | fis1:min5-7 | b1:7 | e1:maj | c1:7 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | des1:min7 | c1:min7 | b1:dim 
      | bes1:min7 | es1:7 | aes1:maj | g2:min5-7 c2:7 | f1:min7 | bes1:min7 | es1:7 | aes1:maj 
      | des1:maj | d2:min7 g2:7 | c1:maj | s1 | c1:min7 | f1:min7 | bes1:7 | es1:maj 
      | aes1:maj | a2:min5-7 d2:7 | g1:maj | s1 | a1:min5-7 | d1:7 | g1:maj | s1 
      | fis1:min5-7 | b1:7 | e1:maj | c1:7 | f1:min7 | bes1:min7 | es1:7 | aes1:maj 
      | des1:maj | des1:min7 | c1:min7 | b1:dim | bes1:min7 | es1:7 | aes1:maj | g2:min5-7 c2:7 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | d2:min7 g2:7 | c1:maj | s1 
      | c1:min7 | f2:min7 r2 | bes1:7 | es1:maj | aes1:maj | a2:min5-7 d2:7 | g1:maj | s1 
      | a1:min5-7 | d1:7 | g1:maj | s1 | fis1:min5-7 | b1:7 | e1:maj | c1:7 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | des1:min7 | c1:min7 | b1:dim 
      | bes1:min7 | es1:7 | aes1:maj | g2:min5-7 c2:7 | f1:min7|
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

      \tempo 4 = 153
      \set Score.currentBarNumber = #-1

      | \tuplet 3/2 {e'8 es'8 f'8} \tuplet 6/4 {g'8. aes'8 bes'16~} \tuplet 6/4 {bes'8. c''8 des''16~} \tuplet 6/4 {des''8. b'8 c''16~} 
      | c''4 bes'8 aes'16 g'16~ g'8 f'8 e'4 
      \bar "||" \mark \default \tuplet 3/2 {g'4 es'8} \tuplet 3/2 {g'4 f'8~} f'8 c'8 es'16 f'16 es'16 c'16~ 
      | c'16 des'8 es'16 \tuplet 3/2 {f'8 aes'8 c''8~} c''16 es''8 d''16~ d''16 des''8 c''16~ 
      | c''16 bes'8 a'16~ \tuplet 6/4 {a'16 aes'16 a'16 aes'16 g'8} ges'8 f'8 e'8 c'8 
      | es'8 c'4 r8 r2 
      | r8 aes''8~ \tuplet 3/2 {aes''8 f''8 es''8} des''8 c''8~ c''16 bes'8 aes'16\bendAfter #+4  
      | g'16 aes'8.~ \tuplet 3/2 {aes'8 g'8 f'8} bes'8 r8 r4 
      | \tuplet 6/4 {r16 g'16 g'8 g'16 g'16} e'8 g'8~ g'16 a'8 g'16~ g'8 e'8 
      | \tuplet 3/2 {e'4 d'8} r2. 
      \bar "||" r4 g'16 a'16 b'16 c''16 \tuplet 5/4 {d''8 b'16 c''16 d''16} \tuplet 5/4 {es''8 b'16 des''16 c''16} 
      | \tuplet 3/2 {c''8 ges'8 f'8} \tuplet 3/2 {es'8 g'16 r8.} r4 r16 c''16 des''16 d''16 
      | f''16 d''16 des''16 c''16 es''16 b'16 bes'16 ges'16 d''16 bes'16 a'16 aes'16 \tuplet 6/4 {c''16 aes'8 g'16 f'16 bes'16~} 
      | bes'16 a'16 aes'16 g'16 f'16 es'16 ges'16 f'16 aes'16 b'16 bes'16 aes'16 \tuplet 6/4 {g'8 f'16 e'8 es'16~} 
      | es'16 f'16 ges'16 aes'16~ aes'16 bes'16 g'16 bes'16 \tuplet 6/4 {b'8 c''16 d''16 f''16 e''16~} e''16 es''16 c''8~ 
      | \tuplet 6/4 {c''8. f''8 e''16~} e''16 es''8 f''16~ f''8 d''4 c''8 
      | b'8 r8 r8. d'16~ d'8 e'4. 
      | r1 
      \bar "||" d''8. e''16 d''4 \tuplet 3/2 {d'8 d'8 d'8~} d'4~ 
      | d'8 es'8 \tuplet 3/2 {bes'8 c''4~} \tuplet 6/4 {c''16 b'4 b'16~} b'8. a'16 
      | b'4. g'8 f'8 fis'8 des'8 e'8~ 
      | \tuplet 6/4 {e'4~ e'16 e'16~} \tuplet 6/4 {e'4 aes'16 g'16} fis'8 aes'8~ aes'16 a'8 b'16~ 
      | b'16 des''8 e''16~ e''16 es''8 des''16~ \tuplet 3/2 {des''8 b'8 bes'8~} bes'16 a'8 a'16 
      | aes'8 fis'8 \tuplet 3/2 {e'4 es'8~} es'4 b'8 a'8 
      | aes'4~ aes'16 es'16 c'8 des'4 r4 
      | r1 
      \bar "||" r4 \tuplet 3/2 {g''4 f''8~} f''8 c''8 es''8 c''8 
      | des''8 es''8 f''8 aes''8 g''8 f''8 es''8 d''8 
      | des''8 c''8 b'8 g'8 ges'8 ges'8 e'4 
      | es'8. c'16~ c'4 r4 r8 bes'8 
      | aes'8 a'8 aes'16 f'8 bes'16~ bes'16 aes'8 bes'16 \tuplet 3/2 {aes'8 f'8 bes'8} 
      | aes'8 bes'16 aes'16 \tuplet 3/2 {e'4 b'8~} b'8 r8 r8. bes'16~ 
      | \tuplet 3/2 {bes'8 g'8 aes'8} g'16 es'8 bes'16~ bes'16 g'8 g'16~ g'16 es'8 des''16~ 
      | des''4~ des''16 b'8 fis'16~ fis'8 r8 r8. bes'16~ 
      | bes'16 aes'16 bes'16 g'16 f'8 bes'8~ bes'16 aes'16 bes'16 aes'16 f'8 aes'8 
      | b'8 c''8~ c''16 des''8 d''16~ d''16 es''8 b'16 \tuplet 3/2 {c''4 bes'8~} 
      | bes'16 aes'8 es'16 c'4 des'8. es'16 r4 
      | r4 \tuplet 6/4 {des''16 c''8 bes'16 aes'16 g'16~} g'16 f'16 e'16 g'16 \tuplet 6/4 {bes'16 des''8 c''16 bes'16 aes'16~} 
      \bar "||" \mark \default \tuplet 6/4 {aes'8 f'8 aes'16 g'16} f'16 e'8 ges'16 \tuplet 6/4 {f'16 e'16 f'16 ges'8 aes'16} \tuplet 3/2 {bes'8 c''8 f''8} 
      | \tuplet 5/4 {d''16 b'16 bes'16 aes'16 c''16} r2 \tuplet 6/4 {c''8 c''16 a'16 bes'16 c''16} 
      | des''16 es''16 f''16 aes''16 \tuplet 6/4 {g''16 f''8 es''16 d''16 des''16} \tuplet 6/4 {d''16 des''16 bes'16 aes'8.} \tuplet 3/2 {d''8 des''8 f''8} 
      | es''16 c''16 des''16 b'16 c''16 bes'16 a'16 g'16 aes'4 \tuplet 6/4 {bes'16 a'16 bes'16 aes'16 g'8} 
      | ges'16 aes'16 bes'16 a'16 g''16 f''16 r8 r8 c''8 es''8 des''8 
      | c''8 aes'8 f'4 \tuplet 6/4 {bes'16 aes'16 g'8. f'16~} f'16 d'16 es'8 
      | e'8 g'8 a'8 b'8 d''8 b'8 c''8 d''8~ 
      | d''16 f''16 es''16 e''16 a''8 aes''8 g''8 ges''8 f''8 e''8 
      \bar "||" es''8 g'8 c''8 es''8 d''8 c''8 b'8 es'8 
      | bes'4 \tuplet 3/2 {aes'4 f'8} r4 r8 g''16 aes''16~ 
      | \tuplet 3/2 {aes''8 g''8 f''8~} f''16 e''8 d''16~ d''8 es''8~ es''16 des''16 b'16 bes'16 
      | aes'16 g'8 f'16 r2. 
      | d''8 es''4 c''8~ c''16 bes'8 aes'16 g'16 aes'8. 
      | g'4 es'4 f'8 es'8 d'8 c'8 
      | b8 d'8 e'8 fis'8~ \tuplet 5/4 {fis'16 a'16 bes'16 a'16 fis'16~} fis'16 g'8 a'16~ 
      | a'16 bes'8 b'16~ \tuplet 3/2 {b'8 e''8 es''8~} es''16 d''8 b'16~ \tuplet 6/4 {b'16 c''16 des''16 c''16 b'8} 
      \bar "||" c''8 d''8 e''8 g''4 b''8 \tuplet 3/2 {a''4 g''8} 
      | fis''8 r8 r8 bes''8~ bes''16 f''8 e''16~ \tuplet 3/2 {e''8 es''8 f''8} 
      | d''8 b'8 c''8 bes'8 \tuplet 3/2 {b'4 fis'8} d'4 
      | e'4 r2. 
      | r2 b''2 
      | bes''8 aes''8~ aes''16 fis''8 e''16~ e''16 es''8 des''16 b'8 a'8 
      | aes'8 es'8~ es'16 des'8 es'16~ es'8 fis'8 e'4 
      | r1 
      \bar "||" r8. fis''16 g''4~ g''16 f''8 c''16~ c''16 es''8 c''16 
      | des''8 es''8 f''8 aes''8~ aes''16 g''8 f''16~ f''16 es''8 d''16~ 
      | d''16 des''8 c''16~ \tuplet 3/2 {c''8 b'8 g'8~} g'16 ges'8 ges'16~ ges'16 e'8 c'16 
      | es'8 c'4 r8 r4 r8 a'8 
      | bes'4 aes'8 f'8 es'8 f'8 aes'8 bes'8 
      | b'8 c''16 b'16 aes'8 e'8 des'8 e'8 aes'8 b'8 
      | bes'8 g'8 aes'8 bes'8~ bes'16 c''16 b'16 c''16 des''8 d''8~ 
      | d''16 f''16 es''8~ es''8. des''16~ des''8 b'8 des''4~ 
      | des''16 bes'8 f'16~ f'16 aes'16 bes'16 aes'16 \tuplet 3/2 {g'4 f'8~} f'16 es'8 c'16 
      | \tuplet 3/2 {des'4 es'8} \tuplet 3/2 {f'8 aes'8 c''8} b'8 g'8 ges'8 e'8~ 
      | e'16 es'16 e'16 es'16 c'8. es'16 \tuplet 3/2 {aes'4 es'8~} es'8 r8 
      | r1 
      \bar "||" \mark \default r4 g'4 g'4.. f'16~ 
      | f'8 es'8 es'4 \tuplet 6/4 {des'8 es'8. c''16~} \tuplet 6/4 {c''4 des''16 bes'16~} 
      | bes'8 b'8 \tuplet 3/2 {g'4 ges'8~} ges'8 e'8 \tuplet 3/2 {es'4 des'8} 
      | c'4 r2. 
      | r4 aes''8 f''8 es''8 des''8 c''8 bes'8 
      | aes'8 bes'8~ \tuplet 6/4 {bes'16 c''8. d''16 c''16} b'8 aes'8~ aes'16 g'8 f'16 
      | \tuplet 3/2 {e'4 g'8} a'8 b'8 d''8 b'8~ \tuplet 5/4 {b'16 c''16 des''16 c''16 b'16~} 
      | b'16 c''8 b'16~ b'16 a'8 aes'16 \tuplet 3/2 {g'4 f'8} e'8 r8 
      \bar "||" r8 es'16 g'16~ g'16 es'8 b16 c'8 d'8 \tuplet 3/2 {es'8 f'8 g'8} 
      | bes'8 r8 r4 aes'8 r8 r8. g'16 
      | r2 ges''8 d''8 des''8 b'8 
      | bes'8 aes'8 g'8 f'8 ges'4 e'8 d'8 
      | es'8 e'8 \tuplet 3/2 {es'4 f'8} aes'8 bes'8 c''8 es''8 
      | d''4~ d''16 c''16 des''16 c''16 b'8 a'8~ \tuplet 6/4 {a'8 aes'16 fis'16 e'16 es'16~} 
      | \tuplet 6/4 {es'8 d'8. d'16~} d'4 r2 
      | r1 
      \bar "||" r8. des'16~ des'16 d'16 g'16 b'16~ b'8 d''8 b'4 
      | des'8 g'8 b'8 d''8 b'8 r8 r4 
      | r2 \tuplet 6/4 {r16 c''8. des''16 c''16} b'4 
      | d''8 fis'8~ fis'8. b'16~ b'16 c''8 d''16~ d''16 c''8 e'16 
      | b'4 c''8 r8 r2 
      | a'8 aes'8 fis'8 e'8~ e'16 es'8 fis'16~ fis'16 b'8 a'16~ 
      | a'16 aes'8 b16~ \tuplet 6/4 {b16 c'4 des'16~} des'4 r4 
      | r1 
      \bar "||" r4 \tuplet 3/2 {e''8 f''4} \tuplet 3/2 {f''4 c''8~} c''8 bes'8~ 
      | bes'8 es''8~ es''16 es''8 es''16~ es''8 des''8 \tuplet 3/2 {aes'4 f'8} 
      | e'8. bes'16 c''4~ c''16 bes'8 g'16~ g'8 ges'16 e'16~ 
      | e'8 es'8 es'8 es'8 r4 r8. aes'16 
      | bes'4 aes'8 f'8~ f'16 es'8 c'16~ c'16 des'8 es'16~ 
      | es'16 e'8 fis'16~ fis'16 aes'8 b'16~ b'16 bes'8 aes'16~ \tuplet 3/2 {aes'8 fis'8 e'8} 
      | es'8 f'8 es'16 c'8 es'16~ es'16 g'8 aes'16~ aes'16 bes'8 c''16 
      | des''4 b'8 r8 r4 \tuplet 3/2 {r8 c''8 a'8} 
      | bes'8 f'8 r4 a'8 c''8 bes'8 a'8 
      | aes'8 bes'16 aes'16 g'8 f'8 ges'8 e'8 es'8 des'8 
      | \tuplet 3/2 {c'4 es'8} g'8 aes'4 r8 r4 
      | r8 c''8 \tuplet 3/2 {a'8 f'8 des'8~} \tuplet 6/4 {des'16 c'4 bes16~} bes4~ 
      \bar "||" \mark \default bes8 g8~ g2 r4\bar  ".."
    }
    >>
>>    
}
