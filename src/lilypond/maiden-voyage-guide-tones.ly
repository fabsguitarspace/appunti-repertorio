% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Maiden Voyage" subtitle = "Guide tones: terze e settime" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 396\mm ragged-right = ##f ragged-last-bottom = ##t }
guide = \absolute { \time 4/4
  \sectionLabel "A" c'1\3^\markup { \concat { "A" "m7" "/" "D" } } |
  c'1\3^\markup { \concat { "A" "m7" "/" "D" } } |
  c'1\3^\markup { \concat { "A" "m7" "/" "D" } } |
  c'1\3^\markup { \concat { "A" "m7" "/" "D" } } | \break
  bf1\3^\markup { \concat { "C" "m7" "/" "F" } } |
  bf1\3^\markup { \concat { "C" "m7" "/" "F" } } |
  bf1\3^\markup { \concat { "C" "m7" "/" "F" } } |
  bf1\3^\markup { \concat { "C" "m7" "/" "F" } } | \break
  \section \sectionLabel "A" c'1\3^\markup { \concat { "A" "m7" "/" "D" } } |
  c'1\3^\markup { \concat { "A" "m7" "/" "D" } } |
  c'1\3^\markup { \concat { "A" "m7" "/" "D" } } |
  c'1\3^\markup { \concat { "A" "m7" "/" "D" } } | \break
  bf1\3^\markup { \concat { "C" "m7" "/" "F" } } |
  bf1\3^\markup { \concat { "C" "m7" "/" "F" } } |
  bf1\3^\markup { \concat { "C" "m7" "/" "F" } } |
  bf1\3^\markup { \concat { "C" "m7" "/" "F" } } | \break
  \section \sectionLabel "B" af1\4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } |
  af1\4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } |
  af1\4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } |
  af1\4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } | \break
  b1\3^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } |
  b1\3^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } |
  b1\3^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } |
  b1\3^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } | \break
  \section \sectionLabel "A" c'1\3^\markup { \concat { "A" "m7" "/" "D" } } |
  c'1\3^\markup { \concat { "A" "m7" "/" "D" } } |
  c'1\3^\markup { \concat { "A" "m7" "/" "D" } } |
  c'1\3^\markup { \concat { "A" "m7" "/" "D" } } | \break
  bf1\3^\markup { \concat { "C" "m7" "/" "F" } } |
  bf1\3^\markup { \concat { "C" "m7" "/" "F" } } |
  bf1\3^\markup { \concat { "C" "m7" "/" "F" } } |
  bf1\3^\markup { \concat { "C" "m7" "/" "F" } } | \bar "|." }
comp = \absolute { \time 4/4
  \sectionLabel "A" <a,\6 g\4 c'\3>1 |
  <a,\6 g\4 c'\3>1 |
  <a,\6 g\4 c'\3>1 |
  <a,\6 g\4 c'\3>1 | \break
  <c\5 ef\4 bf\3>1 |
  <c\5 ef\4 bf\3>1 |
  <c\5 ef\4 bf\3>1 |
  <c\5 ef\4 bf\3>1 | \break
  \section \sectionLabel "A" <a,\6 g\4 c'\3>1 |
  <a,\6 g\4 c'\3>1 |
  <a,\6 g\4 c'\3>1 |
  <a,\6 g\4 c'\3>1 | \break
  <c\5 ef\4 bf\3>1 |
  <c\5 ef\4 bf\3>1 |
  <c\5 ef\4 bf\3>1 |
  <c\5 ef\4 bf\3>1 | \break
  \section \sectionLabel "B" <bf,\6 af\4 df'\3>1 |
  <bf,\6 af\4 df'\3>1 |
  <bf,\6 af\4 df'\3>1 |
  <bf,\6 af\4 df'\3>1 | \break
  <cs\5 e\4 b\3>1 |
  <cs\5 e\4 b\3>1 |
  <cs\5 e\4 b\3>1 |
  <cs\5 e\4 b\3>1 | \break
  \section \sectionLabel "A" <a,\6 g\4 c'\3>1 |
  <a,\6 g\4 c'\3>1 |
  <a,\6 g\4 c'\3>1 |
  <a,\6 g\4 c'\3>1 | \break
  <c\5 ef\4 bf\3>1 |
  <c\5 ef\4 bf\3>1 |
  <c\5 ef\4 bf\3>1 |
  <c\5 ef\4 bf\3>1 | }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key c \major \guide }
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
