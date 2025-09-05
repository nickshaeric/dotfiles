-- nicksha's global variable configuration

-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- File explorer style
vim.g.netrw_liststyle = 3

-- Python provider
vim.g.python3_host_prog = vim.fn.expand('~/.venvs/neovim/bin/python')

-- Disable unused providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

