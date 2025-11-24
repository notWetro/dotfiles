return {
    "kdheepak/lazygit.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>", { desc = "Open LazyGit" })
        vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { desc = "Open LazyGit" })
    end,
}
