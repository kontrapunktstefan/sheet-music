\version "2.24.0"

% 1. Noten-Variablen (hier schreibt ihr euren Code hinein)
melodie = \relative c'' {
  c4 c g4 g4 | a4 a4 g2 |
}

begleitung = \relative c' {
  e4 e c4 c4 | f4 f4 e2 |
}

% --- BUCH 1: Die Komplette Partitur ---
\book {
  \header {
    title = "Gemeinsames Stück"
    subtitle = "Partitur"
  }
  \score {
    <<
      \new Staff { \displayLilyMusic \melodie }
      \new Staff { \clef bass \begleitung }
    >>
    \layout { }
  }
}

% --- BUCH 2: Nur Stimme 1 ---
\book {
  \header {
    title = "Gemeinsames Stück"
    instrument = "Stimme 1 (Melodie)"
  }
  \score {
    \new Staff \melodie
    \layout { }
  }
}

% --- BUCH 3: Nur Stimme 2 ---
\book {
  \header {
    title = "Gemeinsames Stück"
    instrument = "Stimme 2 (Begleitung)"
  }
  \score {
    \new Staff { \clef bass \begleitung }
    \layout { }
  }
}