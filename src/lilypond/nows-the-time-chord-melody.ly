% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Now's the Time" subtitle = "Chord melody: un voicing per cambio, nota del tema al canto" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 186\mm ragged-right = ##f ragged-last-bottom = ##t }
cm = \absolute { \cadenzaOn \omit Staff.TimeSignature
  \sectionLabel "A" <c\6 a\4 ef'\3 f'\2>1^\markup { \concat { "F" "7" } } \bar "|"
  <bf,\6 af\4 d'\3 f'\2>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <c\6 a\4 ef'\3 f'\2>1^\markup { \concat { "F" "7" } } \bar "|"
  <c\6 a\4 ef'\3 f'\2>1^\markup { \concat { "F" "7" } } \bar "|" \break
  <bf,\6 af\4 d'\3 f'\2>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <b,\6 af\4 d'\3 f'\2>1^\markup { \concat { "B" "dim7" } } \bar "|"
  <c\6 a\4 ef'\3 f'\2>1^\markup { \concat { "F" "7" "/" "C" } } <b,\6 gs\4 d'\3 f'\2>1^\markup { \concat { "E" "7" } } \bar "|"
  <bf,\6 g\4 df'\3 f'\2>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } <a,\6 fs\4 c'\3 f'\2>1^\markup { \concat { "D" "7" } } \bar "|" \break
  <d\5 bf\3 f'\2 a'\1>1^\markup { \concat { "G" "m7" } } \bar "|"
  <c\5 bf\3 e'\2 g'\1>1^\markup { \concat { "C" "7" } } \bar "|"
  <f,\6 ef\4 a\3 c'\2>1^\markup { \concat { "F" "7" } } \bar "|"
  <f,\6 ef\4 a\3 c'\2>1^\markup { \concat { "F" "7" } } \bar "|" \bar "|." }
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
