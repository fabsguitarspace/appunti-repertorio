% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
% soundfont-overlay: sf/PracticeRhythm.sf2
\version "2.26.0"
\language "english"
\header { title = "Blue Bossa" subtitle = "Base, 70 BPM, un chorus" tagline = ##f }
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
\score { <<
  \new Staff { \tempo 4 = 70 s1 \repeat unfold 1 { s1*16 } }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r1 \pp \repeat unfold 1 { \absolute { <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <f,\6 ef\4 af\3>1 <f,\6 ef\4 af\3>1 <d\5 af\4 c'\3 f'\2>1 <g,\6 f\4 b\3>1 <c\5 ef\4 bf\3>1 <c\5 ef\4 bf\3>1 <ef\5 gf\4 df'\3>1 <af,\6 gf\4 c'\3>1 <df\5 f\4 c'\3>1 <df\5 f\4 c'\3>1 <d\5 af\4 c'\3 f'\2>1 <g,\6 f\4 b\3>1 <c\5 ef\4 bf\3>1 <d\5 af\4 c'\3 f'\2>2 <g,\6 f\4 b\3>2 } } }
  \new Staff { \set Staff.midiInstrument = "electric bass (finger)" r1 \mf \repeat unfold 1 { \absolute { c,4. g,,8 g,,4. c,8 c,4. g,,8 g,,4. f,8 f,4. c,8 c,4. f,8 f,4. c,8 c,4. d,8 d,4. af,,8 af,,4. g,8 g,4. d,8 d,4. c,8 c,4. g,,8 g,,4. c,8 c,4. g,,8 g,,4. ef,8 ef,4. bf,,8 bf,,4. af,8 af,4. ef,8 ef,4. df,8 df,4. af,,8 af,,4. df,8 df,4. af,,8 af,,4. d,8 d,4. af,,8 af,,4. g,8 g,4. d,8 d,4. c,8 c,4. g,,8 g,,4. d,8 d,4. g,8 g,4. c,8 } } }
  \new DrumStaff { \drummode { hh4\p hh hh hh } \repeat unfold 1 { \drummode { <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> } } }
 >> \midi { } }
