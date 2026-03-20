Hier sind die wichtigsten Besonderheiten dieser Config:

   Leader Key: , (Komma)

   Wichtigste Shortcuts:

   Fuzzy Finding (mit fzf-lua):

     - ,ff - Dateien suchen
     - ,fg - Im ganzen Projekt Text suchen (grep)
     - ,fb - Zwischen Buffern wechseln
     - ,fh - Hilfe durchsuchen
     - ,ft - Tags durchsuchen

   File Management:

     - ,w - Speichern
     - ,q - Fenster schließen
     - ,Q - Alles schließen und Nvim beenden
     - \d - Buffer schließen
     - {zahl}gb - Zu Buffer Nummer {zahl} springen (z.B. 2gb)

   Git (via fugitive):

     - ,gs - Git Status
     - ,gw - Git add (aktuelles File)
     - ,gc - Git commit
     - ,gpl - Git pull
     - ,gpu - Git push
     - ,gbd - Branch löschen
     - ,gbn - Neuen Branch erstellen
     - ,gl - Permalink für aktuelle Zeile(n) holen

   Editing:

     - jk - Im Insert Mode: zurück zu Normal Mode
     - Alt-j / Alt-k - Zeilen rauf/runter bewegen
     - ,<Space> - Trailing Whitespaces entfernen
     - iB - Ganzen Buffer selektieren (mit Operator: viB, yiB, diB etc.)

   Config:

     - ,ev - Nvim Config bearbeiten
     - ,sv - Nvim Config neu laden

   Sonstiges:

     - Space-t - Tag-Fenster togglen (Vista)
     - F9 - Code kompilieren & ausführen (Python, C++, LaTeX, Lua)
     - F11 - Rechtschreibprüfung togglen
     - \x - Quickfix/Location Window schließen

   Which-Key: Drücke , und warte kurz - es erscheint ein Popup mit allen verfügbaren Shortcuts!

   Custom Commands:

     - :Redir {cmd} - Command-Output in Tab anzeigen
     - :JSONFormat - JSON formatieren
     - :CopyPath relative - Dateipfad kopieren
