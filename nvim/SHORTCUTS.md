# Neovim Shortcuts Übersicht

## Leader Key
Der Leader Key ist `,` (Komma)

In Vim/Neovim Notation:

     - <C-...> = Control/Strg
     - <A-...> = Alt/Option (auf Mac)
     - <M-...> = Meta (auch Alt, ältere Notation)
     - <S-...> = Shift
     - <D-...> = Command (nur auf Mac in GUI)

---

## Grundlegende Navigation & Bearbeitung

### Cursor Bewegung
- `H` - Zum Zeilenanfang
- `L` - Zum Zeilenende
- `j` / `k` - Auf/Ab (physische Zeilen)
- `^` / `0` - Zeilenanfang
- `$` - Zeilenende (Visual: `g_`)

### Fenster Navigation
- `<Left>` - Fenster links
- `<Right>` - Fenster rechts
- `<Up>` - Fenster oben
- `<Down>` - Fenster unten

### Buffer Management
- `gb` - Gehe zu Buffer (vorwärts)
- `gB` - Gehe zu Buffer (rückwärts)
- `<leader>w` - Speichern
- `<leader>q` - Speichern & Schließen
- `<leader>Q` - Nvim beenden (ohne speichern)
- `\d` - Aktuellen Buffer löschen
- `\D` - Alle anderen Buffer löschen
- `<space>bp` - BufferLine: Buffer auswählen

### Text Manipulation
- `<leader>p` - Unter aktueller Zeile einfügen
- `<leader>P` - Über aktueller Zeile einfügen
- `<leader>y` - Gesamten Buffer kopieren
- `<leader>v` - Letzten eingefügten Text auswählen
- `c` / `C` / `cc` - Ändern (ohne Register)
- `p` / `P` (Visual) - Einfügen ohne Register zu kontaminieren
- `J` / `gJ` - Zeilen verbinden (Cursor bleibt)
- `<A-j>` - Zeile nach unten verschieben
- `<A-k>` - Zeile nach oben verschieben
- `<A-j>` / `<A-k>` (Visual) - Selection bewegen

### Visual Mode
- `<` / `>` - Einrückung (bleibt in Visual Mode)

---

## Command Mode
- `;` - Command Mode öffnen (statt `:`)

---

## Insert Mode

### Navigation
- `<C-A>` - Zum Zeilenanfang
- `<C-E>` - Zum Zeilenende
- `<C-D>` - Zeichen rechts löschen

### Text Manipulation
- `<C-u>` - Wort unter Cursor in UPPERCASE
- `<C-t>` - Wort zu Title Case
- `<A-;>` - Semikolon am Zeilenende einfügen

---

## Config Management
- `<leader>ev` - init.lua öffnen
- `<leader>sv` - Config neu laden
- `<leader>cd` - Working Directory ändern

---

## Git (Fugitive)
- `<leader>gs` - Git Status
- `<leader>gw` - Git Add (aktuelles File)
- `<leader>gc` - Git Commit
- `<leader>gpl` - Git Pull
- `<leader>gpu` - Git Push
- `<leader>gb` (Visual) - Git Blame für Selection
- `<leader>gbn` - Branch Name
- `<leader>gf` - Git Fetch
- `<leader>gbd` - Branch löschen
- `<leader>gl` - Git Linker (Link zu Zeile erstellen)
- `<leader>gbr` - Browse Repository

---

## Fuzzy Finding (FzfLua)
- `<leader>ff` - Dateien suchen
- `<leader>fg` - Live Grep (Text in Dateien)
- `<leader>ft` - Buffer Tags suchen
- `<leader>fb` - Buffers durchsuchen
- `<leader>fh` - Help Tags
- `<leader>fo` - Old Files (History)

---

## File Explorer (NvimTree)
- `<space>s` - NvimTree Toggle

### Im NvimTree
- `q` - Schließen
- `e` - Neue Datei

---

## LSP & Code Navigation

### Navigation
- `gd` - Go to Definition
- `<C-]>` - Go to Definition (alternative)
- `K` - Hover Documentation
- `<C-k>` - Signature Help

### Refactoring
- `<space>rn` - Rename Variable
- `<space>ca` - Code Actions

### Workspace
- `<space>wa` - Add Workspace Folder
- `<space>wr` - Remove Workspace Folder
- `<space>wl` - List Workspace Folders

### Glance
- `<space>gd` - Definitionen anzeigen
- `<space>gr` - Referenzen anzeigen
- `<space>gi` - Implementierungen anzeigen

### Diagnostics
- `<space>qw` - Window Diagnostics zu Quickfix
- `<space>qb` - Buffer Diagnostics zu Quickfix

### Code Info
- `<leader>K` - Hover Info (UFO)

---

## Folding (UFO)
- `zR` - Alle Folds öffnen
- `zM` - Alle Folds schließen
- `zr` - Folds öffnen (außer bestimmte Arten)

---

## Suche & Hop
- `f` - Hop (Quick Jump)
- `n` / `N` - Nächste/Vorherige Suche (mit hlslens)
- `*` / `#` - Wort unter Cursor suchen (mit hlslens)

---

## Text Objects

### Custom Text Objects
- `iu` - URL Text Object
- `iB` - Buffer Text Object (gesamter Buffer)
- `af` / `if` - Function Text Object (Treesitter)
- `ac` / `ic` - Class Text Object (Treesitter)
- `as` - Statement Text Object (Treesitter)

---

## Yank History (Yanky)
- `p` / `P` - Paste (Yanky)
- `[y` - Vorheriger Yank
- `]y` - Nächster Yank

---

## Sonstiges
- `<F11>` - Rechtschreibprüfung Toggle
- `<leader><space>` - Trailing Whitespace entfernen
- `<leader>cl` - Cursor Column Toggle
- `<leader>cb` - Cursor Position blinken lassen
- `\x` - Quickfix & Location List schließen
- `<Esc>` - Terminal Mode verlassen / Floating Window schließen
- `Q` - Makro aufzeichnen (statt `q`)

---

## Hinweise

- **Leader Key** = `,` (Komma)
- **Space** wird auch für einige LSP/Workspace Commands genutzt
- **Alt** = `<A-...>` (z.B. `<A-j>`)
- **Control** = `<C-...>` (z.B. `<C-u>`)
- Viele Mappings haben descriptions - nutze `:map <key>` um Details zu sehen

---

*Generiert am: 2026-03-06*
*Config Location: /Users/niklas/.config/nvim*
