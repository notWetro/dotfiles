return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local config = require('nvim-treesitter.configs')
    config.setup({
      ensure_installed = {'lua', 'javascript', 'dart', 'python', 'c', 'cpp', 'java'},
      highlight = { enable = ture },
      indent = { enable = ture },
    })

  end
}
