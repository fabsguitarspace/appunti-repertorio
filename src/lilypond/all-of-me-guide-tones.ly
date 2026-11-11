% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "All of Me" subtitle = "Guide tones: terze e settime" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 396\mm ragged-right = ##f ragged-last-bottom = ##t }
guide = \absolute { \time 4/4
  \sectionLabel "A" e'1\2^\markup { \concat { "C" "6" } } |
  e'1\2^\markup { \concat { "C" "6" } } |
  d'1\3^\markup { \concat { "E" "7" } } |
  d'1\3^\markup { \concat { "E" "7" } } | \break
  cs'1\3^\markup { \concat { "A" "7" } } |
  cs'1\3^\markup { \concat { "A" "7" } } |
  c'1\3^\markup { \concat { "D" "m7" } } |
  c'1\3^\markup { \concat { "D" "m7" } } | \break
  \section \sectionLabel "B" d'1\3^\markup { \concat { "E" "7" } } |
  d'1\3^\markup { \concat { "E" "7" } } |
  c'1\3^\markup { \concat { "A" "m7" } } |
  c'1\3^\markup { \concat { "A" "m7" } } | \break
  c'1\3^\markup { \concat { "D" "7" } } |
  c'1\3^\markup { \concat { "D" "7" } } |
  c'1\3^\markup { \concat { "D" "m7" } } |
  b1\3^\markup { \concat { "G" "7" } } | \break
  \section \sectionLabel "A" a1\3^\markup { \concat { "C" "6" } } |
  a1\3^\markup { \concat { "C" "6" } } |
  gs1\4^\markup { \concat { "E" "7" } } |
  gs1\4^\markup { \concat { "E" "7" } } | \break
  g1\4^\markup { \concat { "A" "7" } } |
  g1\4^\markup { \concat { "A" "7" } } |
  c'1\3^\markup { \concat { "D" "m7" } } |
  c'1\3^\markup { \concat { "D" "m7" } } | \break
  \section \sectionLabel "C" d'1\3^\markup { \concat { "F" "6" } } |
  d'1\3^\markup { \concat { "F" "m6" } } |
  d'1\3^\markup { \concat { "E" "m7" } } |
  cs'1\3^\markup { \concat { "A" "7" } } | \break
  c'1\3^\markup { \concat { "D" "m7" } } |
  b1\3^\markup { \concat { "G" "7" } } |
  a1\3^\markup { \concat { "C" "6" } } |
  c'2\3^\markup { \concat { "D" "m7" } } b2\3^\markup { \concat { "G" "7" } } | \bar "|." }
comp = \absolute { \time 4/4
  \sectionLabel "A" <c\5 e\4 a\3>1 |
  <c\5 e\4 a\3>1 |
  <e\5 gs\4 d'\3>1 |
  <e\5 gs\4 d'\3>1 | \break
  <a,\6 g\4 cs'\3>1 |
  <a,\6 g\4 cs'\3>1 |
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 | \break
  \section \sectionLabel "B" <e\5 gs\4 d'\3>1 |
  <e\5 gs\4 d'\3>1 |
  <a,\6 g\4 c'\3>1 |
  <a,\6 g\4 c'\3>1 | \break
  <d\5 fs\4 c'\3>1 |
  <d\5 fs\4 c'\3>1 |
  <d\5 f\4 c'\3>1 |
  <g,\6 f\4 b\3>1 | \break
  \section \sectionLabel "A" <c\5 e\4 a\3>1 |
  <c\5 e\4 a\3>1 |
  <e\5 gs\4 d'\3>1 |
  <e\5 gs\4 d'\3>1 | \break
  <a,\6 g\4 cs'\3>1 |
  <a,\6 g\4 cs'\3>1 |
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 | \break
  \section \sectionLabel "C" <f\5 a\4 d'\3>1 |
  <f\5 af\4 d'\3>1 |
  <e\5 g\4 d'\3>1 |
  <a,\6 g\4 cs'\3>1 | \break
  <d\5 f\4 c'\3>1 |
  <g,\6 f\4 b\3>1 |
  <c\5 e\4 a\3>1 |
  <d\5 f\4 c'\3>2 <g,\6 f\4 b\3>2 | }
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
