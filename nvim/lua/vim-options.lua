-- use two spaces for tab
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- config of leader key
vim.g.mapleader = " "

-- navigation shortcut
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
