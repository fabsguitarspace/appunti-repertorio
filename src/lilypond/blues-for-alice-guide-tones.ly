% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Blues for Alice" subtitle = "Guide tones: terze e settime" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 186\mm ragged-right = ##f ragged-last-bottom = ##t }
guide = \absolute { \time 4/4
  \sectionLabel "A" a'1\1^\markup { \concat { "F" "6" } } |
  g'2\2^\markup { \concat { "E" "m7" } } g'2\1^\markup { \concat { "A" "7" } } |
  f'2\2^\markup { \concat { "D" "m7" } } f'2\1^\markup { \concat { "G" "7" } } |
  ef'2\2^\markup { \concat { "C" "m7" } } ef'2\2^\markup { \concat { "F" "7" } } | \break
  d'1\3^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } |
  df'2\3^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" } } df'2\3^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } |
  c'2\3^\markup { \concat { "A" "m7" } } c'2\3^\markup { \concat { "D" "7" } } |
  cf'2\3^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "m7" } } cf'2\3^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "7" } } | \break
  bf1\3^\markup { \concat { "G" "m7" } } |
  bf1\3^\markup { \concat { "C" "7" } } |
  a2\4^\markup { \concat { "F" "6" } } c'2\4^\markup { \concat { "D" "m7" } } |
  bf2\4^\markup { \concat { "G" "m7" } } bf2\4^\markup { \concat { "C" "7" } } | \bar "|." }
comp = \absolute { \time 4/4
  \sectionLabel "A" <f\5 a\4 d'\3>1 |
  <e\5 g\4 d'\3>2 <a,\6 g\4 cs'\3>2 |
  <d\5 f\4 c'\3>2 <g,\6 f\4 b\3>2 |
  <c\5 ef\4 bf\3>2 <f,\6 ef\4 a\3>2 | \break
  <bf,\6 af\4 d'\3>1 |
  <bf,\6 af\4 df'\3>2 <ef\5 g\4 df'\3>2 |
  <a,\6 g\4 c'\3>2 <d\5 fs\4 c'\3>2 |
  <af,\6 gf\4 cf'\3>2 <df\5 f\4 cf'\3>2 | \break
  <g,\6 f\4 bf\3>1 |
  <c\5 e\4 bf\3>1 |
  <f\5 a\4 d'\3>2 <d\6 c'\4 f'\3>2 |
  <g\5 bf\4 f'\3>2 <c\6 bf\4 e'\3>2 | }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key f \major \guide }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \guide }
 >>
 \layout { indent = 0 system-count = #3
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
\score { <<
  \new Staff { \set Staff.midiInstrument = "acoustic grand" \tempo 4 = 80 c'''4\p c''' c''' c''' \mf \guide }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r1 \pp \comp }
 >> \midi { } }
