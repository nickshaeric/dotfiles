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

-- File Explorer
map('n', '<leader>fe', '<cmd>NvimTreeFocus<CR>', opts)
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', opts)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<leader>fh', ':Telescope help_tags<CR>', opts)
map('n', '<leader>fd', function()
    require('telescope.builtin').find_files({ cwd = vim.fn.getcwd() })
end, opts)
