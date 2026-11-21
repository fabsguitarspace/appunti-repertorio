% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "The Girl from Ipanema" subtitle = "Forma e sigle" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 240\mm ragged-right = ##f ragged-last-bottom = ##t }
\score {
 \new Staff \with { \remove "Clef_engraver" \override TimeSignature.stencil = ##f } \absolute {
  \key f \major \time 4/4 \omit Accidental
  \improvisationOn \sectionLabel "A" b'4^\markup { \concat { "F" "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "A" b'4^\markup { \concat { "F" "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "maj7" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "B" b'4^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" "7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "F" \raise #0.7 \fontsize #-3 \sharp "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" \raise #0.7 \fontsize #-3 \sharp "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "A" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "7" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "A" b'4^\markup { \concat { "F" "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 | \improvisationOff \bar "|."
 }
 \layout { indent = 0 system-count = #10
  \context { \Voice \override TextScript.staff-padding = #2.5 \override TextScript.font-size = #1.5 } }
}
