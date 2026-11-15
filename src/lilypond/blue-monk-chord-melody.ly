% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Blue Monk" subtitle = "Chord melody: un voicing per cambio, nota del tema al canto" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 186\mm ragged-right = ##f ragged-last-bottom = ##t }
cm = \absolute { \cadenzaOn \omit Staff.TimeSignature
  \sectionLabel "A" <af,\6 f\4 bf\3 d'\2>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <df\5 bf\3 ef'\2 g'\1>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <d\5 af\4 bf\3 f'\2>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <af,\6 f\4 bf\3 d'\2>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|" \break
  <df\5 bf\3 ef'\2 g'\1>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <g\4 df'\3 e'\2 bf'\1>1^\markup { \concat { "E" "dim7" } } \bar "|"
  <bf,\6 af\4 d'\3 f'\2>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <g,\6 f\4 b\3 d'\2>1^\markup { \concat { "G" "7" } } \bar "|" \break
  <c\5 bf\3 ef'\2 f'\1>1^\markup { \concat { "C" "m7" } } \bar "|"
  <c\5 a\3 ef'\2 f'\1>1^\markup { \concat { "F" "7" } } \bar "|"
  <af,\6 f\4 bf\3 d'\2>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } <d\5 g\4 b\3 f'\2>1^\markup { \concat { "G" "7" } } \bar "|"
  <g,\6 ef\4 bf\3 cs'\2>1^\markup { \concat { "C" "m7" } } <f,\6 ef\4 a\3 d'\2>1^\markup { \concat { "F" "7" } } \bar "|" \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key bf \major \cm }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \cm }
 >>
 \layout { indent = 0 system-count = #3
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
