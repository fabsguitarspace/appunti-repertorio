% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
% soundfont-overlay: sf/PracticeRhythm.sf2
\version "2.26.0"
\language "english"
\header { title = "The Girl from Ipanema" subtitle = "Base, 140 BPM, due chorus" tagline = ##f }
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
\score { <<
  \new Staff { \tempo 4 = 140 s1 \repeat unfold 2 { s1*40 } }
  \new Staff { \set Staff.midiInstrument = "acoustic grand" r1 \pp \repeat unfold 2 { \absolute { <f\5 a\4 e'\3>1 <f\5 a\4 e'\3>1 <g\5 b\4 f'\3>1 <g\5 b\4 f'\3>1 <g\5 bf\4 f'\3>1 <gf\5 bf\4 ff'\3>1 <f\5 a\4 e'\3>1 <gf\5 bf\4 ff'\3>1 <f\5 a\4 e'\3>1 <f\5 a\4 e'\3>1 <g\5 b\4 f'\3>1 <g\5 b\4 f'\3>1 <g\5 bf\4 f'\3>1 <gf\5 bf\4 ff'\3>1 <f\5 a\4 e'\3>1 <f\5 a\4 e'\3>1 <gf\5 bf\4 f'\3>1 <gf\5 bf\4 f'\3>1 <b,\6 a\4 ds'\3>1 <b,\6 a\4 ds'\3>1 <fs\5 a\4 e'\3>1 <fs\5 a\4 e'\3>1 <d\6 c'\4 fs'\3>1 <d\6 c'\4 fs'\3>1 <g\5 bf\4 f'\3>1 <g\5 bf\4 f'\3>1 <ef\6 df'\4 g'\3>1 <ef\6 df'\4 g'\3>1 <a\5 c'\4 g'\3>1 <d\6 c'\4 fs'\3>1 <g\5 bf\4 f'\3>1 <c\6 bf\4 e'\3>1 <f\5 a\4 e'\3>1 <f\5 a\4 e'\3>1 <g\5 b\4 f'\3>1 <g\5 b\4 f'\3>1 <g\5 bf\4 f'\3>1 <gf\5 bf\4 ff'\3>1 <f\5 a\4 e'\3>1 <gf\5 bf\4 ff'\3>1 } } }
  \new Staff { \set Staff.midiInstrument = "electric bass (finger)" r1 \mf \repeat unfold 2 { \absolute { f,4. c,8 c,4. f,8 f,4. c,8 c,4. g,8 g,4. d,8 d,4. g,8 g,4. d,8 d,4. g,8 g,4. d,8 d,4. gf,8 gf,4. df,8 df,4. f,8 f,4. c,8 c,4. gf,8 gf,4. df,8 df,4. f,8 f,4. c,8 c,4. f,8 f,4. c,8 c,4. g,8 g,4. d,8 d,4. g,8 g,4. d,8 d,4. g,8 g,4. d,8 d,4. gf,8 gf,4. df,8 df,4. f,8 f,4. c,8 c,4. f,8 f,4. c,8 c,4. gf,8 gf,4. df,8 df,4. gf,8 gf,4. df,8 df,4. b,,8 b,,4. gf,8 gf,4. b,,8 b,,4. gf,8 gf,4. gf,8 gf,4. df,8 df,4. gf,8 gf,4. df,8 df,4. d,8 d,4. a,,8 a,,4. d,8 d,4. a,,8 a,,4. g,8 g,4. d,8 d,4. g,8 g,4. d,8 d,4. ef,8 ef,4. bf,,8 bf,,4. ef,8 ef,4. bf,,8 bf,,4. a,,8 a,,4. e,8 e,4. d,8 d,4. a,,8 a,,4. g,8 g,4. d,8 d,4. c,8 c,4. g,,8 g,,4. f,8 f,4. c,8 c,4. f,8 f,4. c,8 c,4. g,8 g,4. d,8 d,4. g,8 g,4. d,8 d,4. g,8 g,4. d,8 d,4. gf,8 gf,4. df,8 df,4. f,8 f,4. c,8 c,4. gf,8 gf,4. df,8 df,4. f,8 } } }
  \new DrumStaff { \drummode { hh4\p hh hh hh } \repeat unfold 2 { \drummode { <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> <hh bd>8 hh hh <hh bd> <hh bd> hh hh <hh bd> } } }
 >> \midi { } }
