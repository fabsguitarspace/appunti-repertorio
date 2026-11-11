% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "There Will Never Be Another You" subtitle = "Guide tones: terze e settime" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 396\mm ragged-right = ##f ragged-last-bottom = ##t }
guide = \absolute { \time 4/4
  \sectionLabel "A" g'1\2^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  g'1\2^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  f'1\2^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } |
  f'1\1^\markup { \concat { "G" "7" } } | \break
  ef'1\2^\markup { \concat { "C" "m7" } } |
  ef'1\2^\markup { \concat { "C" "m7" } } |
  df'1\3^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" } } |
  df'1\3^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } | \break
  \section \sectionLabel "B" c'1\3^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  cf'1\3^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "7" } } |
  d'1\3^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  ef'1\3^\markup { \concat { "C" "m7" } } | \break
  ef'1\3^\markup { \concat { "F" "7" } } |
  ef'1\3^\markup { \concat { "F" "7" } } |
  ef'1\3^\markup { \concat { "F" "m7" } } |
  d'1\3^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } | \break
  \section \sectionLabel "A" d'1\3^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  d'1\3^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  c'1\3^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } |
  b1\3^\markup { \concat { "G" "7" } } | \break
  bf1\3^\markup { \concat { "C" "m7" } } |
  bf1\3^\markup { \concat { "C" "m7" } } |
  af1\4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" } } |
  g1\4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } | \break
  \section \sectionLabel "C" g1\4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  cf'1\3^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "7" } } |
  bf1\3^\markup { \concat { "G" "m7" } } |
  bf1\3^\markup { \concat { "C" "7" } } | \break
  af1\3^\markup { \concat { "F" "m7" } } |
  af1\4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } |
  g1\4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "6" } } |
  af2\4^\markup { \concat { "F" "m7" } } af2\4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } | \bar "|." }
comp = \absolute { \time 4/4
  \sectionLabel "A" <ef\5 g\4 d'\3>1 |
  <ef\5 g\4 d'\3>1 |
  <d\5 af\4 c'\3 f'\2>1 |
  <g,\6 f\4 b\3>1 | \break
  <c\5 ef\4 bf\3>1 |
  <c\5 ef\4 bf\3>1 |
  <bf,\6 af\4 df'\3>1 |
  <ef\5 g\4 df'\3>1 | \break
  \section \sectionLabel "B" <af,\6 g\4 c'\3>1 |
  <df\5 f\4 cf'\3>1 |
  <ef\5 g\4 d'\3>1 |
  <c\6 bf\4 ef'\3>1 | \break
  <f\5 a\4 ef'\3>1 |
  <f\5 a\4 ef'\3>1 |
  <f\5 af\4 ef'\3>1 |
  <bf,\6 af\4 d'\3>1 | \break
  \section \sectionLabel "A" <ef\5 g\4 d'\3>1 |
  <ef\5 g\4 d'\3>1 |
  <d\5 af\4 c'\3 f'\2>1 |
  <g,\6 f\4 b\3>1 | \break
  <c\5 ef\4 bf\3>1 |
  <c\5 ef\4 bf\3>1 |
  <bf,\6 af\4 df'\3>1 |
  <ef\5 g\4 df'\3>1 | \break
  \section \sectionLabel "C" <af,\6 g\4 c'\3>1 |
  <df\5 f\4 cf'\3>1 |
  <g,\6 f\4 bf\3>1 |
  <c\5 e\4 bf\3>1 | \break
  <f,\6 ef\4 af\3>1 |
  <bf,\6 af\4 d'\3>1 |
  <ef\5 g\4 c'\3>1 |
  <f\5 af\4 ef'\3>2 <bf,\6 af\4 d'\3>2 | }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key ef \major \guide }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \guide }
 >>
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
\score { <<
  \new Staff { \set Staff.midiInstrument = "acoustic grand" \tempo 4 = 60 c'''4\p c''' c''' c''' \mf \guide }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r1 \pp \comp }
 >> \midi { } }
