% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Footprints" subtitle = "Chord melody: un voicing per cambio, nota del tema al canto" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 312\mm ragged-right = ##f ragged-last-bottom = ##t }
cm = \absolute { \cadenzaOn \omit Staff.TimeSignature
  \sectionLabel "A" <ef\5 c'\3 g'\2 bf'\1>1^\markup { \concat { "C" "m7" } } \bar "|"
  <ef\5 c'\3 g'\2 bf'\1>1^\markup { \concat { "C" "m7" } } \bar "|"
  <ef\5 c'\3 g'\2 bf'\1>1^\markup { \concat { "C" "m7" } } \bar "|"
  <g,\6 ef\4 bf\3 d'\2>1^\markup { \concat { "C" "m7" } } \bar "|" \break
  r1^\markup { \concat { "C" "m7" } } \bar "|"
  r1^\markup { \concat { "C" "m7" } } \bar "|"
  r1^\markup { \concat { "C" "m7" } } \bar "|"
  r1^\markup { \concat { "C" "m7" } } \bar "|" \break
  <af\4 ef'\3 f'\2 bf'\1>1^\markup { \concat { "F" "m7" } } \bar "|"
  <af\4 ef'\3 f'\2 bf'\1>1^\markup { \concat { "F" "m7" } } \bar "|"
  <c'\4 f'\3 af'\2 ef''\1>1^\markup { \concat { "F" "m7" } } \bar "|"
  <c\6 af\4 ef'\3 g'\2>1^\markup { \concat { "F" "m7" } } \bar "|" \break
  <ef\5 c'\3 g'\2 bf'\1>1^\markup { \concat { "C" "m7" } } \bar "|"
  <g,\6 ef\4 bf\3 d'\2>1^\markup { \concat { "C" "m7" } } \bar "|"
  r1^\markup { \concat { "C" "m7" } } \bar "|"
  r1^\markup { \concat { "C" "m7" } } \bar "|" \break
  <g\4 d'\3 e'\2 b'\1>1^\markup { \concat { "E" "m7" } } \bar "|"
  <g\4 d'\3 e'\2 b'\1>1^\markup { \concat { "E" "m7" } } \bar "|"
  <ef\5 df'\3 g'\2 bf'\1>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <f\5 c'\4 d'\3 g'\2>1^\markup { \concat { "D" "m7" } } <df\6 cf'\4 ff'\3 gf'\2>1^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "m7" } } \bar "|" \break
  <c\6 bf\4 ef'\3 g'\2>1^\markup { \concat { "C" "m7" } } \bar "|"
  <c\6 bf\4 ef'\3 g'\2>1^\markup { \concat { "C" "m7" } } \bar "|"
  <c\6 bf\4 ef'\3 g'\2>1^\markup { \concat { "C" "m7" } } \bar "|"
  r1^\markup { \concat { "C" "m7" } } \bar "|" \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key c \minor \cm }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \cm }
 >>
 \layout { indent = 0 system-count = #6
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
