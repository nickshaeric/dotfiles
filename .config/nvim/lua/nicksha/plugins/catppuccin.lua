-- nicksha's catppuccin color scheme configuration

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- Load before other UI plugins

  config = function()
    require("catppuccin").setup({
      flavour = "frappe",
      transparent_background = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        telescope = true,
      },
    })
    vim.cmd("colorscheme catppuccin")
  end,
}

