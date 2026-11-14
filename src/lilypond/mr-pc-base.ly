% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
% soundfont-overlay: sf/PracticeRhythm.sf2
\version "2.26.0"
\language "english"
\header { title = "Mr. P.C." subtitle = "Base, 180 BPM, due chorus" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 120\mm ragged-right = ##f ragged-last-bottom = ##t }
\score {
 \new Staff \with { \remove "Clef_engraver" \override TimeSignature.stencil = ##f } \absolute {
  \key c \minor \time 4/4 \omit Accidental
  \improvisationOn \sectionLabel "A" b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 | \improvisationOff \bar "|."
 }
 \layout { indent = 0 system-count = #3
  \context { \Voice \override TextScript.staff-padding = #2.5 \override TextScript.font-size = #1.5 } }
}
\score { <<
  \new Staff { \tempo 4 = 180 s1 \repeat unfold 2 { s1*12 } }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r1 \pp \repeat unfold 2 { \absolute { <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <f,\6 ef\4 af\3>1 <f,\6 ef\4 af\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <af,\6 gf\4 c'\3>1 <g,\6 f\4 b\3>1 <c\5 ef\4 bf\3>1 <g,\6 f\4 b\3>1 } } }
  \new Staff { \set Staff.midiInstrument = "electric bass (finger)" r1 \mf \repeat unfold 2 { \absolute { c,4 ef,4 g,4 bf,4 c4 bf,4 g,4 ef,4 c,4 g,4 bf,4 g,4 c4 bf,4 g,4 e,4 f,4 af,4 c4 gf,4 f,4 af,4 c4 df,4 c,4 ef,4 g,4 df,4 c,4 ef,4 g,4 g,4 af,4 c4 ef4 af,4 g,4 b,4 d4 df,4 c,4 ef,4 g,4 gf,4 g,4 b,4 d4 df,4 } } }
  \new DrumStaff { \drummode { hh4\p hh hh hh } \repeat unfold 2 { \drummode { cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } } } }
 >> \midi { } }
