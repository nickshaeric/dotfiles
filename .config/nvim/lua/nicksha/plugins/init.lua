-- nicksha's Neovim plugin configuration

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- Import plugins
    require('nicksha.plugins.autopairs'),
    require('nicksha.plugins.catppuccin'),
    require('nicksha.plugins.dressing'),
    require('nicksha.plugins.plenary'),
    require('nicksha.plugins.tmux-navigator'),
    require('nicksha.plugins.lualine'),
    require('nicksha.plugins.nvim-tree'),
    require('nicksha.plugins.telescope'),
    require('nicksha.plugins.telescope-fzf-native'),
    require('nicksha.plugins.mini-icons'),
    require('nicksha.plugins.treesitter'),
    require('nicksha.plugins.toggleterm'),
    require('nicksha.plugins.noice'),
    require('nicksha.plugins.gitsigns'),
    require('nicksha.plugins.indent-blankline'),
    require('nicksha.plugins.harpoon'),
    require('nicksha.plugins.mason'),
    require('nicksha.plugins.typst-preview'),
  },
})

