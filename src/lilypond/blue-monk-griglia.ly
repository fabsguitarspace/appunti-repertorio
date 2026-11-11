% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Blue Monk" subtitle = "Forma e sigle" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 120\mm ragged-right = ##f ragged-last-bottom = ##t }
\score {
 \new Staff \with { \remove "Clef_engraver" \override TimeSignature.stencil = ##f } \absolute {
  \key bf \major \time 4/4 \omit Accidental
  \improvisationOn \sectionLabel "A" b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" "dim7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4^\markup { \concat { "G" "7" } } b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4^\markup { \concat { "F" "7" } } b'4 | \improvisationOff \bar "|."
 }
 \layout { indent = 0 system-count = #3
  \context { \Voice \override TextScript.staff-padding = #2.5 \override TextScript.font-size = #1.5 } }
}
