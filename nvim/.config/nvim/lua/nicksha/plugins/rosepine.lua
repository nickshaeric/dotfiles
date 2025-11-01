-- rosepine.lua
return {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
        require("rose-pine").setup({
            variant = "main",
            dark_variant = "main",
            dim_inactive_windows = false,
            disable_background = true,
            styles = {
                bold = true,
                italic = false,
                transparency = true,
            },
            highlight_groups = {
                Normal = { bg = "none" },
            },
            enable = {
                terminal = false,
                legacy_highlights = false,
                migrations = true,
            },
        })
        vim.cmd("colorscheme rose-pine")
    end,
}

