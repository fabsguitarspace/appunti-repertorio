% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Blues for Alice" subtitle = "Chord melody: un voicing per cambio, nota del tema al canto" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 186\mm ragged-right = ##f ragged-last-bottom = ##t }
cm = \absolute { \cadenzaOn \omit Staff.TimeSignature
  \sectionLabel "A" <d'\4 a'\3 c''\2 f''\1>1^\markup { \concat { "F" "6" } } \bar "|"
  <b\5 e'\4 g'\3 d''\2>1^\markup { \concat { "E" "m7" } } <a\5 e'\4 g'\3 cs''\2>1^\markup { \concat { "A" "7" } } \bar "|"
  <d\6 c'\4 f'\3 a'\2>1^\markup { \concat { "D" "m7" } } <d\6 b\4 f'\3 g'\2>1^\markup { \concat { "G" "7" } } \bar "|"
  <c\5 g\4 bf\3 ef'\2>1^\markup { \concat { "C" "m7" } } <c\5 a\3 ef'\2 f'\1>1^\markup { \concat { "F" "7" } } \bar "|" \break
  <f\5 d'\3 af'\2 c''\1>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <df'\4 af'\3 bf'\2 ef''\1>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" } } <ef\6 df'\4 g'\3 c''\2>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <e\6 c'\4 g'\3 a'\2>1^\markup { \concat { "A" "m7" } } <a,\6 fs\4 c'\3 d'\2>1^\markup { \concat { "D" "7" } } \bar "|"
  <cf'\4 gf'\3 af'\2 df''\1>1^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "m7" } } <df\6 cf'\4 f'\3 bf'\2>1^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|" \break
  <d\6 bf\4 f'\3 g'\2>1^\markup { \concat { "G" "m7" } } \bar "|"
  <c\6 bf\4 e'\3 a'\2>1^\markup { \concat { "C" "7" } } \bar "|"
  <f\5 d'\3 a'\2 c''\1>1^\markup { \concat { "F" "6" } } <f\5 c'\4 d'\3 g'\2>1^\markup { \concat { "D" "m7" } } \bar "|"
  <bf\4 f'\3 g'\2 d''\1>1^\markup { \concat { "G" "m7" } } <c\6 bf\4 e'\3 a'\2>1^\markup { \concat { "C" "7" } } \bar "|" \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key f \major \cm }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \cm }
 >>
 \layout { indent = 0 system-count = #3
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
