% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Maiden Voyage" subtitle = "Accompagnamento, livello 1" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 396\mm ragged-right = ##f ragged-last-bottom = ##t }
comp = \absolute { \time 4/4
  \sectionLabel "A" <a,\6 g\4 c'\3>1^\markup { \concat { "A" "m7" "/" "D" } } |
  <a,\6 g\4 c'\3>1^\markup { \concat { "A" "m7" "/" "D" } } |
  <a,\6 g\4 c'\3>1^\markup { \concat { "A" "m7" "/" "D" } } |
  <a,\6 g\4 c'\3>1^\markup { \concat { "A" "m7" "/" "D" } } | \break
  <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" "/" "F" } } |
  <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" "/" "F" } } |
  <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" "/" "F" } } |
  <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" "/" "F" } } | \break
  \section \sectionLabel "A" <a,\6 g\4 c'\3>1^\markup { \concat { "A" "m7" "/" "D" } } |
  <a,\6 g\4 c'\3>1^\markup { \concat { "A" "m7" "/" "D" } } |
  <a,\6 g\4 c'\3>1^\markup { \concat { "A" "m7" "/" "D" } } |
  <a,\6 g\4 c'\3>1^\markup { \concat { "A" "m7" "/" "D" } } | \break
  <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" "/" "F" } } |
  <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" "/" "F" } } |
  <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" "/" "F" } } |
  <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" "/" "F" } } | \break
  \section \sectionLabel "B" <bf,\6 af\4 df'\3>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } |
  <bf,\6 af\4 df'\3>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } |
  <bf,\6 af\4 df'\3>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } |
  <bf,\6 af\4 df'\3>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } | \break
  <cs\5 e\4 b\3>1^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } |
  <cs\5 e\4 b\3>1^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } |
  <cs\5 e\4 b\3>1^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } |
  <cs\5 e\4 b\3>1^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } | \break
  \section \sectionLabel "A" <a,\6 g\4 c'\3>1^\markup { \concat { "A" "m7" "/" "D" } } |
  <a,\6 g\4 c'\3>1^\markup { \concat { "A" "m7" "/" "D" } } |
  <a,\6 g\4 c'\3>1^\markup { \concat { "A" "m7" "/" "D" } } |
  <a,\6 g\4 c'\3>1^\markup { \concat { "A" "m7" "/" "D" } } | \break
  <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" "/" "F" } } |
  <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" "/" "F" } } |
  <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" "/" "F" } } |
  <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" "/" "F" } } | \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key c \major \comp }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \comp }
 >>
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
\score { \new Staff { \set Staff.midiInstrument = "acoustic grand" \tempo 4 = 60 c'''4\p c''' c''' c''' \mf \comp } \midi { } }
