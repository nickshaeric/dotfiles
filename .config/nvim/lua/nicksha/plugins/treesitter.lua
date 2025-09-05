-- syntax parsing with nvim-treesitter
return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = {
          'lua',
          'vim',
          'bash',
          'python',
          'markdown',
          'markdown_inline',
          'javascript',
          'typescript',
          'json',
          'html',
          'css',
          'yaml',
          'toml',
          'go',
          'cpp',
          'c',
          'make',
          'regex',
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
      }
    end,
  },
}

