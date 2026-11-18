% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Now's the Time" subtitle = "Accompagnamento con shell" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 186\mm ragged-right = ##f ragged-last-bottom = ##t }
comp = \absolute { \time 4/4
  \sectionLabel "A" <f\5 a\4 ef'\3>1^\markup { \concat { "F" "7" } } |
  <bf,\6 af\4 d'\3>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <f\5 a\4 ef'\3>1^\markup { \concat { "F" "7" } } |
  <f\5 a\4 ef'\3>1^\markup { \concat { "F" "7" } } | \break
  <bf,\6 af\4 d'\3>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <b,\6 af\4 d'\3 f'\2>1^\markup { \concat { "B" "dim7" } } |
  <f\5 a\4 ef'\3>2^\markup { \concat { "F" "7" "/" "C" } } <e\5 gs\4 d'\3>2^\markup { \concat { "E" "7" } } |
  <ef\5 g\4 df'\3>2^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } <d\5 fs\4 c'\3>2^\markup { \concat { "D" "7" } } | \break
  <g,\6 f\4 bf\3>1^\markup { \concat { "G" "m7" } } |
  <c\5 e\4 bf\3>1^\markup { \concat { "C" "7" } } |
  <f,\6 ef\4 a\3>1^\markup { \concat { "F" "7" } } |
  <f,\6 ef\4 a\3>1^\markup { \concat { "F" "7" } } | \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key f \major \comp }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \comp }
 >>
 \layout { indent = 0 system-count = #3
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
\score { \new Staff { \set Staff.midiInstrument = "acoustic grand" \tempo 4 = 80 c'''4\p c''' c''' c''' \mf \comp } \midi { } }
