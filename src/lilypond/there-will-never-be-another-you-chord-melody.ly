% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "There Will Never Be Another You" subtitle = "Chord melody: un voicing per cambio, nota del tema al canto" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 396\mm ragged-right = ##f ragged-last-bottom = ##t }
cm = \absolute { \cadenzaOn \omit Staff.TimeSignature
  \sectionLabel "A" <g\4 d'\3 ef'\2 c''\1>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } \bar "|"
  <ef\5 bf\4 d'\3 g'\2>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } \bar "|"
  <d\5 af\4 c'\3 f'\2>1^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } \bar "|"
  <d\5 g\4 b\3 f'\2>1^\markup { \concat { "G" "7" } } \bar "|" \break
  <c\5 g\4 bf\3 ef'\2>1^\markup { \concat { "C" "m7" } } \bar "|"
  <g\5 ef'\3 bf'\2 c''\1>1^\markup { \concat { "C" "m7" } } \bar "|"
  <f\5 df'\3 af'\2 c''\1>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" } } \bar "|"
  <ef\5 df'\3 g'\2 c''\1>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|" \break
  \section \sectionLabel "B" <c'\4 g'\3 af'\2 ef''\1>1^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "maj7" } } \bar "|"
  <df\6 cf'\4 f'\3 g'\2>1^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <ef\6 d'\4 g'\3 bf'\2>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } \bar "|"
  <c\6 bf\4 ef'\3 f'\2>1^\markup { \concat { "C" "m7" } } \bar "|" \break
  <a\4 ef'\3 f'\2 d''\1>1^\markup { \concat { "F" "7" } } \bar "|"
  <c\6 a\4 ef'\3 g'\2>1^\markup { \concat { "F" "7" } } \bar "|"
  <f\5 c'\4 ef'\3 af'\2>1^\markup { \concat { "F" "m7" } } \bar "|"
  <d\6 bf\4 f'\3 af'\2>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|" \break
  \section \sectionLabel "A" <ef\5 d'\3 g'\2 c''\1>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } \bar "|"
  <ef\5 bf\4 d'\3 g'\2>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } \bar "|"
  <d\5 af\4 c'\3 f'\2>1^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } \bar "|"
  <d\5 g\4 b\3 f'\2>1^\markup { \concat { "G" "7" } } \bar "|" \break
  <c\5 g\4 bf\3 ef'\2>1^\markup { \concat { "C" "m7" } } \bar "|"
  <g\5 ef'\3 bf'\2 c''\1>1^\markup { \concat { "C" "m7" } } \bar "|"
  <f\5 df'\3 af'\2 c''\1>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" } } \bar "|"
  <ef\5 df'\3 g'\2 c''\1>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|" \break
  \section \sectionLabel "C" <c'\4 g'\3 af'\2 ef''\1>1^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "maj7" } } \bar "|"
  <df\6 cf'\4 f'\3 g'\2>1^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <g\5 d'\4 f'\3 bf'\2>1^\markup { \concat { "G" "m7" } } \bar "|"
  <g\5 e'\3 bf'\2 d''\1>1^\markup { \concat { "C" "7" } } \bar "|" \break
  <af\5 ef'\4 f'\3 bf'\2>1^\markup { \concat { "F" "m7" } } \bar "|"
  <f\6 d'\4 af'\3 bf'\2>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <bf,\6 g\4 c'\3 f'\2>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "6" } } \bar "|"
  <af,\6 f\4 c'\3 ef'\2>1^\markup { \concat { "F" "m7" } } <d\5 af\4 bf\3 ef'\2>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|" \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key ef \major \cm }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \cm }
 >>
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
