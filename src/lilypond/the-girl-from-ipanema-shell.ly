% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "The Girl from Ipanema" subtitle = "Accompagnamento con shell" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 480\mm ragged-right = ##f ragged-last-bottom = ##t }
comp = \absolute { \time 4/4
  \sectionLabel "A" <f\5 a\4 e'\3>1^\markup { \concat { "F" "maj7" } } |
  <f\5 a\4 e'\3>1^\markup { \concat { "F" "maj7" } } |
  <g\5 b\4 f'\3>1^\markup { \concat { "G" "7" } } |
  <g\5 b\4 f'\3>1^\markup { \concat { "G" "7" } } | \break
  <g\5 bf\4 f'\3>1^\markup { \concat { "G" "m7" } } |
  <gf\5 bf\4 ff'\3>1^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <f\5 a\4 e'\3>1^\markup { \concat { "F" "maj7" } } |
  <gf\5 bf\4 ff'\3>1^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } | \break
  \section \sectionLabel "A" <f\5 a\4 e'\3>1^\markup { \concat { "F" "maj7" } } |
  <f\5 a\4 e'\3>1^\markup { \concat { "F" "maj7" } } |
  <g\5 b\4 f'\3>1^\markup { \concat { "G" "7" } } |
  <g\5 b\4 f'\3>1^\markup { \concat { "G" "7" } } | \break
  <g\5 bf\4 f'\3>1^\markup { \concat { "G" "m7" } } |
  <gf\5 bf\4 ff'\3>1^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <f\5 a\4 e'\3>1^\markup { \concat { "F" "maj7" } } |
  <f\5 a\4 e'\3>1^\markup { \concat { "F" "maj7" } } | \break
  \section \sectionLabel "B" <gf\5 bf\4 f'\3>1^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  <gf\5 bf\4 f'\3>1^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  <b,\6 a\4 ds'\3>1^\markup { \concat { "B" "7" } } |
  <b,\6 a\4 ds'\3>1^\markup { \concat { "B" "7" } } | \break
  <fs\5 a\4 e'\3>1^\markup { \concat { "F" \raise #0.7 \fontsize #-3 \sharp "m7" } } |
  <fs\5 a\4 e'\3>1^\markup { \concat { "F" \raise #0.7 \fontsize #-3 \sharp "m7" } } |
  <d\6 c'\4 fs'\3>1^\markup { \concat { "D" "7" } } |
  <d\6 c'\4 fs'\3>1^\markup { \concat { "D" "7" } } | \break
  <g\5 bf\4 f'\3>1^\markup { \concat { "G" "m7" } } |
  <g\5 bf\4 f'\3>1^\markup { \concat { "G" "m7" } } |
  <ef\6 df'\4 g'\3>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <ef\6 df'\4 g'\3>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } | \break
  <a\5 c'\4 g'\3>1^\markup { \concat { "A" "m7" } } |
  <d\6 c'\4 fs'\3>1^\markup { \concat { "D" "7" } } |
  <g\5 bf\4 f'\3>1^\markup { \concat { "G" "m7" } } |
  <c\6 bf\4 e'\3>1^\markup { \concat { "C" "7" } } | \break
  \section \sectionLabel "A" <f\5 a\4 e'\3>1^\markup { \concat { "F" "maj7" } } |
  <f\5 a\4 e'\3>1^\markup { \concat { "F" "maj7" } } |
  <g\5 b\4 f'\3>1^\markup { \concat { "G" "7" } } |
  <g\5 b\4 f'\3>1^\markup { \concat { "G" "7" } } | \break
  <g\5 bf\4 f'\3>1^\markup { \concat { "G" "m7" } } |
  <gf\5 bf\4 ff'\3>1^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <f\5 a\4 e'\3>1^\markup { \concat { "F" "maj7" } } |
  <gf\5 bf\4 ff'\3>1^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } | \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key f \major \comp }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \comp }
 >>
 \layout { indent = 0 system-count = #10
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
\score { \new Staff { \set Staff.midiInstrument = "acoustic grand" \tempo 4 = 70 c'''4\p c''' c''' c''' \mf \comp } \midi { } }
