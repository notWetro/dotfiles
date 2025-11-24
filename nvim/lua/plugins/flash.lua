return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    -- Suchoptionen
    search = {
      multi_window = true,    -- Über mehrere Fenster suchen
      forward = true,         -- Vorwärts suchen
      wrap = true,           -- Am Ende wrappen
    },
    
    -- Label-Optionen
    label = {
      uppercase = false,      -- Kleinbuchstaben für Labels
      exclude = "hjkliardc",  -- Diese Buchstaben nicht als Labels verwenden
    },
    
    -- Modi konfigurieren
    modes = {
      search = {
        enabled = true,       -- Integration in normale Suche
      },
      char = {
        enabled = true,
        jump_labels = true,
      },
    },
  },
  
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash Jump" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
  }
}

