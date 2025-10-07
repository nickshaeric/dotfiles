-- nicksha's keymaps

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader Shortcuts
map('n', '<leader>w', ':w<CR>', opts)
map('n', '<leader>q', ':q<CR>', opts)
