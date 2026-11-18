% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Blue Bossa" subtitle = "Chord melody: un voicing per cambio, nota del tema al canto" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 228\mm ragged-right = ##f ragged-last-bottom = ##t }
cm = \absolute { \cadenzaOn \omit Staff.TimeSignature
  \sectionLabel "A" <ef'\4 bf'\3 c''\2 g''\1>1^\markup { \concat { "C" "m7" } } \bar "|"
  <g\6 ef'\4 bf'\3 c''\2>1^\markup { \concat { "C" "m7" } } \bar "|"
  <f\5 c'\4 ef'\3 af'\2>1^\markup { \concat { "F" "m7" } } \bar "|"
  <af\5 ef'\4 g'\3 f''\1>1^\markup { \concat { "F" "m7" } } \bar "|" \break
  <d'\4 af'\3 c''\2 f''\1>1^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } \bar "|"
  <d\6 b\4 f'\3 bf'\2>1^\markup { \concat { "G" "7" } } \bar "|"
  <c\6 bf\4 ef'\3 g'\2>1^\markup { \concat { "C" "m7" } } \bar "|"
  <c'\4 g'\3 bf'\2 ef''\1>1^\markup { \concat { "C" "m7" } } \bar "|" \break
  \section \sectionLabel "B" <bf\5 gf'\3 df''\2 ef''\1>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } \bar "|"
  <ef\6 c'\4 gf'\3 af'\2>1^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <df\5 af\4 c'\3 f'\2>1^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "maj7" } } \bar "|"
  <df\5 c'\3 f'\2 af'\1>1^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "maj7" } } \bar "|" \break
  <d\5 c'\3 f'\2 af'\1>1^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } \bar "|"
  <d\5 b\3 f'\2 af'\1>1^\markup { \concat { "G" "7" } } \bar "|"
  <c\5 bf\3 ef'\2 g'\1>1^\markup { \concat { "C" "m7" } } \bar "|"
  <f\4 af\3 c'\2 g'\1>1^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } <d\5 b\3 f'\2 bf'\1>1^\markup { \concat { "G" "7" } } \bar "|" \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key c \minor \cm }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \cm }
 >>
 \layout { indent = 0 system-count = #4
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
