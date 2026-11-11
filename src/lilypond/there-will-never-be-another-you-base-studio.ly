% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
% soundfont-overlay: sf/PracticeRhythm.sf2
\version "2.26.0"
\language "english"
\header { title = "There Will Never Be Another You" subtitle = "Base, 60 BPM, un chorus" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 204\mm ragged-right = ##f ragged-last-bottom = ##t }
\score {
 \new Staff \with { \remove "Clef_engraver" \override TimeSignature.stencil = ##f } \absolute {
  \key ef \major \time 4/4 \omit Accidental
  \improvisationOn \sectionLabel "A" b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "B" b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "F" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "A" b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "C" b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "6" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 | \improvisationOff \bar "|."
 }
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2.5 \override TextScript.font-size = #1.5 } }
}
\score { <<
  \new Staff { \tempo 4 = 60 s1 \repeat unfold 1 { s1*32 } }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r1 \pp \repeat unfold 1 { \absolute { <ef\5 g\4 d'\3>1 <ef\5 g\4 d'\3>1 <d\5 af\4 c'\3 f'\2>1 <g,\6 f\4 b\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <bf,\6 af\4 df'\3>1 <ef\5 g\4 df'\3>1 <af,\6 g\4 c'\3>1 <df\5 f\4 cf'\3>1 <ef\5 g\4 d'\3>1 <c\6 bf\4 ef'\3>1 <f\5 a\4 ef'\3>1 <f\5 a\4 ef'\3>1 <f\5 af\4 ef'\3>1 <bf,\6 af\4 d'\3>1 <ef\5 g\4 d'\3>1 <ef\5 g\4 d'\3>1 <d\5 af\4 c'\3 f'\2>1 <g,\6 f\4 b\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <bf,\6 af\4 df'\3>1 <ef\5 g\4 df'\3>1 <af,\6 g\4 c'\3>1 <df\5 f\4 cf'\3>1 <g,\6 f\4 bf\3>1 <c\5 e\4 bf\3>1 <f,\6 ef\4 af\3>1 <bf,\6 af\4 d'\3>1 <ef\5 g\4 c'\3>1 <f\5 af\4 ef'\3>2 <bf,\6 af\4 d'\3>2 } } }
  \new Staff { \set Staff.midiInstrument = "electric bass (finger)" r1 \mf \repeat unfold 1 { \absolute { ef,4 g,4 bf,4 e,4 ef,4 g,4 bf,4 ef,4 d,4 f,4 af,4 gf,4 g,4 b,4 d4 df,4 c,4 ef,4 g,4 df,4 c,4 ef,4 g,4 b,,4 bf,,4 df,4 f,4 d,4 ef,4 g,4 bf,4 g,4 af,4 c4 ef4 d,4 df,4 f,4 af,4 d,4 ef,4 g,4 bf,4 df,4 c,4 ef,4 g,4 e,4 f,4 a,4 c4 gf,4 f,4 a,4 c4 gf,4 f,4 af,4 c4 b,,4 bf,,4 d,4 f,4 d,4 ef,4 g,4 bf,4 e,4 ef,4 g,4 bf,4 ef,4 d,4 f,4 af,4 gf,4 g,4 b,4 d4 df,4 c,4 ef,4 g,4 df,4 c,4 ef,4 g,4 b,,4 bf,,4 df,4 f,4 d,4 ef,4 g,4 bf,4 g,4 af,4 c4 ef4 d,4 df,4 f,4 af,4 gf,4 g,4 bf,4 d4 df,4 c,4 e,4 g,4 e,4 f,4 af,4 c4 b,,4 bf,,4 d,4 f,4 d,4 ef,4 g,4 bf,4 e,4 f,4 b,,4 bf,,4 d,4 } } }
  \new DrumStaff { \drummode { hh4\p hh hh hh } \repeat unfold 1 { \drummode { cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } cymr4 \tuplet 3/2 { <cymr hh>4 cymr8 } } } }
 >> \midi { } }
