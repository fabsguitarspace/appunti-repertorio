% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Maiden Voyage" subtitle = "Chord melody: un voicing per cambio, nota del tema al canto" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 396\mm ragged-right = ##f ragged-last-bottom = ##t }
cm = \absolute { \cadenzaOn \omit Staff.TimeSignature
  \sectionLabel "A" <c'\4 g'\3 a'\2 d''\1>1^\markup { \concat { "A" "m7" "/" "D" } } \bar "|"
  <c'\4 g'\3 a'\2 d''\1>1^\markup { \concat { "A" "m7" "/" "D" } } \bar "|"
  <c'\4 g'\3 a'\2 d''\1>1^\markup { \concat { "A" "m7" "/" "D" } } \bar "|"
  <g\5 e'\3 a'\2 c''\1>1^\markup { \concat { "A" "m7" "/" "D" } } \bar "|" \break
  <c'\4 g'\3 bf'\2 ef''\1>1^\markup { \concat { "C" "m7" "/" "F" } } \bar "|"
  <bf\5 ef'\4 g'\3 c''\2>1^\markup { \concat { "C" "m7" "/" "F" } } \bar "|"
  <bf\5 ef'\4 g'\3 c''\2>1^\markup { \concat { "C" "m7" "/" "F" } } \bar "|"
  <c\6 bf\4 ef'\3 a'\2>1^\markup { \concat { "C" "m7" "/" "F" } } \bar "|" \break
  \section \sectionLabel "A" <c'\4 g'\3 a'\2 d''\1>1^\markup { \concat { "A" "m7" "/" "D" } } \bar "|"
  <c'\4 g'\3 a'\2 d''\1>1^\markup { \concat { "A" "m7" "/" "D" } } \bar "|"
  <c'\4 g'\3 a'\2 d''\1>1^\markup { \concat { "A" "m7" "/" "D" } } \bar "|"
  <g\5 e'\3 a'\2 c''\1>1^\markup { \concat { "A" "m7" "/" "D" } } \bar "|" \break
  <c'\4 g'\3 bf'\2 ef''\1>1^\markup { \concat { "C" "m7" "/" "F" } } \bar "|"
  <bf\5 ef'\4 g'\3 c''\2>1^\markup { \concat { "C" "m7" "/" "F" } } \bar "|"
  <bf\5 ef'\4 g'\3 c''\2>1^\markup { \concat { "C" "m7" "/" "F" } } \bar "|"
  <bf\5 ef'\4 g'\3 c''\2>1^\markup { \concat { "C" "m7" "/" "F" } } \bar "|" \break
  \section \sectionLabel "B" <bf\5 af'\3 df''\2 f''\1>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } \bar "|"
  <bf\5 af'\3 df''\2 f''\1>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } \bar "|"
  <bf\5 af'\3 df''\2 f''\1>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } \bar "|"
  <bf\5 af'\3 df''\2 ef''\1>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } \bar "|" \break
  <gs\5 e'\3 b'\2 ds''\1>1^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } \bar "|"
  <b\4 e'\3 gs'\2 cs''\1>1^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } \bar "|"
  <b\4 e'\3 gs'\2 cs''\1>1^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } \bar "|"
  <cs\6 b\4 e'\3 a'\2>1^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } \bar "|" \break
  \section \sectionLabel "A" <c'\4 g'\3 a'\2 d''\1>1^\markup { \concat { "A" "m7" "/" "D" } } \bar "|"
  <c'\4 g'\3 a'\2 d''\1>1^\markup { \concat { "A" "m7" "/" "D" } } \bar "|"
  <c'\4 g'\3 a'\2 d''\1>1^\markup { \concat { "A" "m7" "/" "D" } } \bar "|"
  <g\5 e'\3 a'\2 c''\1>1^\markup { \concat { "A" "m7" "/" "D" } } \bar "|" \break
  <c'\4 g'\3 bf'\2 ef''\1>1^\markup { \concat { "C" "m7" "/" "F" } } \bar "|"
  <bf\5 ef'\4 g'\3 c''\2>1^\markup { \concat { "C" "m7" "/" "F" } } \bar "|"
  <bf\5 ef'\4 g'\3 c''\2>1^\markup { \concat { "C" "m7" "/" "F" } } \bar "|"
  r1^\markup { \concat { "C" "m7" "/" "F" } } \bar "|" \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key c \major \cm }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \cm }
 >>
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
