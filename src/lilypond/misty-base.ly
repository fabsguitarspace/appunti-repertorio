% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
% soundfont-overlay: sf/PracticeRhythm.sf2
\version "2.26.0"
\language "english"
\header { title = "Misty" subtitle = "Base, 60 BPM, due chorus" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 204\mm ragged-right = ##f ragged-last-bottom = ##t }
\score {
 \new Staff \with { \remove "Clef_engraver" \override TimeSignature.stencil = ##f } \absolute {
  \key ef \major \time 4/4 \omit Accidental
  \improvisationOn \sectionLabel "A" b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 |
  b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 | \break
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4^\markup { \concat { "C" "m7" } } b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4^\markup { \concat { "C" "7" } } b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 | \break
  \section \sectionLabel "A" b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 |
  b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 | \break
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4^\markup { \concat { "C" "m7" } } b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "6" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "B" b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "A" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4^\markup { \concat { "C" "7" } } b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 | \break
  \section \sectionLabel "A" b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 |
  b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 | \break
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4^\markup { \concat { "C" "m7" } } b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 |
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "6" } } b'4 b'4 b'4 | \improvisationOff \bar "|."
 }
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2.5 \override TextScript.font-size = #1.5 } }
}
\score { <<
  \new Staff { \tempo 4 = 60 s1 \repeat unfold 2 { s1*32 } }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r1 \pp \repeat unfold 2 { \absolute { <ef\5 g\4 d'\3>1 <bf,\6 af\4 df'\3>2 <ef\5 g\4 df'\3>2 <af,\6 g\4 c'\3>1 <af,\6 gf\4 cf'\3>2 <df\5 f\4 cf'\3>2 <ef\5 g\4 d'\3>2 <c\6 bf\4 ef'\3>2 <f\5 af\4 ef'\3>2 <bf,\6 af\4 d'\3>2 <g\5 bf\4 f'\3>2 <c\6 bf\4 e'\3>2 <f\5 af\4 ef'\3>2 <bf,\6 af\4 d'\3>2 <ef\5 g\4 d'\3>1 <bf,\6 af\4 df'\3>2 <ef\5 g\4 df'\3>2 <af,\6 g\4 c'\3>1 <af,\6 gf\4 cf'\3>2 <df\5 f\4 cf'\3>2 <ef\5 g\4 d'\3>2 <c\6 bf\4 ef'\3>2 <f\5 af\4 ef'\3>2 <bf,\6 af\4 d'\3>2 <f\5 af\4 ef'\3>2 <bf,\6 af\4 d'\3>2 <ef\5 g\4 c'\3>1 <bf,\6 af\4 df'\3>1 <ef\5 g\4 df'\3>1 <af,\6 g\4 c'\3>1 <af,\6 g\4 c'\3>1 <a,\6 g\4 c'\3>1 <d\5 fs\4 c'\3>1 <g,\6 f\4 bf\3>2 <c\5 e\4 bf\3>2 <f,\6 ef\4 af\3>2 <bf,\6 af\4 d'\3>2 <ef\5 g\4 d'\3>1 <bf,\6 af\4 df'\3>2 <ef\5 g\4 df'\3>2 <af,\6 g\4 c'\3>1 <af,\6 gf\4 cf'\3>2 <df\5 f\4 cf'\3>2 <ef\5 g\4 d'\3>2 <c\6 bf\4 ef'\3>2 <f\5 af\4 ef'\3>2 <bf,\6 af\4 d'\3>2 <f\5 af\4 ef'\3>2 <bf,\6 af\4 d'\3>2 <ef\5 g\4 c'\3>1 } } }
  \new Staff { \set Staff.midiInstrument = "electric bass (finger)" r1 \mf \repeat unfold 2 { \absolute { ef,2 bf,2 bf,,2 ef,2 af,2 ef2 af,2 df,2 ef,2 c,2 f,2 bf,,2 g,2 c,2 f,2 bf,,2 ef,2 bf,2 bf,,2 ef,2 af,2 ef2 af,2 df,2 ef,2 c,2 f,2 bf,,2 f,2 bf,,2 ef,2 bf,2 bf,,2 f,2 ef,2 bf,2 af,2 ef2 af,2 ef2 a,,2 e,2 d,2 a,2 g,2 c,2 f,2 bf,,2 ef,2 bf,2 bf,,2 ef,2 af,2 ef2 af,2 df,2 ef,2 c,2 f,2 bf,,2 f,2 bf,,2 ef,2 bf,2 } } }
  \new DrumStaff { \drummode { hh4\p hh hh hh } \repeat unfold 2 { \drummode { cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 } } }
 >> \midi { } }
