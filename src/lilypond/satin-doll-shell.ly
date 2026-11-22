% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Satin Doll" subtitle = "Accompagnamento con shell" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 396\mm ragged-right = ##f ragged-last-bottom = ##t }
comp = \absolute { \time 4/4
  \sectionLabel "A" <d\5 f\4 c'\3>2^\markup { \concat { "D" "m7" } } <g,\6 f\4 b\3>2^\markup { \concat { "G" "7" } } |
  <d\5 f\4 c'\3>2^\markup { \concat { "D" "m7" } } <g,\6 f\4 b\3>2^\markup { \concat { "G" "7" } } |
  <e\5 g\4 d'\3>2^\markup { \concat { "E" "m7" } } <a,\6 g\4 cs'\3>2^\markup { \concat { "A" "7" } } |
  <e\5 g\4 d'\3>2^\markup { \concat { "E" "m7" } } <a,\6 g\4 cs'\3>2^\markup { \concat { "A" "7" } } | \break
  <a,\6 g\4 c'\3>2^\markup { \concat { "A" "m7" } } <d\5 fs\4 c'\3>2^\markup { \concat { "D" "7" } } |
  <af,\6 gf\4 cf'\3>2^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "m7" } } <df\5 f\4 cf'\3>2^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <c\5 e\4 bf\3>2^\markup { \concat { "C" "7" } } <b,\5 ds\4 a\3>2^\markup { \concat { "B" "7" } } |
  <bf,\6 af\4 d'\3>2^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } <a,\6 g\4 cs'\3>2^\markup { \concat { "A" "7" } } | \break
  \section \sectionLabel "A" <d\5 f\4 c'\3>2^\markup { \concat { "D" "m7" } } <g,\6 f\4 b\3>2^\markup { \concat { "G" "7" } } |
  <d\5 f\4 c'\3>2^\markup { \concat { "D" "m7" } } <g,\6 f\4 b\3>2^\markup { \concat { "G" "7" } } |
  <e\5 g\4 d'\3>2^\markup { \concat { "E" "m7" } } <a,\6 g\4 cs'\3>2^\markup { \concat { "A" "7" } } |
  <e\5 g\4 d'\3>2^\markup { \concat { "E" "m7" } } <a,\6 g\4 cs'\3>2^\markup { \concat { "A" "7" } } | \break
  <a,\6 g\4 c'\3>2^\markup { \concat { "A" "m7" } } <d\5 fs\4 c'\3>2^\markup { \concat { "D" "7" } } |
  <af,\6 gf\4 cf'\3>2^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "m7" } } <df\5 f\4 cf'\3>2^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <c\5 e\4 b\3>1^\markup { \concat { "C" "maj7" } } |
  <c\5 e\4 b\3>1^\markup { \concat { "C" "maj7" } } | \break
  \section \sectionLabel "B" <g,\6 f\4 bf\3>2^\markup { \concat { "G" "m7" } } <c\5 e\4 bf\3>2^\markup { \concat { "C" "7" } } |
  <g,\6 f\4 bf\3>2^\markup { \concat { "G" "m7" } } <c\5 e\4 bf\3>2^\markup { \concat { "C" "7" } } |
  <f,\6 e\4 a\3>1^\markup { \concat { "F" "maj7" } } |
  <f,\6 e\4 a\3>1^\markup { \concat { "F" "maj7" } } | \break
  <a,\6 g\4 c'\3>2^\markup { \concat { "A" "m7" } } <d\5 fs\4 c'\3>2^\markup { \concat { "D" "7" } } |
  <a,\6 g\4 c'\3>2^\markup { \concat { "A" "m7" } } <d\5 fs\4 c'\3>2^\markup { \concat { "D" "7" } } |
  <g,\6 f\4 b\3>1^\markup { \concat { "G" "7" } } |
  <a,\6 g\4 cs'\3>1^\markup { \concat { "A" "7" } } | \break
  \section \sectionLabel "A" <d\5 f\4 c'\3>2^\markup { \concat { "D" "m7" } } <g,\6 f\4 b\3>2^\markup { \concat { "G" "7" } } |
  <d\5 f\4 c'\3>2^\markup { \concat { "D" "m7" } } <g,\6 f\4 b\3>2^\markup { \concat { "G" "7" } } |
  <e\5 g\4 d'\3>2^\markup { \concat { "E" "m7" } } <a,\6 g\4 cs'\3>2^\markup { \concat { "A" "7" } } |
  <e\5 g\4 d'\3>2^\markup { \concat { "E" "m7" } } <a,\6 g\4 cs'\3>2^\markup { \concat { "A" "7" } } | \break
  <a,\6 g\4 c'\3>2^\markup { \concat { "A" "m7" } } <d\5 fs\4 c'\3>2^\markup { \concat { "D" "7" } } |
  <af,\6 gf\4 cf'\3>2^\markup { \concat { "A" \raise #0.7 \fontsize #-3 \flat "m7" } } <df\5 f\4 cf'\3>2^\markup { \concat { "D" \raise #0.7 \fontsize #-3 \flat "7" } } |
  <c\5 e\4 bf\3>1^\markup { \concat { "C" "7" } } |
  <a,\6 g\4 cs'\3>1^\markup { \concat { "A" "7" } } | \bar "|." }
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
