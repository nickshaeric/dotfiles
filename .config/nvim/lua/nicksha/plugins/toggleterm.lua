-- nicksha's toggleterm.nvim configuration

return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    keys = {
      { '<C-t>', '<cmd>ToggleTerm<CR>', desc = 'Toggle floating terminal' },
    },
    config = function()
      require("toggleterm").setup {
        size = 20,
        open_mapping = [[<C-t>]],   -- Toggle terminal via key
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = false,
        start_in_insert = true,
        persist_size = true,
        direction = 'float',
      }
    end,
  },
}

