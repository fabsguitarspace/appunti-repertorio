% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Now's the Time" subtitle = "Guide tones: terze e settime" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 186\mm ragged-right = ##f ragged-last-bottom = ##t }
guide = \absolute { \time 4/4
  \sectionLabel "A" a'1\2^\markup { \concat { "F" "7" } } |
  af'1\1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } |
  a'1\2^\markup { \concat { "F" "7" } } |
  a'1\2^\markup { \concat { "F" "7" } } | \break
  af'1\1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } |
  af'1\1^\markup { \concat { "B" "dim7" } } |
  a'2\2^\markup { \concat { "F" "7" "/" "C" } } gs'2\2^\markup { \concat { "E" "7" } } |
  g'2\2^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } fs'2\2^\markup { \concat { "D" "7" } } | \break
  f'1\1^\markup { \concat { "G" "m7" } } |
  e'1\2^\markup { \concat { "C" "7" } } |
  ef'1\2^\markup { \concat { "F" "7" } } |
  ef'1\2^\markup { \concat { "F" "7" } } | \bar "|." }
comp = \absolute { \time 4/4
  \sectionLabel "A" <f\5 a\4 ef'\3>1 |
  <bf,\6 af\4 d'\3>1 |
  <f\5 a\4 ef'\3>1 |
  <f\5 a\4 ef'\3>1 | \break
  <bf,\6 af\4 d'\3>1 |
  <b,\6 af\4 d'\3 f'\2>1 |
  <f\5 a\4 ef'\3>2 <e\5 gs\4 d'\3>2 |
  <ef\5 g\4 df'\3>2 <d\5 fs\4 c'\3>2 | \break
  <g,\6 f\4 bf\3>1 |
  <c\5 e\4 bf\3>1 |
  <f,\6 ef\4 a\3>1 |
  <f,\6 ef\4 a\3>1 | }
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
