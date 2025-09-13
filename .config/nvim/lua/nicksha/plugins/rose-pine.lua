-- nicksha's rose-pine color scheme configuration

return {
  "rose-pine/neovim", -- rose-pine plugin
  name = "rose-pine",
  priority = 1000, -- Load before other UI plugins

  config = function()
    require("rose-pine").setup({
      disable_background = true, -- makes background transparent
      disable_float_background = true,
      disable_italics = false, -- optional, set true if you don’t want italics
    })

    vim.cmd("colorscheme rose-pine") -- load the colorscheme
    vim.cmd("hi StatusLine guibg=NONE") -- remove background from statusline
  end,
}

