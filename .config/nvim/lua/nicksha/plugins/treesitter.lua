-- nicksha@treesitter
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = {
                "c",
                "cpp",
                "go",
                "java",
                "javascript",
                "latex",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "query",
                "typst",
                "typescript",
                "vim",
                "vimdoc",
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            auto_install = true,

            -- List of parsers to ignore installing (or "all")
            ignore_install = {},

            highlight = {
                enable = true,
            },
        }
    end,
}

