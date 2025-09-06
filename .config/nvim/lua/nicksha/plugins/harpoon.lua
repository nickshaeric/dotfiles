-- nicksha's harpoon configuration for quick file navigation

return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require('harpoon')

      harpoon:setup({
        settings = {
          save_on_toggle = true,
          sync_on_ui_close = true,
        },
      })

      -- Optional: keybindings (add to keymaps.lua if you prefer)
      local map = vim.keymap.set
      local opts = { noremap = true, silent = true }

      map('n', '<leader>ha', function() harpoon:list():append() end, opts)                       -- Add file
      map('n', '<leader>hh', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, opts)  -- Toggle UI
      map('n', '<leader>h1', function() harpoon:list():select(1) end, opts)                      -- Go to file 1
      map('n', '<leader>h2', function() harpoon:list():select(2) end, opts)
      map('n', '<leader>h3', function() harpoon:list():select(3) end, opts)
      map('n', '<leader>h4', function() harpoon:list():select(4) end, opts)
    end,
  },
}
