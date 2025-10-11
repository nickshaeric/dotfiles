-- nicksha@keymaps

-- Alias
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader Shortcuts
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)
keymap("n", "<leader>h", ":nohlsearch<CR>", opts)

-- Buffer
keymap("n", "<leader>bn", ":bnext<CR>", opts)
keymap("n", "<leader>bp", ":bprevious<CR>", opts)
keymap("n", "<leader>bd", ":bdelete<CR>", opts)

-- Edit
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '>-2<CR>gv=gv")

--Split
keymap("n", "<leader>sv", "<C-w>v")
keymap("n", "<leader>sh", "<C-w>s")
keymap("n", "<leader>sx", "<cmd>close<CR>")

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>fd", function()
    require("telescope.builtin").find_files({ cwd = vim.fn.getcwd() })
end, opts)


-- Misc.
keymap("n", "<C-c>", ":nodl<CR>")

