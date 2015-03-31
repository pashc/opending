# OpenDing

OpenDing ist eine quelloffene Musiksammlung in Latex. Das Einbinden der Packete `guitar` und `guitarchordschema` ermöglicht die Darstellung von Gitarren Akkorden über den Liedertexten und eine schematische Darstellung der Gitarrengriffe. 

## Struktur

###/root
	
	*/songs: Ordner mit enthaltenen Künstlern
	*OpenDing.tex*: Oberste Tex-Datei
	*Makefile*: Makefile zum Kompilieren

###/root/songs
	
	*/TEMPLATE: Template Ordner für Titel und Künstler
	
###/root/songs/TEMPLATE
	
	*artistTemplate.tex*: bindet in alphabetischer Reihenfolge die Titel des jeweiligen Künstlers ein
	*titleTemplate.tex*: bindet `guitar` Umgebung für die Liedertexte ein

## How To

### Compile

In der Konsole in das Hauptverzeichnis wechseln und mit `make <befehl>` das Makefile ausführen.

Befehle:
	
	* compile: kompiliert die OpenDing.tex datei
	* soft-clean: entfernt alle unnötigen `pdflatex` Kompilierdateien
	* clean: soft-clean + entfernen der PDF Datei
	* make all: compile + soft-clean 

### Add Song
Hinzufügen eines Künstlers:

	1. */songs/TEMPLATE* kopieren und in den Namen des Künstlers umbenennen. Bsp.: */songs/jointVenture*
	2. *arstistTemplate.tex* in den selben Namen umbenennen. Bsp.: */jointVenture/jointVenture.tex* 
	3. in der Datei den Platzhalter `ARTISTS_NAME` in den Namen des Künstlers ändern
	4. in der Datei `/OpenDing.tex` mit dem Befehl `\inputSongs{ARTIST_NAME}` die Titel des Künstlers hinzufügen  

Hinzufügen eines Titels:

	1. In dem Ordner des Künstlers die Datei *titelTemplate.tex* in den entsprechend Titel umbenennen. Bsp.: */jointVenture/politikerBeimFicken.tex*
	2. In dieser Datei den Platzhalter `TITEL` gegen den Namen des Titels ersetzten und wie im Beispiel innerhalb der `guitar` Umgebung den Text aufschreiben.
	3. In der Künstler Datei den neuen Titel mit dem Befehl `\input{pfadZurDatei}` einbinden.  


