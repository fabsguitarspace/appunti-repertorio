% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "All of Me" subtitle = "Chord melody: un voicing per cambio, nota del tema al canto" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 396\mm ragged-right = ##f ragged-last-bottom = ##t }
cm = \absolute { \cadenzaOn \omit Staff.TimeSignature
  \sectionLabel "A" <a\4 e'\3 g'\2 c''\1>1^\markup { \concat { "C" "6" } } \bar "|"
  <a,\6 g\4 c'\3 e'\2>1^\markup { \concat { "C" "6" } } \bar "|"
  <gs\4 d'\3 e'\2 b'\1>1^\markup { \concat { "E" "7" } } \bar "|"
  <b,\6 gs\4 d'\3 e'\2>1^\markup { \concat { "E" "7" } } \bar "|" \break
  <e\5 cs'\3 g'\2 a'\1>1^\markup { \concat { "A" "7" } } \bar "|"
  <a,\6 g\4 cs'\3 e'\2>1^\markup { \concat { "A" "7" } } \bar "|"
  <d\5 c'\3 f'\2 g'\1>1^\markup { \concat { "D" "m7" } } \bar "|"
  <d\5 a\4 c'\3 f'\2>1^\markup { \concat { "D" "m7" } } \bar "|" \break
  \section \sectionLabel "B" <b,\6 gs\4 d'\3 e'\2>1^\markup { \concat { "E" "7" } } \bar "|"
  <gs,\6 e\4 b\3 d'\2>1^\markup { \concat { "E" "7" } } \bar "|"
  <c'\4 g'\3 a'\2 d''\1>1^\markup { \concat { "A" "m7" } } \bar "|"
  <a\5 e'\4 g'\3 c''\2>1^\markup { \concat { "A" "m7" } } \bar "|" \break
  <d\6 c'\4 fs'\3 b'\2>1^\markup { \concat { "D" "7" } } \bar "|"
  <d\6 c'\4 fs'\3 a'\2>1^\markup { \concat { "D" "7" } } \bar "|"
  <d\6 c'\4 f'\3 a'\2>1^\markup { \concat { "D" "m7" } } \bar "|"
  <g\5 d'\4 f'\3 b'\2>1^\markup { \concat { "G" "7" } } \bar "|" \break
  \section \sectionLabel "A" <a\5 e'\4 g'\3 c''\2>1^\markup { \concat { "C" "6" } } \bar "|"
  <a,\6 g\4 c'\3 e'\2>1^\markup { \concat { "C" "6" } } \bar "|"
  <gs\4 d'\3 e'\2 b'\1>1^\markup { \concat { "E" "7" } } \bar "|"
  <b,\6 gs\4 d'\3 e'\2>1^\markup { \concat { "E" "7" } } \bar "|" \break
  <e\5 cs'\3 g'\2 a'\1>1^\markup { \concat { "A" "7" } } \bar "|"
  <a,\6 g\4 cs'\3 e'\2>1^\markup { \concat { "A" "7" } } \bar "|"
  <d\5 c'\3 f'\2 g'\1>1^\markup { \concat { "D" "m7" } } \bar "|"
  <d\5 a\4 c'\3 f'\2>1^\markup { \concat { "D" "m7" } } \bar "|" \break
  \section \sectionLabel "C" <c'\4 f'\3 a'\2 d''\1>1^\markup { \concat { "F" "6" } } \bar "|"
  <c'\4 f'\3 af'\2 d''\1>1^\markup { \concat { "F" "m6" } } \bar "|"
  <e\6 d'\4 g'\3 b'\2>1^\markup { \concat { "E" "m7" } } \bar "|"
  <e\6 cs'\4 g'\3 b'\2>1^\markup { \concat { "A" "7" } } \bar "|" \break
  <a\5 d'\4 f'\3 c''\2>1^\markup { \concat { "D" "m7" } } \bar "|"
  <g\5 f'\3 b'\2 e''\1>1^\markup { \concat { "G" "7" } } \bar "|"
  <a\5 e'\4 g'\3 c''\2>1^\markup { \concat { "C" "6" } } \bar "|"
  r1^\markup { \concat { "D" "m7" } } r1^\markup { \concat { "G" "7" } } \bar "|" \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key c \major \cm }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \cm }
 >>
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
