-- colorscheme
-- https://github.com/deparr/tairiki.nvim <- for more config
return {
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
}

-- alternative colorscheme
-- return {
--   'catppuccin/nvim'
--   lazy = false,
--   name = 'catppuccin',
--   priority = 1000,
--   config = function()
--     vim.cmd.colorscheme 'catppuccin'
--   end
-- }
