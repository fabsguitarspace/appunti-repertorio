% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Blue Bossa" subtitle = "Guide tones: terze e settime" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 228\mm ragged-right = ##f ragged-last-bottom = ##t }
guide = \absolute { \time 4/4
  \sectionLabel "A" ef'1\2^\markup { \concat { "C" "m7" } } |
  ef'1\2^\markup { \concat { "C" "m7" } } |
  ef'1\2^\markup { \concat { "F" "m7" } } |
  ef'1\2^\markup { \concat { "F" "m7" } } | \break
  f'1\2^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } |
  f'1\1^\markup { \concat { "G" "7" } } |
  ef'1\2^\markup { \concat { "C" "m7" } } |
  ef'1\2^\markup { \concat { "C" "m7" } } | \break
  \section \sectionLabel "B" df'1\3^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } |
  c'1\3^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "7" } } |
  c'1\3^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  c'1\3^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "maj7" } } | \break
  c'1\3^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } |
  b1\3^\markup { \concat { "G" "7" } } |
  bf1\3^\markup { \concat { "C" "m7" } } |
  c'2\3^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } b2\3^\markup { \concat { "G" "7" } } | \bar "|." }
comp = \absolute { \time 4/4
  \sectionLabel "A" <c\5 ef\4 bf\3>1 |
  <c\5 ef\4 bf\3>1 |
  <f,\6 ef\4 af\3>1 |
  <f,\6 ef\4 af\3>1 | \break
  <d\5 af\4 c'\3 f'\2>1 |
  <g,\6 f\4 b\3>1 |
  <c\5 ef\4 bf\3>1 |
  <c\5 ef\4 bf\3>1 | \break
  \section \sectionLabel "B" <ef\5 gf\4 df'\3>1 |
  <af,\6 gf\4 c'\3>1 |
  <df\5 f\4 c'\3>1 |
  <df\5 f\4 c'\3>1 | \break
  <d\5 af\4 c'\3 f'\2>1 |
  <g,\6 f\4 b\3>1 |
  <c\5 ef\4 bf\3>1 |
  <d\5 af\4 c'\3 f'\2>2 <g,\6 f\4 b\3>2 | }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key c \minor \guide }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \guide }
 >>
 \layout { indent = 0 system-count = #4
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
\score { <<
  \new Staff { \set Staff.midiInstrument = "acoustic grand" \tempo 4 = 70 c'''4\p c''' c''' c''' \mf \guide }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r1 \pp \comp }
 >> \midi { } }
