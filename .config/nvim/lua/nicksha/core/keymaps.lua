-- nicksha's neovim keybinding configuration

-- Alias
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader shortcuts
map('n', '<leader>w', ':w<CR>', opts)
map('n', '<leader>q', ':q<CR>', opts)
map('n', '<leader>h', ':nohlsearch<CR>', opts)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<leader>fd', function()
    require('telescope.builtin').find_files({ cwd = vim.fn.getcwd() })
end, opts)

-- Buffer
map('n', '<leader>bn', ':bnext<CR>', opts)
map('n', '<leader>bp', ':bnext<CR>', opts)
map('n', '<leader>bd', ':bdelete<CR>', opts)


-- File explorer keymaps
map('n', '<leader>fe', '<cmd>NvimTreeFocus<CR>', opts)
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', opts)

