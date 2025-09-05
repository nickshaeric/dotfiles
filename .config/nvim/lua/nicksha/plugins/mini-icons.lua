-- icon utilities with mini.icons
return {
  {
    'echasnovski/mini.icons',
    version = false, -- always latest
    config = function()
      require('mini.icons').setup()
    end,
  },
}

