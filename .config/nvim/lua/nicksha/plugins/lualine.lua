-- nicksha's lualine.nvim statusline configuration

return {
  -- Statusline plugin
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Optional: for file icons
    config = function()
      require('lualine').setup {
        options = {
          theme = 'catppuccin', -- Auto-detects Frappé flavor since it's active
          component_separators = { left = '', right = '' },
          section_separators   = { left = '', right = '' },
          disabled_filetypes = {
            statusline = { 'dashboard', 'lazy' },
            winbar = {},
          },
          always_divide_middle = true, -- Ensures the midsection divides cleanly
          globalstatus = true,         -- Single unified statusline for all windows
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = { { 'filename', path = 1 } }, -- 0 = just file, 1 = relative path, 2 = absolute
          lualine_x = { 'fileformat', 'filetype' },
          lualine_z = { 'location' },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { { 'filename', path = 1 } },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {},
        },
        extensions = { 'nvim-tree', 'lazy' }, -- Optional, adds better integration
      }
    end,
  },
}
