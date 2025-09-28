-- nicksha's rose-pine color scheme configuration

return {
    "rose-pine/neovim", -- rose-pine plugin
    name = "rose-pine",
    priority = 1000,

    config = function()
        require("rose-pine").setup({
            disable_background = true,
            disable_float_background = true,
            disable_italics = false,
        })

        vim.cmd("colorscheme rose-pine")
        vim.cmd("hi StatusLine guibg=NONE")
    end,
}

