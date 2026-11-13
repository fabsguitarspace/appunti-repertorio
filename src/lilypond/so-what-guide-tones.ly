% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "So What" subtitle = "Guide tones: terze e settime" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 396\mm ragged-right = ##f ragged-last-bottom = ##t }
guide = \absolute { \time 4/4
  \sectionLabel "A" f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } | \break
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } | \break
  \section \sectionLabel "A" f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } | \break
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } | \break
  \section \sectionLabel "B" gf'1\2^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } |
  gf'1\2^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } |
  gf'1\2^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } |
  gf'1\2^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } | \break
  gf'1\2^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } |
  gf'1\2^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } |
  gf'1\2^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } |
  gf'1\2^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } | \break
  \section \sectionLabel "A" f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } | \break
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } |
  f'1\2^\markup { \concat { "D" "m7" } } | \bar "|." }
comp = \absolute { \time 4/4
  \sectionLabel "A" <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 | \break
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 | \break
  \section \sectionLabel "A" <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 | \break
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 | \break
  \section \sectionLabel "B" <ef\5 gf\4 df'\3>1 |
  <ef\5 gf\4 df'\3>1 |
  <ef\5 gf\4 df'\3>1 |
  <ef\5 gf\4 df'\3>1 | \break
  <ef\5 gf\4 df'\3>1 |
  <ef\5 gf\4 df'\3>1 |
  <ef\5 gf\4 df'\3>1 |
  <ef\5 gf\4 df'\3>1 | \break
  \section \sectionLabel "A" <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 | \break
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 |
  <d\5 f\4 c'\3>1 | }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key d \dorian \guide }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \guide }
 >>
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
\score { <<
  \new Staff { \set Staff.midiInstrument = "acoustic grand" \tempo 4 = 68 c'''4\p c''' c''' c''' \mf \guide }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r1 \pp \comp }
 >> \midi { } }
