% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
% soundfont-overlay: sf/PracticeRhythm.sf2
\version "2.26.0"
\language "english"
\header { title = "So What" subtitle = "Base, 136 BPM, due chorus" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 204\mm ragged-right = ##f ragged-last-bottom = ##t }
\score {
 \new Staff \with { \remove "Clef_engraver" \override TimeSignature.stencil = ##f } \absolute {
  \key d \dorian \time 4/4 \omit Accidental
  \improvisationOn \sectionLabel "A" b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "A" b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "B" b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "A" b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 | \improvisationOff \bar "|."
 }
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2.5 \override TextScript.font-size = #1.5 } }
}
\score { <<
  \new Staff { \tempo 4 = 136 s1 \repeat unfold 2 { s1*32 } }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r1 \pp \repeat unfold 2 { \absolute { <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <ef\5 gf\4 df'\3>1 <ef\5 gf\4 df'\3>1 <ef\5 gf\4 df'\3>1 <ef\5 gf\4 df'\3>1 <ef\5 gf\4 df'\3>1 <ef\5 gf\4 df'\3>1 <ef\5 gf\4 df'\3>1 <ef\5 gf\4 df'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>1 } } }
  \new Staff { \set Staff.midiInstrument = "electric bass (finger)" r1 \mf \repeat unfold 2 { \absolute { d,4 f,4 a,4 c4 d4 c4 a,4 f,4 d,4 a,4 c4 a,4 d4 c4 a,4 ef,4 d,4 f,4 a,4 c4 d4 c4 a,4 f,4 d,4 a,4 c4 a,4 d4 c4 a,4 ef,4 d,4 f,4 a,4 c4 d4 c4 a,4 f,4 d,4 a,4 c4 a,4 d4 c4 a,4 ef,4 d,4 f,4 a,4 c4 d4 c4 a,4 f,4 d,4 a,4 c4 a,4 d4 c4 a,4 e,4 ef,4 gf,4 bf,4 df4 ef4 df4 bf,4 gf,4 ef,4 bf,4 df4 bf,4 ef4 df4 bf,4 e,4 ef,4 gf,4 bf,4 df4 ef4 df4 bf,4 gf,4 ef,4 bf,4 df4 bf,4 ef4 df4 bf,4 ef,4 d,4 f,4 a,4 c4 d4 c4 a,4 f,4 d,4 a,4 c4 a,4 d4 c4 a,4 ef,4 d,4 f,4 a,4 c4 d4 c4 a,4 f,4 d,4 a,4 c4 a,4 d4 c4 a,4 ef,4 } } }
  \new DrumStaff { \drummode { hh4\p hh hh hh } \repeat unfold 2 { \drummode { cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } } } }
 >> \midi { } }
