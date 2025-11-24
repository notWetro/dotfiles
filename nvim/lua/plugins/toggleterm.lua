return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 15,
            open_mapping = [[<c-\>]],
            hide_numbers = true,
            shade_terminals = true,
            direction = 'float', -- 'horizontal' | 'vertical' | 'float' | 'tab'
            float_opts = {
                border = 'curved',
                winblend = 10,
            },
        })

        vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", { desc = "Toggle Terminal" })
        vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], { desc = "Exit Terminal Mode" })
    end,
}
