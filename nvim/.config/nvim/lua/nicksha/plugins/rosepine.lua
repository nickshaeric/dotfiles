-- rosepine.lua
return {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
        require("rose-pine").setup({
            variant = "moon",
            dark_variant = "moon",
            dim_inactive_windows = false,
            disable_background = true,
            styles = {
                bold = true,
                italic = false,
                transparency = true,
            },
            highlight_groups = {
                Normal = { bg = "none" },
                StatusLine = { bg = "#696a90", fg = "#e0def4" },
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

