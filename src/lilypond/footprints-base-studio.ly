% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
% soundfont-overlay: sf/PracticeRhythm.sf2
\version "2.26.0"
\language "english"
\header { title = "Footprints" subtitle = "Base, 80 BPM, un chorus" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 168\mm ragged-right = ##f ragged-last-bottom = ##t }
\score {
 \new Staff \with { \remove "Clef_engraver" \override TimeSignature.stencil = ##f } \absolute {
  \key c \minor \time 3/4 \omit Accidental
  \improvisationOn \sectionLabel "A" b'4^\markup { \concat { "C" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 | \break
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 | \break
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4 | \break
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 | \break
  b'4^\markup { \concat { "E" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "E" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "m7" } } | \break
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 | \improvisationOff \bar "|."
 }
 \layout { indent = 0 system-count = #6
  \context { \Voice \override TextScript.staff-padding = #2.5 \override TextScript.font-size = #1.5 } }
}
\score { <<
  \new Staff { \time 3/4 \tempo 4 = 80 s2. \repeat unfold 1 { s2.*24 } }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r2. \pp \repeat unfold 1 { \absolute { <c\5 ef\4 bf\3>2. <c\5 ef\4 bf\3>2. <c\5 ef\4 bf\3>2. <c\5 ef\4 bf\3>2. <c\5 ef\4 bf\3>2. <c\5 ef\4 bf\3>2. <c\5 ef\4 bf\3>2. <c\5 ef\4 bf\3>2. <f,\6 ef\4 af\3>2. <f,\6 ef\4 af\3>2. <f,\6 ef\4 af\3>2. <f,\6 ef\4 af\3>2. <c\5 ef\4 bf\3>2. <c\5 ef\4 bf\3>2. <c\5 ef\4 bf\3>2. <c\5 ef\4 bf\3>2. <e\5 g\4 d'\3>2. <e\5 g\4 d'\3>2. <ef\5 g\4 df'\3>2. <d\5 f\4 c'\3>2 <df\5 ff\4 cf'\3>4 <c\5 ef\4 bf\3>2. <c\5 ef\4 bf\3>2. <c\5 ef\4 bf\3>2. <c\5 ef\4 bf\3>2. } } }
  \new Staff { \set Staff.midiInstrument = "electric bass (finger)" r2. \mf \repeat unfold 1 { \absolute { c,4 ef,4 g,4 c4 bf,4 g,4 c,4 g,4 bf,4 c4 bf,4 df,4 c,4 ef,4 g,4 c4 bf,4 g,4 c,4 g,4 bf,4 c4 bf,4 e,4 f,4 af,4 c4 f4 ef4 c4 f,4 c4 ef4 f4 ef4 df,4 c,4 ef,4 g,4 c4 bf,4 g,4 c,4 g,4 bf,4 c4 bf,4 ef,4 e,4 b,4 f,4 e,4 b,4 e,4 ef,4 bf,4 ef,4 d,4 d,4 df,4 c,4 ef,4 g,4 c4 bf,4 g,4 c,4 g,4 bf,4 c4 bf,4 df,4 } } }
  \new DrumStaff { \drummode { hh4\p hh hh } \repeat unfold 1 { \drummode { cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 } } }
 >> \midi { } }
