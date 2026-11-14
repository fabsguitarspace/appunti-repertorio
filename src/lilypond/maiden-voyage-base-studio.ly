% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
% soundfont-overlay: sf/PracticeRhythm.sf2
\version "2.26.0"
\language "english"
\header { title = "Maiden Voyage" subtitle = "Base, 60 BPM, un chorus" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 204\mm ragged-right = ##f ragged-last-bottom = ##t }
\score {
 \new Staff \with { \remove "Clef_engraver" \override TimeSignature.stencil = ##f } \absolute {
  \key c \major \time 4/4 \omit Accidental
  \improvisationOn \sectionLabel "A" b'4^\markup { \concat { "A" "m7" "/" "D" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" "m7" "/" "D" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" "m7" "/" "D" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" "m7" "/" "D" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "C" "m7" "/" "F" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" "/" "F" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" "/" "F" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" "/" "F" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "A" b'4^\markup { \concat { "A" "m7" "/" "D" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" "m7" "/" "D" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" "m7" "/" "D" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" "m7" "/" "D" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "C" "m7" "/" "F" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" "/" "F" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" "/" "F" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" "/" "F" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "B" b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "m7" "/" "E" \raise #0.7 \fontsize #-3 \flat } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" \raise #0.7 \fontsize #-3 \sharp "m7" } } b'4 b'4 b'4 | \break
  \section \sectionLabel "A" b'4^\markup { \concat { "A" "m7" "/" "D" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" "m7" "/" "D" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" "m7" "/" "D" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "A" "m7" "/" "D" } } b'4 b'4 b'4 | \break
  b'4^\markup { \concat { "C" "m7" "/" "F" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" "/" "F" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" "/" "F" } } b'4 b'4 b'4 |
  b'4^\markup { \concat { "C" "m7" "/" "F" } } b'4 b'4 b'4 | \improvisationOff \bar "|."
 }
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2.5 \override TextScript.font-size = #1.5 } }
}
\score { <<
  \new Staff { \tempo 4 = 60 s1 \repeat unfold 1 { s1*32 } }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r1 \pp \repeat unfold 1 { \absolute { <a,\6 g\4 c'\3>1 <a,\6 g\4 c'\3>1 <a,\6 g\4 c'\3>1 <a,\6 g\4 c'\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <a,\6 g\4 c'\3>1 <a,\6 g\4 c'\3>1 <a,\6 g\4 c'\3>1 <a,\6 g\4 c'\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <bf,\6 af\4 df'\3>1 <bf,\6 af\4 df'\3>1 <bf,\6 af\4 df'\3>1 <bf,\6 af\4 df'\3>1 <cs\5 e\4 b\3>1 <cs\5 e\4 b\3>1 <cs\5 e\4 b\3>1 <cs\5 e\4 b\3>1 <a,\6 g\4 c'\3>1 <a,\6 g\4 c'\3>1 <a,\6 g\4 c'\3>1 <a,\6 g\4 c'\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 } } }
  \new Staff { \set Staff.midiInstrument = "electric bass (finger)" r1 \mf \repeat unfold 1 { \absolute { d,4. a,,8 a,,4. d,8 d,4. a,,8 a,,4. d,8 d,4. a,,8 a,,4. d,8 d,4. a,,8 a,,4. f,8 f,4. c,8 c,4. f,8 f,4. c,8 c,4. f,8 f,4. c,8 c,4. f,8 f,4. c,8 c,4. d,8 d,4. a,,8 a,,4. d,8 d,4. a,,8 a,,4. d,8 d,4. a,,8 a,,4. d,8 d,4. a,,8 a,,4. f,8 f,4. c,8 c,4. f,8 f,4. c,8 c,4. f,8 f,4. c,8 c,4. f,8 f,4. c,8 c,4. ef,8 ef,4. bf,,8 bf,,4. ef,8 ef,4. bf,,8 bf,,4. ef,8 ef,4. bf,,8 bf,,4. ef,8 ef,4. bf,,8 bf,,4. df,8 df,4. af,,8 af,,4. df,8 df,4. af,,8 af,,4. df,8 df,4. af,,8 af,,4. df,8 df,4. af,,8 af,,4. d,8 d,4. a,,8 a,,4. d,8 d,4. a,,8 a,,4. d,8 d,4. a,,8 a,,4. d,8 d,4. a,,8 a,,4. f,8 f,4. c,8 c,4. f,8 f,4. c,8 c,4. f,8 f,4. c,8 c,4. f,8 f,4. c,8 c,4. d,8 } } }
  \new DrumStaff { \drummode { hh4\p hh hh hh } \repeat unfold 1 { \drummode { <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> } } }
 >> \midi { } }
