% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Blue Bossa" subtitle = "Forma e sigle" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 132\mm ragged-right = ##f ragged-last-bottom = ##t }
\score {
 \new Staff \with { \remove "Clef_engraver" \override TimeSignature.stencil = ##f } \absolute {
  \key c \minor \time 4/4 \omit Accidental
  \improvisationOn \sectionLabel "A" b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "B" b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } b'4 b'4^\markup { \concat { "G" "7" } } b'4 | \improvisationOff \bar "|."
 }
 \layout { indent = 0 system-count = #4
  \context { \Voice \override TextScript.staff-padding = #2.5 \override TextScript.font-size = #1.5 } }
}
