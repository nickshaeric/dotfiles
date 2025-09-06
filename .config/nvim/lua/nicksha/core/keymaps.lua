-- nicksha's neovim keybinding configuration

-- Alias for setting keymaps
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader shortcuts
map('n', '<leader>w', ':w<CR>', opts)                   -- Save current buffer
map('n', '<leader>q', ':q<CR>', opts)                   -- Quit current window
map('n', '<leader>h', ':nohlsearch<CR>', opts)          -- Clear search highlights

-- Window navigation
map('n', '<C-h>', '<C-w>h', opts)                       -- Move to left window
map('n', '<C-j>', '<C-w>j', opts)                       -- Move to window below
map('n', '<C-k>', '<C-w>k', opts)                       -- Move to window above
map('n', '<C-l>', '<C-w>l', opts)                       -- Move to right window

-- Window resizing
map('n', '<C-Up>', ':resize -2<CR>', opts)              -- Decrease window height
map('n', '<C-Down>', ':resize +2<CR>', opts)            -- Increase window height
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)   -- Decrease window width
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)  -- Increase window width

-- Buffer navigation
map('n', '<Tab>', ':bnext<CR>', opts)                   -- Next buffer
map('n', '<S-Tab>', ':bprevious<CR>', opts)             -- Previous buffer


-- File explorer keymaps
map('n', '<leader>fe', '<cmd>NvimTreeFocus<CR>', opts)
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', opts)

-- Telescope keybindings
map('n', '<leader>ff', ':Telescope find_files<CR>', opts) -- Find files
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)  -- Search text in files
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)    -- List open buffers
map('n', '<leader>fh', ':Telescope help_tags<CR>', opts)  -- Search help tags

-- Buffers
map('n', '<S-bd>', ':bdelete<CR>', opts)                  -- delete buffer
map('n', '<S-l>', ':BufferLineCycleNext<CR>', opts)       -- Shift + L: next buffer
map('n', '<S-h>', ':BufferLineCyclePrev<CR>', opts)       -- Shift + H: previous buffer
