% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Footprints" subtitle = "Guide tones: terze e settime" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 312\mm ragged-right = ##f ragged-last-bottom = ##t }
guide = \absolute { \time 3/4
  \sectionLabel "A" ef'2.\2^\markup { \concat { "C" "m7" } } |
  ef'2.\2^\markup { \concat { "C" "m7" } } |
  ef'2.\2^\markup { \concat { "C" "m7" } } |
  ef'2.\2^\markup { \concat { "C" "m7" } } | \break
  ef'2.\2^\markup { \concat { "C" "m7" } } |
  ef'2.\2^\markup { \concat { "C" "m7" } } |
  ef'2.\2^\markup { \concat { "C" "m7" } } |
  ef'2.\2^\markup { \concat { "C" "m7" } } | \break
  ef'2.\2^\markup { \concat { "F" "m7" } } |
  ef'2.\2^\markup { \concat { "F" "m7" } } |
  ef'2.\2^\markup { \concat { "F" "m7" } } |
  ef'2.\2^\markup { \concat { "F" "m7" } } | \break
  ef'2.\2^\markup { \concat { "C" "m7" } } |
  ef'2.\2^\markup { \concat { "C" "m7" } } |
  ef'2.\2^\markup { \concat { "C" "m7" } } |
  ef'2.\2^\markup { \concat { "C" "m7" } } | \break
  d'2.\3^\markup { \concat { "E" "m7" } } |
  d'2.\3^\markup { \concat { "E" "m7" } } |
  df'2.\3^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } |
  c'2\3^\markup { \concat { "D" "m7" } } cf'4\3^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "m7" } } | \break
  bf2.\3^\markup { \concat { "C" "m7" } } |
  bf2.\3^\markup { \concat { "C" "m7" } } |
  bf2.\3^\markup { \concat { "C" "m7" } } |
  bf2.\3^\markup { \concat { "C" "m7" } } | \bar "|." }
comp = \absolute { \time 3/4
  \sectionLabel "A" <c\5 ef\4 bf\3>2. |
  <c\5 ef\4 bf\3>2. |
  <c\5 ef\4 bf\3>2. |
  <c\5 ef\4 bf\3>2. | \break
  <c\5 ef\4 bf\3>2. |
  <c\5 ef\4 bf\3>2. |
  <c\5 ef\4 bf\3>2. |
  <c\5 ef\4 bf\3>2. | \break
  <f,\6 ef\4 af\3>2. |
  <f,\6 ef\4 af\3>2. |
  <f,\6 ef\4 af\3>2. |
  <f,\6 ef\4 af\3>2. | \break
  <c\5 ef\4 bf\3>2. |
  <c\5 ef\4 bf\3>2. |
  <c\5 ef\4 bf\3>2. |
  <c\5 ef\4 bf\3>2. | \break
  <e\5 g\4 d'\3>2. |
  <e\5 g\4 d'\3>2. |
  <ef\5 g\4 df'\3>2. |
  <d\5 f\4 c'\3>2 <df\5 ff\4 cf'\3>4 | \break
  <c\5 ef\4 bf\3>2. |
  <c\5 ef\4 bf\3>2. |
  <c\5 ef\4 bf\3>2. |
  <c\5 ef\4 bf\3>2. | }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key c \minor \guide }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \guide }
 >>
 \layout { indent = 0 system-count = #6
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
\score { <<
  \new Staff { \set Staff.midiInstrument = "acoustic grand" \tempo 4 = 80 c'''4\p c''' c''' \mf \guide }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r2. \pp \comp }
 >> \midi { } }
