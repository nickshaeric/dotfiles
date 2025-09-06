-- nicksha's nvim-autopairs automatic pairing configuration

return {
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',  -- Load when entering insert mode
    config = function()
      require('nvim-autopairs').setup({
        check_ts = true,  -- Use Treesitter for smarter pairing
        enable_check_bracket_line = true,
        enable_moveright = true,
        disable_filetype = { 'TelescopePrompt', 'vim' },
      })
    end,
  },
}
