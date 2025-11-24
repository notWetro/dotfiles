return {
    "andythigpen/nvim-coverage",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("coverage").setup({
            auto_reload = true,
            auto_reload_watch_dirs = { "." },

            signs = {
                covered = { hl = "CoverageCovered", text = "▎" },
                uncovered = { hl = "CoverageUncovered", text = "▎" },
                partial = { hl = "CoveragePartial", text = "▎" },
            },

            summary = {
                min_coverage = 75.0,
                width_percentage = 0.7,
            },

            highlights = {
                covered = { fg = "#a6e3a1" }, -- Grün
                uncovered = { fg = "#f38ba8" }, -- Rot
                partial = { fg = "#fab387" }, -- Orange
            },

            lang = {
                c = {
                    coverage_file = { "coverage.info", "coverage.xml", "lcov.info" },
                },
                cpp = {
                    coverage_file = { "coverage.info", "coverage.xml", "lcov.info" },
                },
                javascript = {
                    coverage_file = "coverage/lcov.info",
                },
                typescript = {
                    coverage_file = "coverage/lcov.info",
                },
                python = {
                    coverage_file = "coverage.xml",
                },
            },
        })

        -- Standard Coverage Keymaps
        vim.keymap.set("n", "<leader>ct", ":Coverage<CR>", { desc = "Toggle Coverage" })
        vim.keymap.set("n", "<leader>cs", ":CoverageSummary<CR>", { desc = "Coverage Summary" })
        vim.keymap.set("n", "<leader>cl", ":CoverageLoad<CR>", { desc = "Load Coverage" })
        vim.keymap.set("n", "<leader>cc", ":CoverageClear<CR>", { desc = "Clear Coverage" })

        -- Automatisierte C/C++ Coverage Workflows
        vim.keymap.set("n", "<leader>cg", function()
            -- Führe make coverage aus und lade dann Coverage
            vim.fn.system("make coverage")
            vim.cmd("CoverageLoad")
            print("Coverage generated and loaded!")
        end, { desc = "Generate & Load C/C++ Coverage" })

        vim.keymap.set("n", "<leader>cr", function()
            -- Führe Tests aus und generiere Coverage
            vim.fn.system("make test-coverage")
            vim.cmd("CoverageLoad")
            vim.cmd("CoverageSummary")
        end, { desc = "Run Tests & Show Coverage" })

        -- Watch für automatisches Neuladen
        vim.keymap.set("n", "<leader>cw", function()
            require("coverage").load(true)
            print("Coverage auto-reload enabled")
        end, { desc = "Enable Coverage Auto-reload" })
    end,
}
