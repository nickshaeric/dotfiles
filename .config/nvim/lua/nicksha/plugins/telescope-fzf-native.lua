-- nicksha's telescope-fzf-native.nvim performance enhancement

return {
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',  -- compile native C code for speed
    cond = vim.fn.executable('make') == 1, -- only build if 'make' is available
  },
}

