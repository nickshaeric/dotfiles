-- nicksha's Neovim options configuration

local opt = vim.opt

-- UI
opt.number = true             -- Show absolute line numbers
opt.relativenumber = true     -- Show relative line numbers
opt.cursorline = true         -- Highlight current line
opt.termguicolors = true      -- True color support
opt.background = 'dark'
opt.signcolumn = 'yes'        -- Always show the sign column
opt.wrap = false              -- Disable line wrapping
opt.showmode = false          -- Hide "-- INSERT --" etc.
opt.mouse = 'a'               -- Enable mouse support in all modes
opt.laststatus = 3

-- Editing
opt.tabstop = 4               -- Number of spaces tabs count for
opt.shiftwidth = 4            -- Number of spaces for autoindent
opt.expandtab = true          -- Use spaces instead of tabs
opt.autoindent = true
opt.smartindent = true        -- Smart autoindenting
opt.smarttab = true

-- File handling
opt.fileencoding = 'utf-8'
opt.swapfile = false
opt.backup = false
opt.undofile = true           -- Enable persistent undo

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true          -- Incremental search
opt.hlsearch = false          -- Don't highlight all search matches

-- Split behavior
opt.splitright = true
opt.splitbelow = true

-- Clipboard
opt.clipboard = 'unnamedplus'

-- Performance
opt.timeoutlen = 300          -- Faster mapped sequence timeout

-- Completion
opt.completeopt = { 'menuone', 'noselect' }

-- Scrolling
opt.scrolloff = 8             -- Minimum lines above/below cursor
opt.sidescrolloff = 8
