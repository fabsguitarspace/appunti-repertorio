% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Autumn Leaves" subtitle = "Guide tones: terze e settime" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 396\mm ragged-right = ##f ragged-last-bottom = ##t }
guide = \absolute { \time 4/4
  \sectionLabel "A" ef'1\2^\markup { \concat { "C" "m7" } } |
  ef'1\2^\markup { \concat { "F" "7" } } |
  d'1\3^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  d'1\3^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } | \break
  c'1\3^\markup { \concat { "A" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } |
  c'1\3^\markup { \concat { "D" "7" } } |
  bf1\3^\markup { \concat { "G" "m6" } } |
  bf1\3^\markup { \concat { "G" "m6" } } | \break
  \section \sectionLabel "A" bf1\3^\markup { \concat { "C" "m7" } } |
  a1\3^\markup { \concat { "F" "7" } } |
  a1\4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  g1\4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } | \break
  g1\4^\markup { \concat { "A" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } |
  c'1\3^\markup { \concat { "D" "7" } } |
  bf1\3^\markup { \concat { "G" "m6" } } |
  bf1\3^\markup { \concat { "G" "m6" } } | \break
  \section \sectionLabel "B" c'1\3^\markup { \concat { "A" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } |
  c'1\3^\markup { \concat { "D" "7" } } |
  bf1\3^\markup { \concat { "G" "m6" } } |
  bf1\3^\markup { \concat { "G" "m6" } } | \break
  bf1\3^\markup { \concat { "C" "m7" } } |
  a1\3^\markup { \concat { "F" "7" } } |
  a1\4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  g1\4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } | \break
  \section \sectionLabel "C" g1\4^\markup { \concat { "A" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } |
  c'1\3^\markup { \concat { "D" "7" } } |
  bf2\3^\markup { \concat { "G" "m7" } } bf2\3^\markup { \concat { "C" "7" } } |
  af2\3^\markup { \concat { "F" "m7" } } af2\4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } | \break
  g1\4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  g2\4^\markup { \concat { "A" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } c'2\3^\markup { \concat { "D" "7" } } |
  bf1\3^\markup { \concat { "G" "m6" } } |
  bf1\3^\markup { \concat { "G" "m6" } } | \bar "|." }
comp = \absolute { \time 4/4
  \sectionLabel "A" <c\5 ef\4 bf\3>1 |
  <f,\6 ef\4 a\3>1 |
  <bf,\6 a\4 d'\3>1 |
  <ef\5 g\4 d'\3>1 | \break
  <a,\6 g\4 c'\3 ef'\2>1 |
  <d\5 fs\4 c'\3>1 |
  <g,\6 e\4 bf\3>1 |
  <g,\6 e\4 bf\3>1 | \break
  \section \sectionLabel "A" <c\5 ef\4 bf\3>1 |
  <f,\6 ef\4 a\3>1 |
  <bf,\6 a\4 d'\3>1 |
  <ef\5 g\4 d'\3>1 | \break
  <a,\6 g\4 c'\3 ef'\2>1 |
  <d\5 fs\4 c'\3>1 |
  <g,\6 e\4 bf\3>1 |
  <g,\6 e\4 bf\3>1 | \break
  \section \sectionLabel "B" <a,\6 g\4 c'\3 ef'\2>1 |
  <d\5 fs\4 c'\3>1 |
  <g,\6 e\4 bf\3>1 |
  <g,\6 e\4 bf\3>1 | \break
  <c\5 ef\4 bf\3>1 |
  <f,\6 ef\4 a\3>1 |
  <bf,\6 a\4 d'\3>1 |
  <ef\5 g\4 d'\3>1 | \break
  \section \sectionLabel "C" <a,\6 g\4 c'\3 ef'\2>1 |
  <d\5 fs\4 c'\3>1 |
  <g,\6 f\4 bf\3>2 <c\5 e\4 bf\3>2 |
  <f,\6 ef\4 af\3>2 <bf,\6 af\4 d'\3>2 | \break
  <ef\5 g\4 d'\3>1 |
  <a,\6 g\4 c'\3 ef'\2>2 <d\5 fs\4 c'\3>2 |
  <g,\6 e\4 bf\3>1 |
  <g,\6 e\4 bf\3>1 | }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key g \minor \guide }
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
