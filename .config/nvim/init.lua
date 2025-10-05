-- nicksha's neovim configuration

-- Globals
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- File Explorer
vim.g.netrw_liststyle = 3

-- Python Provider
vim.g.python3_host_prog = vim.fn.expand('~/.venvs/neovim/bin/python')

-- Disable Providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Options
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.signcolumn = 'yes'
vim.o.wrap = false
vim.o.showmode = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.fileencoding = 'utf-8'
vim.o.swapfile = false
vim.o.backup = false
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.incsearch = true
vim.o.hlsearch = false
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.o.guicursor = ''

-- Clipboard
vim.o.clipboard = 'unnamedplus'

-- Keymaps

-- Plugins
vim.pack.add({
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
    { src = "https://github.com/chomosuke/typst-preview.nvim" },
    { src = "https://github.com/vague2k/vague.nvim" },
})

require 'vague'.setup({ transparent = true })

vim.cmd('colorscheme vague')
vim.cmd(':hi statusline guibg=NONE')

