% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "The Girl from Ipanema" subtitle = "Chord melody: un voicing per cambio, nota del tema al canto" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 480\mm ragged-right = ##f ragged-last-bottom = ##t }
cm = \absolute { \cadenzaOn \omit Staff.TimeSignature
  \sectionLabel "A" <c\6 a\4 e'\3 g'\2>1^\markup { \concat { "F" "maj7" } } \bar "|"
  <c\6 a\4 e'\3 g'\2>1^\markup { \concat { "F" "maj7" } } \bar "|"
  <d\6 b\4 f'\3 g'\2>1^\markup { \concat { "G" "7" } } \bar "|"
  <d\6 b\4 f'\3 g'\2>1^\markup { \concat { "G" "7" } } \bar "|" \break
  <bf,\6 g\4 d'\3 f'\2>1^\markup { \concat { "G" "m7" } } \bar "|"
  <bf,\6 gf\4 df'\3 e'\2>1^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <f,\6 e\4 a\3 c'\2>1^\markup { \concat { "F" "maj7" } } \bar "|"
  r1^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|" \break
  \section \sectionLabel "A" <c\5 a\3 e'\2 g'\1>1^\markup { \concat { "F" "maj7" } } \bar "|"
  <c\5 a\3 e'\2 g'\1>1^\markup { \concat { "F" "maj7" } } \bar "|"
  <d\5 b\3 f'\2 g'\1>1^\markup { \concat { "G" "7" } } \bar "|"
  <d\5 b\3 f'\2 g'\1>1^\markup { \concat { "G" "7" } } \bar "|" \break
  <d\5 g\4 bf\3 f'\2>1^\markup { \concat { "G" "m7" } } \bar "|"
  <bf,\6 gf\4 df'\3 e'\2>1^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <f,\6 e\4 a\3 c'\2>1^\markup { \concat { "F" "maj7" } } \bar "|"
  r1^\markup { \concat { "F" "maj7" } } \bar "|" \break
  \section \sectionLabel "B" <df\5 gf\4 bf\3 f'\2>1^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "maj7" } } \bar "|"
  <df\5 gf\4 bf\3 f'\2>1^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "maj7" } } \bar "|"
  <fs,\6 ds\4 a\3 cs'\2>1^\markup { \concat { "B" "7" } } \bar "|"
  <b,\5 fs\4 a\3 ds'\2>1^\markup { \concat { "B" "7" } } \bar "|" \break
  <cs\5 a\3 e'\2 gs'\1>1^\markup { \concat { "F" \raise #0.7 \fontsize #-3 \sharp "m7" } } \bar "|"
  <cs\5 a\3 e'\2 gs'\1>1^\markup { \concat { "F" \raise #0.7 \fontsize #-3 \sharp "m7" } } \bar "|"
  <a,\6 fs\4 c'\3 e'\2>1^\markup { \concat { "D" "7" } } \bar "|"
  <d\5 a\4 c'\3 fs'\2>1^\markup { \concat { "D" "7" } } \bar "|" \break
  <d\5 bf\3 f'\2 a'\1>1^\markup { \concat { "G" "m7" } } \bar "|"
  <d\5 bf\3 f'\2 a'\1>1^\markup { \concat { "G" "m7" } } \bar "|"
  <bf,\6 g\4 df'\3 f'\2>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <ef\5 bf\4 df'\3 g'\2>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|" \break
  <a\4 e'\3 g'\2 c''\1>1^\markup { \concat { "A" "m7" } } \bar "|"
  <fs\5 c'\4 d'\3 gs'\2>1^\markup { \concat { "D" "7" } } \bar "|"
  <g\5 d'\4 f'\3 bf'\2>1^\markup { \concat { "G" "m7" } } \bar "|"
  <c\6 bf\4 e'\3 fs'\2>1^\markup { \concat { "C" "7" } } \bar "|" \break
  \section \sectionLabel "A" <c\6 a\4 e'\3 g'\2>1^\markup { \concat { "F" "maj7" } } \bar "|"
  <c\6 a\4 e'\3 g'\2>1^\markup { \concat { "F" "maj7" } } \bar "|"
  <d\6 b\4 f'\3 g'\2>1^\markup { \concat { "G" "7" } } \bar "|"
  <d\6 b\4 f'\3 g'\2>1^\markup { \concat { "G" "7" } } \bar "|" \break
  <d\6 bf\4 f'\3 a'\2>1^\markup { \concat { "G" "m7" } } \bar "|"
  <gf\5 ff'\3 bf'\2 c''\1>1^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|"
  <a,\6 f\4 c'\3 e'\2>1^\markup { \concat { "F" "maj7" } } \bar "|"
  r1^\markup { \concat { "G" \raise #0.7 \fontsize #-3 \flat "7" } } \bar "|" \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key f \major \cm }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \cm }
 >>
 \layout { indent = 0 system-count = #10
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
