\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blues by Five"
  composer = "Miles Davis"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble"
    \key bes \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }

      | bes1:7 | es1:7 | bes1:7 | f2:min7 bes2:7 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | f2:min7 bes2:7 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | f2:min7 bes2:7 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | f2:min7 bes2:7 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | f2:min7 bes2:7 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | f2:min7 bes2:7 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | f2:min7 bes2:7 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | f2:min7 bes2:7 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7|
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

      \tempo 4 = 178
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r8 bes'8 bes'4 bes'8 r8 r4 
      | r4 r8. cis''16~ cis''16 d''8 cis''16 d''4 
      | bes'4 bes'4 r2 
      | r1 
      | \tuplet 6/4 {r16 g'4 f'16~} f'16 c''8 bes'16~ bes'4 c''4~ 
      | c''8 g'8 bes'8 c''8 bes'4. g'8~ 
      | g'8 f'8 f'4 r2 
      | r8. cis''16~ cis''16 d''8 cis''16 d''4 es''4 
      | c''4 f'4 r2 
      | r4 c''4 c''8. cis''16 d''4 
      | bes'4 f'4 bes4 r4 
      | r2. f'16 bes'8. 
      \bar "||" \mark \default des''4 r2. 
      | r8. f'16 \tuplet 3/2 {bes'4 des''8~} des''8. des''16~ des''4 
      | cis''4\bendAfter #+4  d''8 c''8 c''4. r8 
      | r1 
      | r16 es'8 fis'16 g'4 c''8 r8 r4 
      | \tuplet 6/4 {r4 f'16 g'16~} g'16 bes'8 c''16~ c''8 des''8 a'16 ges'8. 
      | \tuplet 3/2 {e'8 f'4~} \tuplet 6/4 {f'4~ f'16 bes'16~} bes'8 g'8 g'8 r8 
      | r2 r8 a'8 bes'8 a'8 
      | bes'4 g'4 es'4 es'4 
      | r4 r8. cis''16~ cis''16 d''8 cis''16~ \tuplet 5/4 {cis''16 d''8. bes'16~} 
      | bes'16 ges'16 aes'8 f'4 r2 
      | r1 
      \bar "||" \mark \default r4 aes'16 bes'8 bes'16 \tuplet 3/2 {c''4 c''8~} c''16 bes'8 bes'16 
      | aes'4 f'16 aes'8. aes'4 f'16 aes'8 bes'16~ 
      | bes'4 bes'4 c''4 r4 
      | r1 
      | r4 bes'8. bes'16~ bes'16 c''8 c''16 bes'8. bes'16 
      | aes'4 f'16 aes'8 aes'16~ aes'4.. f'16 
      | \tuplet 6/4 {gis'4~ gis'16 a'16~} a'8 bes'8 f'4. r8 
      | r1 
      | r4 \tuplet 3/2 {g'8 bes'8 d''8~} d''8 g''8 f''4~ 
      | f''16 des''16\bendAfter #+4  es''8~ es''16 d''8 c''16 \tuplet 3/2 {bes'4 f'8~} \tuplet 6/4 {f'16 d'4 f'16~} 
      | f'8 bes'8 r2. 
      | r1 
      \bar "||" \mark \default r4 f''4 g''8 r8 r4 
      | r8 f''8 e''8 es''8 r2 
      | r4 des''4 cis''4 r4 
      | d''8 bes'8~ bes'8. g'16 aes'8 c''8 es''8 g''8~ 
      | \tuplet 3/2 {g''8 bes''8 des'''8~} des'''8. c'''16~ c'''16 bes''8 aes''16~ aes''16 g''8 ges''16~ 
      | ges''16 f''8 e''16~ \tuplet 3/2 {e''8 es''8 c''8~} c''4 bes'8. f'16 
      | es'8 d'4 r8 r2 
      | r8. es'16 e'8 f'8 g'8 a'8 bes'8 c''8~ 
      | c''16 c''16\bendAfter #+4  d''8 c''4 d''4 \tuplet 3/2 {c''4 f'8~} 
      | f'2~ f'8. g'16 \tuplet 3/2 {bes'4 bes'8~} 
      | bes'4.. g'16 bes'8 d''8 r4 
      | r1 
      \bar "||" \mark \default r16 bes''16 c'''16 cis'''16 d'''4. c'''8 a''4 
      | bes''4 a''4 aes''4 \tuplet 3/2 {g''4 f''8} 
      | r4 r16 c''16\bendAfter #+4  es''8 c''16\bendAfter #+4  d''8 c''16 des''8 b'8 
      | c''4 g''8. c''16 fis''8. g''32 f''32 \tuplet 3/2 {b'4 c''8~} 
      | c''8 r8 r2. 
      | r8 b'8 c''8 des''8 c''4 bes'4 
      | c''4 c''8. g'16~ g'16 f'8 f'16~ f'4 
      | r1 
      | r8. es'16 g'8 bes'8 a'8 bes'8 c''8 d''8~ 
      | d''16 ges''16\bendAfter #+4  a''8~ a''16 g''8 f''16~ f''8 es''8~ es''16 f''16 d''16 c''16 
      | bes'4 bes'4 r2 
      | r1 
      \bar "||" \mark \default r4 des''4 des''8. des''16~ des''8 r8 
      | r8 bes'4 bes'4 bes'8 aes'8 r8 
      | r4 \tuplet 3/2 {des''4 bes'8} \tuplet 3/2 {des''4 des''8} r4 
      | r4 \tuplet 3/2 {bes'4 f'8} \tuplet 3/2 {bes'4 aes'8} r4 
      | r4 \tuplet 3/2 {bes'4 f'8} \tuplet 3/2 {bes'4 des''8} r4 
      | r4 es''16 d''16 des''8 \tuplet 3/2 {des''4 des''8} r4 
      | r4 cis''4 \tuplet 3/2 {d''8 cis''8 d''8~} d''8 bes'8 
      | f'4 es'8. d'16~ d'8 bes'8~ bes'8. bes'16~ 
      | bes'4 r2. 
      | r8. bes'16 c''4 bes'4 c''4 
      | bes'4. bes'8 r2 
      | r1 
      \bar "||" \mark \default r8 bes''8 g''8 f''8 r2 
      | r8 e''4 es''4. des''8 r8 
      | r4 bes'8. g'32 f'32 \tuplet 3/2 {aes'4 c''8} r4 
      | r8 g'8 f'8 e'8~ e'8. es'16~ es'4~ 
      | es'4. es'8~ es'16 e'8 f'16 g'8 a'8 
      | bes'8 c''8 cis''8 d''8 es''4 c''8 d''8 
      | bes'8 f'8 es'8 f'8~ f'16 d'8 bes16 bes'4 
      | g'2 \tuplet 3/2 {bes'8 a'8 bes'8~} bes'8 g'8 
      | bes'4 g'4 des'8 r8 r4 
      | r2 r8 a'8 \tuplet 3/2 {bes'4 bes'8~} 
      | bes'4 g'4 d'4 r4 
      | r2. r8. f'16~ 
      \bar "||" \mark \default f'8 g'8 a'8. bes'16~ bes'8. c''16 \tuplet 3/2 {d''4 bes'8} 
      | c''8 d''8 \tuplet 3/2 {fis''4 g''8~} g''8 f''8 g''8\bendAfter #+4  aes''8~ 
      | aes''8. e''16~ e''16 g''8 ges''16~ ges''16 f''8 e''16~ e''16 es''8 cis''16 
      | d''8 bes'8 a'16\bendAfter #+4  bes'8 g'16 aes'8 c''8 g'8 f'8 
      | bes'4 r2. 
      | r4 es''2.~ 
      | es''2. des''4 
      | cis''4 r2. 
      | r8. bes'16 c''8 d''8 es''8 f''8 \tuplet 3/2 {g''4 bes''8~} 
      | bes''16 g''8\bendAfter #+4  a''16~ a''8. g''16~ \tuplet 3/2 {g''8 f''8 es''8~} es''16 cis''16 d''16 c''16 
      | bes'4 bes'4 g'4\bendAfter #+4  aes'4~ 
      | aes'8 aes'8 \tuplet 3/2 {g'4 g'8} ges'8 ges'8 f'8 f'8 
      \bar "||" \mark \default e'2.. r8\bar  ".."
    }
    >>
>>    
}
