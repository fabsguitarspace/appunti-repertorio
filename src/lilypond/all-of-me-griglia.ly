% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "All of Me" subtitle = "Forma e sigle" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 204\mm ragged-right = ##f ragged-last-bottom = ##t }
\score {
 \new Staff \with { \remove "Clef_engraver" \override TimeSignature.stencil = ##f } \absolute {
  \key c \major \time 4/4 \omit Accidental
  \improvisationOn \sectionLabel "A" b'4^\markup { \concat { "C" "6" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "6" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" "7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "A" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "B" b'4^\markup { \concat { "E" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" "m7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "D" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "A" b'4^\markup { \concat { "C" "6" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "6" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" "7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "A" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "C" b'4^\markup { \concat { "F" "6" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "m6" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" "7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "6" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4^\markup { \concat { "G" "7" } } b'4 | \improvisationOff \bar "|."
 }
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2.5 \override TextScript.font-size = #1.5 } }
}
