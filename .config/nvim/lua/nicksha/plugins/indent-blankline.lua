-- nicksha's indent-blankline.nvim configuration for indent guides

return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl', -- use the new `ibl` module name
    event = { 'BufReadPre', 'BufNewFile' }, -- Load on file open
    config = function()
      require('ibl').setup({
        indent = {
          char = '│',
        },
        scope = {
          enabled = true,
          show_start = false,
          show_end = false,
        },
        exclude = {
          filetypes = {
            'help',
            'alpha',
            'dashboard',
            'lazy',
            'NvimTree',
            'Trouble',
          },
        },
      })
    end,
  },
}

