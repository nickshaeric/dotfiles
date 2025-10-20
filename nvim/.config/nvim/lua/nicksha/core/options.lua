-- nicksha@options

local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true
opt.background = "dark"
opt.showmode = false
opt.wrap = false
opt.guicursor = ""
opt.signcolumn = "yes"
opt.colorcolumn = "80"

-- Editing
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true

-- File Handling
opt.fileencoding = "utf-8"
opt.swapfile = false
opt.backup = false
opt.undofile = true

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Clipboard
opt.clipboard = "unnamedplus"

-- Completion
opt.completeopt = { "menuone", "noselect" }

-- Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Misc.
opt.mouse = "a"
opt.splitright = true
opt.splitbelow = true
