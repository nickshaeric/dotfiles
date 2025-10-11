-- nicksha@lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Lazy setup
require("lazy").setup({
    require("nicksha.plugins.autopairs"),
    require("nicksha.plugins.harpoon"),
    require("nicksha.plugins.oil"),
    require("nicksha.plugins.rosepine"),
    require("nicksha.plugins.telescope"),
    require("nicksha.plugins.tmuxnavigator"),
    require("nicksha.plugins.treesitter"),
    require("nicksha.plugins.typstpreview"),
    require("nicksha.plugins.vimtex"),
})
