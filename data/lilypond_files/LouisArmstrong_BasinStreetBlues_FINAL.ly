\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Basin Street Blues"
  composer = "Louis Armstrong"
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

      | bes1 | d1:7 | g1:7 | s1 | c1:7 | f1:7 | bes2 bes2:dim | c2:min7 f2:7 
      | bes1 | d1:7 | g1:7 | s1 | c1:7 | f1:7 | bes2 bes2:dim | c2:min7 f2:7 
      | bes1 | d1:7 | g1:7 | s2 s2 | c1:7 | f1:7 | bes2 bes2:dim | c2:min7 f2:7 
      | bes1 | d1:7 | g1:7 | s1 | c1:7 | f1:7|
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

      \tempo 4 = 107
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default d''16 bes'16 f'16 d'16~ d'16 f'16 bes'16 d''16 d''8 d''16 d''16 r4 
      | r2 \tuplet 6/4 {d''16 es''16 d''16 cis''8 d''16~} \tuplet 3/2 {d''8 g''8 d''8~} 
      | d''16 a''8 e''16 d''8 d''4.^\markup{\left-align \small vib} \tuplet 3/2 {g'8 bes'8 d''8} 
      | g''8 ges''8 \tuplet 3/2 {f''4 g'8} es''4.^\markup{\left-align \small vib} d''8 
      | e'16 g'16 bes'16 d''16 d''8 d''8 \tuplet 3/2 {d''8 d''8\bendAfter #+4  bes'8} r4 
      | es'16 a'16 a'16 d''16~ d''8 d''8 d''16 d''16^\markup{\left-align \small vib} r8 r4 
      | g''8 ges''8 f''8 bes'16 es''16~ \tuplet 5/4 {es''16 d''16 a'''16 cis''16 d''16} c''16 bes'16 g'8 
      | a'16 bes'16 g'16 es'16 c'16 b16 bes16 gis16 a16 e'16 a'8 g'4^\markup{\left-align \small vib} 
      \bar "||" \mark \default r4 f'16 e'16 g'16 f'16 \tuplet 3/2 {bes'8 d''8 f''8} a''8 a''8 
      | a''8 d''4^\markup{\left-align \small vib} a''8 d''8 a''16 d''16~ \tuplet 6/4 {d''16 bes''8. d''16 a''16~} 
      | a''8 a''8 d''4^\markup{\left-align \small vib} \tuplet 3/2 {a''8 d''8 a''8} \tuplet 3/2 {d''8 a''8 g''8} 
      | f''16 fis''16 g''16 d''16 \tuplet 6/4 {d''16\glissando  es''16 e''16 f''8 d''16} b'8 g'8 \tuplet 3/2 {es''8 d''8 f''8\glissando } 
      | g''8~ g''32 a'16 d''32~ d''8 d''16 d''16~^\markup{\left-align \small vib} d''4~ \tuplet 3/2 {d''8 cis''8 d''8} 
      | f''8 d''8 \tuplet 3/2 {e''4\bendAfter #+4  f''8} d''4^\markup{\left-align \small vib} r4 
      | r4 bes''2~^\markup{\left-align \small vib} bes''8 g''8 
      | \tuplet 3/2 {a''8\bendAfter #+4  bes''4} bes''4 \tuplet 6/4 {bes''4~ bes''16\glissando  c'''16~} c'''8 g''8 
      \bar "||" \mark \default bes''4 bes''4 f''4 r8 d''8 
      | \tuplet 3/2 {a''4 a''8~^\markup{\left-align \small vib}} a''8. a''16~ a''16 d''16 es''16 d''16 \tuplet 3/2 {cis''8 d''8 a''8} 
      | g''8 d''8^\markup{\left-align \small vib} r2 r8 bes'16 b'16 
      | \tuplet 3/2 {d''8 g''8 ges''8~} ges''32 f''16. e''16. es''32 \tuplet 3/2 {f''8 es''4~^\markup{\left-align \small vib}} es''8 b'8 
      | cis''8\bendAfter #+4  d''8~^\markup{\left-align \small vib} d''4. g'16 gis'16 a'8 d''16 c''16 
      | d''16 c''8.^\markup{\left-align \small vib} \tuplet 3/2 {g'8 gis'8 a'8} f''16 d''8.~^\markup{\left-align \small vib} d''8 a'8 
      | \tuplet 3/2 {c''4 c''8} bes'8 bes'8 a'8 g'4^\markup{\left-align \small vib} g'8 
      | \tuplet 3/2 {aes'8\glissando  bes'8 a'8~} \tuplet 3/2 {a'8 a'8 g'8} a'16 g'8.~^\markup{\left-align \small vib} g'8 f'8 
      \bar "||" d'8 d'8 d'4^\markup{\left-align \small vib} r4 \tuplet 6/4 {r4 cis'16\bendAfter #+4  d'16~} 
      | d'8 es'8 d'2^\markup{\left-align \small vib} cis'16 d'16 es'16 d'16 
      | \tuplet 3/2 {es'8 d'8 g'8} a'4 d'4.^\markup{\left-align \small vib} r8 
      | r4 \tuplet 6/4 {r8 gis'16\bendAfter #+4  a'8 g'16~} \tuplet 3/2 {g'8 f'8 d'8} \tuplet 3/2 {es'4\bendAfter #-4  b8} 
      | \tuplet 3/2 {d'4 d'8~^\markup{\left-align \small vib}} d'4 r2 
      | r8 cis'8 \tuplet 3/2 {d'8 g'8 d'8} \tuplet 3/2 {f'8 d'8 f'8} d'4^\markup{\left-align \small vib}\bar  ".."
    }
    >>
>>    
}
