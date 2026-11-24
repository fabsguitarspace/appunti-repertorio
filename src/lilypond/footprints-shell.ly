% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Footprints" subtitle = "Accompagnamento con shell" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 312\mm ragged-right = ##f ragged-last-bottom = ##t }
comp = \absolute { \time 3/4
  \sectionLabel "A" <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } |
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } |
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } |
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } | \break
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } |
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } |
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } |
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } | \break
  <f,\6 ef\4 af\3>2.^\markup { \concat { "F" "m7" } } |
  <f,\6 ef\4 af\3>2.^\markup { \concat { "F" "m7" } } |
  <f,\6 ef\4 af\3>2.^\markup { \concat { "F" "m7" } } |
  <f,\6 ef\4 af\3>2.^\markup { \concat { "F" "m7" } } | \break
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } |
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } |
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } |
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } | \break
  <e\5 g\4 d'\3>2.^\markup { \concat { "E" "m7" } } |
  <e\5 g\4 d'\3>2.^\markup { \concat { "E" "m7" } } |
  <ef\5 g\4 df'\3>2.^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <d\5 f\4 c'\3>2^\markup { \concat { "D" "m7" } } <df\5 ff\4 cf'\3>4^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "m7" } } | \break
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } |
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } |
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } |
  <c\5 ef\4 bf\3>2.^\markup { \concat { "C" "m7" } } | \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key c \minor \comp }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \comp }
 >>
 \layout { indent = 0 system-count = #6
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
\score { \new Staff { \set Staff.midiInstrument = "acoustic grand" \tempo 4 = 80 c'''4\p c''' c''' \mf \comp } \midi { } }
