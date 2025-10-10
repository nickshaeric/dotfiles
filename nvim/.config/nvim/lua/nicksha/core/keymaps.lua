-- nicksha@keymaps

-- Alias
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader Shortcuts
map('n', '<leader>w', ':w<CR>', opts)
map('n', '<leader>q', ':q<CR>', opts)
map('n', '<leader>h', ':nohlsearch<CR>', opts)

-- Buffer
map('n', '<leader>bn', ':bnext<CR>', opts)
map('n', '<leader>bp', ':bprevious<CR>', opts)
map('n', '<leader>bd', ':bdelete<CR>', opts)

