-- nicksha's telescope.nvim fuzzy finder configuration

return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8', -- Use a stable release
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local telescope = require('telescope')
      telescope.setup {
        defaults = {
          prompt_prefix = ' ',  -- Nice arrow prompt (Nerd Font icon)
          selection_caret = ' ',
          path_display = { "smart" },
          sorting_strategy = "ascending",
          layout_strategy = "horizontal",
          layout_config = {
            prompt_position = "top",
            preview_cutoff = 120,
            horizontal = {
              mirror = false,
              preview_width = 0.6,
            },
          },
          file_ignore_patterns = { "node_modules", ".git/" },
        },
      }

      -- Load fzf native extension if installed for better sorting speed
      pcall(function()
        telescope.load_extension('fzf')
      end)
    end,
  },
}
