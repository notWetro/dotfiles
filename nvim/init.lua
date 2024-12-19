-- use two spaces for tab
vim.cmd('set expandtab')
vim.cmd('set tabstop=2')
vim.cmd('set softtabstop=2')
vim.cmd('set shiftwidth=2')

-- config of leader key
vim.g.mapleader = ' '

-- navigation shortcuts
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
-- leader configured at the beginnig
vim.g.maplocalleader = "\\"

-- plugins
local plugins = {
  {
    'deparr/tairiki.nvim',
    lazy = false,
    priority = 1000, -- only necessary if you use tairiki as default theme
    config = function()
      require('tairiki').setup {
        -- optional configuration here
        style = 'dark',
        transparent = true,
      }
      require('tairiki').load() -- only necessary to use as default theme, has same behavior as ':colorscheme tairiki'
    end,
  },
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
}
local opts = {}

-- Setup lazy.nvim and other plugins
require("lazy").setup(plugins, opts)
local config = require('nvim-treesitter.configs')
config.setup({
  ensure_installed = {'lua', 'javascript', 'dart', 'python', 'c', 'java'},
  highlight = { enable = ture },
  indent = { enable = ture },
})

-- colorscheme
-- https://github.com/deparr/tairiki.nvim <- for more config
require('tairiki').load()
-- require("catppuccin").setup()
-- vim.cmd.colorscheme "catppuccin"
