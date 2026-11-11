% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Blue Monk" subtitle = "Guide tones: terze e settime" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 186\mm ragged-right = ##f ragged-last-bottom = ##t }
guide = \absolute { \time 4/4
  \sectionLabel "A" d'1\3^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } |
  df'1\3^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } |
  d'1\3^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } |
  d'1\3^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } | \break
  df'1\3^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } |
  df'1\3^\markup { \concat { "E" "dim7" } } |
  d'1\3^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } |
  b1\3^\markup { \concat { "G" "7" } } | \break
  bf1\3^\markup { \concat { "C" "m7" } } |
  a1\3^\markup { \concat { "F" "7" } } |
  af2\4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b2\3^\markup { \concat { "G" "7" } } |
  bf2\3^\markup { \concat { "C" "m7" } } a2\3^\markup { \concat { "F" "7" } } | \bar "|." }
comp = \absolute { \time 4/4
  \sectionLabel "A" <bf,\6 af\4 d'\3>1 |
  <ef\5 g\4 df'\3>1 |
  <bf,\6 af\4 d'\3>1 |
  <bf,\6 af\4 d'\3>1 | \break
  <ef\5 g\4 df'\3>1 |
  <e\5 bf\4 df'\3 g'\2>1 |
  <bf,\6 af\4 d'\3>1 |
  <g,\6 f\4 b\3>1 | \break
  <c\5 ef\4 bf\3>1 |
  <f,\6 ef\4 a\3>1 |
  <bf,\6 af\4 d'\3>2 <g,\6 f\4 b\3>2 |
  <c\5 ef\4 bf\3>2 <f,\6 ef\4 a\3>2 | }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key bf \major \guide }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \guide }
 >>
 \layout { indent = 0 system-count = #3
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
\score { <<
  \new Staff { \set Staff.midiInstrument = "acoustic grand" \tempo 4 = 60 c'''4\p c''' c''' c''' \mf \guide }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r1 \pp \comp }
 >> \midi { } }
