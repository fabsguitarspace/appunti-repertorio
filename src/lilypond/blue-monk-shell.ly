% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Blue Monk" subtitle = "Accompagnamento, livello 1" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 186\mm ragged-right = ##f ragged-last-bottom = ##t }
comp = \absolute { \time 4/4
  \sectionLabel "A" <bf,\6 af\4 d'\3>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <ef\5 g\4 df'\3>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <bf,\6 af\4 d'\3>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <bf,\6 af\4 d'\3>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } | \break
  <ef\5 g\4 df'\3>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <e\5 bf\4 df'\3 g'\2>1^\markup { \concat { "E" "dim7" } } |
  <bf,\6 af\4 d'\3>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <g,\6 f\4 b\3>1^\markup { \concat { "G" "7" } } | \break
  <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" } } |
  <f,\6 ef\4 a\3>1^\markup { \concat { "F" "7" } } |
  <bf,\6 af\4 d'\3>2^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } <g,\6 f\4 b\3>2^\markup { \concat { "G" "7" } } |
  <c\5 ef\4 bf\3>2^\markup { \concat { "C" "m7" } } <f,\6 ef\4 a\3>2^\markup { \concat { "F" "7" } } | \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key bf \major \comp }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \comp }
 >>
 \layout { indent = 0 system-count = #3
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
\score { \new Staff { \set Staff.midiInstrument = "acoustic grand" \tempo 4 = 60 c'''4\p c''' c''' c''' \mf \comp } \midi { } }
