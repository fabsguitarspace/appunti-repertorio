% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "So What" subtitle = "Chord melody: un voicing per cambio, nota del tema al canto" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 396\mm ragged-right = ##f ragged-last-bottom = ##t }
cm = \absolute { \cadenzaOn \omit Staff.TimeSignature
  \sectionLabel "A" <d\5 c'\3 f'\2 b'\1>1^\markup { \concat { "D" "m7" } } \bar "|"
  r1^\markup { \concat { "D" "m7" } } \bar "|"
  <d\5 c'\3 f'\2 b'\1>1^\markup { \concat { "D" "m7" } } \bar "|"
  r1^\markup { \concat { "D" "m7" } } \bar "|" \break
  <d\5 c'\3 f'\2 b'\1>1^\markup { \concat { "D" "m7" } } \bar "|"
  r1^\markup { \concat { "D" "m7" } } \bar "|"
  <d\5 c'\3 f'\2 b'\1>1^\markup { \concat { "D" "m7" } } \bar "|"
  r1^\markup { \concat { "D" "m7" } } \bar "|" \break
  \section \sectionLabel "A" <d\5 c'\3 f'\2 b'\1>1^\markup { \concat { "D" "m7" } } \bar "|"
  r1^\markup { \concat { "D" "m7" } } \bar "|"
  <d\5 c'\3 f'\2 b'\1>1^\markup { \concat { "D" "m7" } } \bar "|"
  r1^\markup { \concat { "D" "m7" } } \bar "|" \break
  <d\5 c'\3 f'\2 b'\1>1^\markup { \concat { "D" "m7" } } \bar "|"
  r1^\markup { \concat { "D" "m7" } } \bar "|"
  <d\5 c'\3 f'\2 b'\1>1^\markup { \concat { "D" "m7" } } \bar "|"
  r1^\markup { \concat { "D" "m7" } } \bar "|" \break
  \section \sectionLabel "B" <ef\5 df'\3 gf'\2 c''\1>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } \bar "|"
  r1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } \bar "|"
  <ef\5 df'\3 gf'\2 c''\1>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } \bar "|"
  r1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } \bar "|" \break
  <ef\5 df'\3 gf'\2 c''\1>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } \bar "|"
  r1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } \bar "|"
  <ef\5 df'\3 gf'\2 c''\1>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } \bar "|"
  r1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } \bar "|" \break
  \section \sectionLabel "A" <d\5 c'\3 f'\2 b'\1>1^\markup { \concat { "D" "m7" } } \bar "|"
  r1^\markup { \concat { "D" "m7" } } \bar "|"
  <d\5 c'\3 f'\2 b'\1>1^\markup { \concat { "D" "m7" } } \bar "|"
  r1^\markup { \concat { "D" "m7" } } \bar "|" \break
  <d\5 c'\3 f'\2 b'\1>1^\markup { \concat { "D" "m7" } } \bar "|"
  r1^\markup { \concat { "D" "m7" } } \bar "|"
  <d\5 c'\3 f'\2 b'\1>1^\markup { \concat { "D" "m7" } } \bar "|"
  r1^\markup { \concat { "D" "m7" } } \bar "|" \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key d \dorian \cm }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \cm }
 >>
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
