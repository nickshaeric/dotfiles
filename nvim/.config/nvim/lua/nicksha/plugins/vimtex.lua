return {
    "lervag/vimtex",
    lazy = false,
    init = function()
        vim.g.vimtex_view_method = "skim"
        -- Compiler: latexmk (auto-compiles)
        vim.g.vimtex_compiler_method = "latexmk"
        -- Enable continuous compilation on save
        vim.g.vimtex_compiler_latexmk = {
            build_dir = "",
            callback = 1,
            continuous = 1,
            executable = "latexmk",
            options = {
                "-pdf",
                "-interaction=nonstopmode",
                "-synctex=1",
            },
        }
        -- Auto open viewer after first successful compile
        vim.g.vimtex_view_automatic = 1
        -- Optional: start compilation automatically
        vim.g.vimtex_compiler_start = 1
    end,
}

