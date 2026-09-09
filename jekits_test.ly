\version "2.24.3"
% Alles was nach "%" ist ein Kommentar, wird vom Programm ignoriert. Bitte aber nicht die Prozent-Zeichen löschen, sonst gibt es Fehlermeldungen!!!
% wenn ihr ein schnelleres oder langsameres Tempo haben wollt, die 90 in der folgenden Zeile durch ein anderes Tempo erstetzen. Aber: auf keinen (!!!!!) Fall die geschweifte Klammer löschen!
metronom = { \tempo 4=90 }
\language"deutsch" % deutsche Notennamen: also h statt b eingeben
tonart_takt = {
  \key g \major
  \time  4/4 
}

floeteI = {
 \set Staff.midiInstrument = #"flute"
 \set Staff.instrumentName = "Flöte 1"
\tonart_takt % in die folgende Zeile Noten eingeben
h'4 a' g' a' 
h'4 h' h'2
a'4 a' a'2
h'4 d'' d''2
}
floeteII = { 
 \set Staff.midiInstrument = #"flute"
 \set Staff.instrumentName = "Flöte 2"
\tonart_takt % in die folgende Zeile Noten eingeben
c'1
}

gitarre = {
\set Staff.midiInstrument = #"acoustic guitar (steel)"
 \set Staff.instrumentName = "Gitarre"
\tonart_takt
\clef "treble_8"   %  Achtung: oktavierender Schlüssel: wenn im Notenbild das klingende eingestrichene g erscheinen soll, muss es als kleines g also einfach als "g" eingegeben werden.
%die tiefsten Saiten sind als a, und e, einzugeben 
% in die folgende Zeile Noten eingeben!
a,1
}

keyboard = {
 \set Staff.instrumentName = "Keyboard"
\tonart_takt % in die folgende Zeile Noten eingeben
g''1
}
\book {
  \header {  
  title = "Test-Partitur"
  composer ="diverse Autoren"
  }
  
\bookpart {
% Partitur: bitte hier nichts  ändern, sonst gibts Ärger!!!!!!!
\score {  
  <<
  \new GrandStaff <<
	\new Staff {    \floeteI }
	\new Staff {   \floeteII }
  					>>
	\new Staff {\keyboard} 
	\new Staff {  \gitarre }
  >> 
  \layout {  }
  \midi { \tempo 4= 90 }
} % ende score
 }
\bookpart { %Floetenstimmen
\header{instrument="Flöten"}
\score { 
  \new GrandStaff <<
	\new Staff {   \floeteI }
	\new Staff {   \floeteII }
  					>>
	\layout { }
  \midi {\metronom }
        
} 
 } 
\bookpart { %Keybordstimmen
\header{instrument="Keyboard"}
\score {
\new Staff {\keyboard}
	\layout { }
  \midi {\metronom }
}
}

\bookpart { %Gitarrenstimmen
\header{instrument="Gitarre"}
\score {
\new Staff { \set Staff.midiInstrument = #"acoustic guitar (steel)"  \gitarre}
	\layout { }
  \midi {\metronom }
}
}


  } %ende book
