% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
% soundfont-overlay: sf/PracticeRhythm.sf2
\version "2.26.0"
\language "english"
\header { title = "In a Sentimental Mood" subtitle = "Base, 50 BPM, un chorus" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 204\mm ragged-right = ##f ragged-last-bottom = ##t }
\score {
 \new Staff \with { \remove "Clef_engraver" \override TimeSignature.stencil = ##f } \absolute {
  \key f \major \time 4/4 \omit Accidental
  \improvisationOn \sectionLabel "A" b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4^\markup { \concat { "D" "m6" } } b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4^\markup { \concat { "E" "7" } } b'4 | \break
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4^\markup { \concat { "B" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } b'4 |
  b'4^\markup { \concat { "A" "m7" } } b'4 b'4^\markup { \concat { "D" "7" } } b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4^\markup { \concat { "C" "7" } } b'4 |
  b'4^\markup { \concat { "F" "6" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "A" b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4^\markup { \concat { "D" "m6" } } b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4^\markup { \concat { "E" "7" } } b'4 | \break
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4^\markup { \concat { "B" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } b'4 |
  b'4^\markup { \concat { "A" "m7" } } b'4 b'4^\markup { \concat { "D" "7" } } b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4^\markup { \concat { "C" "7" } } b'4 |
  b'4^\markup { \concat { "F" "6" } } b'4 b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 | \break
  \section \sectionLabel "B" b'4^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "maj7" } } b'4 b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 |
  b'4^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "6" "/" "F" } } b'4 b'4^\markup { \concat { "E" "7" } } b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 | \break
  b'4^\markup { \concat { "F" "m7" } } b'4 b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 |
  b'4^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "m7" } } b'4 b'4^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "7" } } b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "7" } } b'4 b'4^\markup { \concat { "A" "7" } } b'4 | \break
  \section \sectionLabel "A" b'4^\markup { \concat { "D" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4^\markup { \concat { "D" "m6" } } b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4^\markup { \concat { "E" "7" } } b'4 | \break
  b'4^\markup { \concat { "D" "m7" } } b'4 b'4^\markup { \concat { "B" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } b'4 |
  b'4^\markup { \concat { "A" "m7" } } b'4 b'4^\markup { \concat { "D" "7" } } b'4 |
  b'4^\markup { \concat { "G" "m7" } } b'4 b'4^\markup { \concat { "C" "7" } } b'4 |
  b'4^\markup { \concat { "F" "6" } } b'4 b'4^\markup { \concat { "A" "7" } } b'4 | \improvisationOff \bar "|."
 }
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2.5 \override TextScript.font-size = #1.5 } }
}
\score { <<
  \new Staff { \tempo 4 = 50 s1 \repeat unfold 1 { s1*32 } }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r1 \pp \repeat unfold 1 { \absolute { <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>2 <d\5 f\4 b\3>2 <g,\6 f\4 bf\3>1 <g,\6 f\4 bf\3>2 <e\5 gs\4 d'\3>2 <d\5 f\4 c'\3>2 <b,\5 f\4 a\3 d'\2>2 <a,\6 g\4 c'\3>2 <d\5 fs\4 c'\3>2 <g,\6 f\4 bf\3>2 <c\5 e\4 bf\3>2 <f\5 a\4 d'\3>1 <d\6 c'\4 f'\3>1 <d\6 c'\4 f'\3>2 <d\6 b\4 f'\3>2 <g\5 bf\4 f'\3>1 <g\5 bf\4 f'\3>2 <e\5 gs\4 d'\3>2 <d\5 f\4 c'\3>2 <b,\5 f\4 a\3 d'\2>2 <a,\6 g\4 c'\3>2 <d\5 fs\4 c'\3>2 <g,\6 f\4 bf\3>2 <c\5 e\4 bf\3>2 <f\5 a\4 d'\3>2 <af,\6 gf\4 c'\3>2 <df\5 f\4 c'\3>2 <bf,\6 af\4 df'\3>2 <ef\5 gf\4 df'\3>2 <af,\6 gf\4 c'\3>2 <df\5 f\4 bf\3>2 <e\5 gs\4 d'\3>2 <ef\5 gf\4 df'\3>2 <af,\6 gf\4 c'\3>2 <f\5 af\4 ef'\3>2 <bf,\6 af\4 df'\3>2 <ef\5 gf\4 df'\3>2 <af,\6 gf\4 c'\3>2 <g,\6 f\4 bf\3>1 <c\5 e\4 bf\3>2 <a,\6 g\4 cs'\3>2 <d\5 f\4 c'\3>1 <d\5 f\4 c'\3>2 <d\5 f\4 b\3>2 <g,\6 f\4 bf\3>1 <g,\6 f\4 bf\3>2 <e\5 gs\4 d'\3>2 <d\5 f\4 c'\3>2 <b,\5 f\4 a\3 d'\2>2 <a,\6 g\4 c'\3>2 <d\5 fs\4 c'\3>2 <g,\6 f\4 bf\3>2 <c\5 e\4 bf\3>2 <f\5 a\4 d'\3>2 <a,\6 g\4 cs'\3>2 } } }
  \new Staff { \set Staff.midiInstrument = "electric bass (finger)" r1 \mf \repeat unfold 1 { \absolute { d,2 a,2 d,2 d,2 g,2 d2 g,2 e,2 d,2 b,,2 a,,2 d,2 g,2 c,2 f,2 c2 d,2 a,2 d,2 d,2 g,2 d2 g,2 e,2 d,2 b,,2 a,,2 d,2 g,2 c,2 f,2 af,2 df,2 bf,,2 ef,2 af,2 f,2 e,2 ef,2 af,2 f,2 bf,,2 ef,2 af,2 g,2 d2 c,2 a,,2 d,2 a,2 d,2 d,2 g,2 d2 g,2 e,2 d,2 b,,2 a,,2 d,2 g,2 c,2 f,2 a,,2 } } }
  \new DrumStaff { \drummode { hh4\p hh hh hh } \repeat unfold 1 { \drummode { cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 cymr4 <cymr hh>4 } } }
 >> \midi { } }
