-- nicksha's vague color scheme configuration

return {
  "vague2k/vague.nvim", -- vague plugin
  name = "vague",
  priority = 1000, -- Load before other UI plugins

  config = function()
    require("vague").setup({
      transparent = true,
    })

    vim.cmd("colorscheme vague")
    vim.cmd("hi StatusLine guibg=NONE") -- remove background from statusline
  end,
}
