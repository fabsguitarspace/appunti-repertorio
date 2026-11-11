% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "All of Me" subtitle = "Accompagnamento, livello 1" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 396\mm ragged-right = ##f ragged-last-bottom = ##t }
comp = \absolute { \time 4/4
  \sectionLabel "A" <c\5 e\4 a\3>1^\markup { \concat { "C" "6" } } |
  <c\5 e\4 a\3>1^\markup { \concat { "C" "6" } } |
  <e\5 gs\4 d'\3>1^\markup { \concat { "E" "7" } } |
  <e\5 gs\4 d'\3>1^\markup { \concat { "E" "7" } } | \break
  <a,\6 g\4 cs'\3>1^\markup { \concat { "A" "7" } } |
  <a,\6 g\4 cs'\3>1^\markup { \concat { "A" "7" } } |
  <d\5 f\4 c'\3>1^\markup { \concat { "D" "m7" } } |
  <d\5 f\4 c'\3>1^\markup { \concat { "D" "m7" } } | \break
  \section \sectionLabel "B" <e\5 gs\4 d'\3>1^\markup { \concat { "E" "7" } } |
  <e\5 gs\4 d'\3>1^\markup { \concat { "E" "7" } } |
  <a,\6 g\4 c'\3>1^\markup { \concat { "A" "m7" } } |
  <a,\6 g\4 c'\3>1^\markup { \concat { "A" "m7" } } | \break
  <d\5 fs\4 c'\3>1^\markup { \concat { "D" "7" } } |
  <d\5 fs\4 c'\3>1^\markup { \concat { "D" "7" } } |
  <d\5 f\4 c'\3>1^\markup { \concat { "D" "m7" } } |
  <g,\6 f\4 b\3>1^\markup { \concat { "G" "7" } } | \break
  \section \sectionLabel "A" <c\5 e\4 a\3>1^\markup { \concat { "C" "6" } } |
  <c\5 e\4 a\3>1^\markup { \concat { "C" "6" } } |
  <e\5 gs\4 d'\3>1^\markup { \concat { "E" "7" } } |
  <e\5 gs\4 d'\3>1^\markup { \concat { "E" "7" } } | \break
  <a,\6 g\4 cs'\3>1^\markup { \concat { "A" "7" } } |
  <a,\6 g\4 cs'\3>1^\markup { \concat { "A" "7" } } |
  <d\5 f\4 c'\3>1^\markup { \concat { "D" "m7" } } |
  <d\5 f\4 c'\3>1^\markup { \concat { "D" "m7" } } | \break
  \section \sectionLabel "C" <f\5 a\4 d'\3>1^\markup { \concat { "F" "6" } } |
  <f\5 af\4 d'\3>1^\markup { \concat { "F" "m6" } } |
  <e\5 g\4 d'\3>1^\markup { \concat { "E" "m7" } } |
  <a,\6 g\4 cs'\3>1^\markup { \concat { "A" "7" } } | \break
  <d\5 f\4 c'\3>1^\markup { \concat { "D" "m7" } } |
  <g,\6 f\4 b\3>1^\markup { \concat { "G" "7" } } |
  <c\5 e\4 a\3>1^\markup { \concat { "C" "6" } } |
  <d\5 f\4 c'\3>2^\markup { \concat { "D" "m7" } } <g,\6 f\4 b\3>2^\markup { \concat { "G" "7" } } | \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key c \major \comp }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \comp }
 >>
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
\score { \new Staff { \set Staff.midiInstrument = "acoustic grand" \tempo 4 = 60 c'''4\p c''' c''' c''' \mf \comp } \midi { } }
