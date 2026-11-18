% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Mr. P.C." subtitle = "Chord melody: un voicing per cambio, nota del tema al canto" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 186\mm ragged-right = ##f ragged-last-bottom = ##t }
cm = \absolute { \cadenzaOn \omit Staff.TimeSignature
  \sectionLabel "A" <g,\6 ef\4 bf\3 c'\2>1^\markup { \concat { "C" "m7" } } \bar "|"
  <ef\4 bf\3 c'\2 g'\1>1^\markup { \concat { "C" "m7" } } \bar "|"
  <g,\6 ef\4 bf\3 c'\2>1^\markup { \concat { "C" "m7" } } \bar "|"
  <g,\6 ef\4 bf\3 c'\2>1^\markup { \concat { "C" "m7" } } \bar "|" \break
  <c\5 af\3 ef'\2 f'\1>1^\markup { \concat { "F" "m7" } } \bar "|"
  <af\4 ef'\3 f'\2 c''\1>1^\markup { \concat { "F" "m7" } } \bar "|"
  <g,\6 ef\4 bf\3 c'\2>1^\markup { \concat { "C" "m7" } } \bar "|"
  <g,\6 ef\4 bf\3 c'\2>1^\markup { \concat { "C" "m7" } } \bar "|" \break
  <ef\4 af\3 c'\2 gf'\1>1^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <d\5 b\3 f'\2 af'\1>1^\markup { \concat { "G" "7" } } \bar "|"
  <g,\6 ef\4 bf\3 c'\2>1^\markup { \concat { "C" "m7" } } \bar "|"
  <g,\6 f\4 b\3 c'\2>1^\markup { \concat { "G" "7" } } \bar "|" \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key c \minor \cm }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \cm }
 >>
 \layout { indent = 0 system-count = #3
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
