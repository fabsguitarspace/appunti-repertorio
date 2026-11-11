% Generato da scripts/generate_standards.py: modificare il catalogo o il generatore.
\version "2.26.0"
\language "english"
\header { title = "Autumn Leaves" subtitle = "Accompagnamento, livello 1" tagline = ##f }
\paper { page-breaking = #ly:one-page-breaking line-width = 160\mm paper-height = 396\mm ragged-right = ##f ragged-last-bottom = ##t }
comp = \absolute { \time 4/4
  \sectionLabel "A" <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" } } |
  <f,\6 ef\4 a\3>1^\markup { \concat { "F" "7" } } |
  <bf,\6 a\4 d'\3>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  <ef\5 g\4 d'\3>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } | \break
  <a,\6 g\4 c'\3 ef'\2>1^\markup { \concat { "A" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } |
  <d\5 fs\4 c'\3>1^\markup { \concat { "D" "7" } } |
  <g,\6 e\4 bf\3>1^\markup { \concat { "G" "m6" } } |
  <g,\6 e\4 bf\3>1^\markup { \concat { "G" "m6" } } | \break
  \section \sectionLabel "A" <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" } } |
  <f,\6 ef\4 a\3>1^\markup { \concat { "F" "7" } } |
  <bf,\6 a\4 d'\3>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  <ef\5 g\4 d'\3>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } | \break
  <a,\6 g\4 c'\3 ef'\2>1^\markup { \concat { "A" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } |
  <d\5 fs\4 c'\3>1^\markup { \concat { "D" "7" } } |
  <g,\6 e\4 bf\3>1^\markup { \concat { "G" "m6" } } |
  <g,\6 e\4 bf\3>1^\markup { \concat { "G" "m6" } } | \break
  \section \sectionLabel "B" <a,\6 g\4 c'\3 ef'\2>1^\markup { \concat { "A" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } |
  <d\5 fs\4 c'\3>1^\markup { \concat { "D" "7" } } |
  <g,\6 e\4 bf\3>1^\markup { \concat { "G" "m6" } } |
  <g,\6 e\4 bf\3>1^\markup { \concat { "G" "m6" } } | \break
  <c\5 ef\4 bf\3>1^\markup { \concat { "C" "m7" } } |
  <f,\6 ef\4 a\3>1^\markup { \concat { "F" "7" } } |
  <bf,\6 a\4 d'\3>1^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  <ef\5 g\4 d'\3>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } | \break
  \section \sectionLabel "C" <a,\6 g\4 c'\3 ef'\2>1^\markup { \concat { "A" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } |
  <d\5 fs\4 c'\3>1^\markup { \concat { "D" "7" } } |
  <g,\6 f\4 bf\3>2^\markup { \concat { "G" "m7" } } <c\5 e\4 bf\3>2^\markup { \concat { "C" "7" } } |
  <f,\6 ef\4 af\3>2^\markup { \concat { "F" "m7" } } <bf,\6 af\4 d'\3>2^\markup { \concat { "B" \raise #0.7 \fontsize #-3 \flat "7" } } | \break
  <ef\5 g\4 d'\3>1^\markup { \concat { "E" \raise #0.7 \fontsize #-3 \flat "maj7" } } |
  <a,\6 g\4 c'\3 ef'\2>2^\markup { \concat { "A" "m7" \raise #0.7 \fontsize #-3 \flat "5" } } <d\5 fs\4 c'\3>2^\markup { \concat { "D" "7" } } |
  <g,\6 e\4 bf\3>1^\markup { \concat { "G" "m6" } } |
  <g,\6 e\4 bf\3>1^\markup { \concat { "G" "m6" } } | \bar "|." }
\score {
 \new StaffGroup <<
  \new Staff { \clef "treble_8" \key g \minor \comp }
  \new TabStaff { \set TabStaff.stringTunings = #guitar-tuning \set TabStaff.restrainOpenStrings = ##t
   \omit TextScript \comp }
 >>
 \layout { indent = 0 system-count = #8
  \context { \Voice \override TextScript.staff-padding = #2 }
  \context { \Score \omit StringNumber } }
}
\score { \new Staff { \set Staff.midiInstrument = "acoustic grand" \tempo 4 = 60 c'''4\p c''' c''' c''' \mf \comp } \midi { } }
