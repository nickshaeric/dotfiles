-- nicksha's noice.nvim UI/notification enhancements configuration

return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',         -- UI utility library
      'rcarriga/nvim-notify',         -- Fancy notification popups
    },
    opts = {
      -- Use notify for all messages
      views = {
        notify = { merge = true },
      },
      -- Command-line enhancements
      cmdline = {
        enabled = true,
        view = 'cmdline_popup',
        opts = {
          position = { row = '25%', col = '50%' },
          size = { width = '40%' },
        },
      },
      -- Stylized message handling
      messages = {
        enabled = true,
        view = 'notify',
        view_error = 'notify',
        view_warn = 'notify',
      },
      -- Enhanced popup menu
      popupmenu = {
        enabled = true,
        backend = 'nui',
      },
      -- Hide redundant "written" messages
      routes = {
        {
          filter = { event = 'msg_show', find = 'written' },
          opts = { skip = true },
        },
      },
      -- LSP and markdown enhancements
      lsp = {
        hover = { enabled = true },
        signature = { enabled = true },
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
        },
      },
    },
    config = function(_, opts)
      -- Setup fancy notifications
      local notify = require('notify')
      notify.setup({
        stages = 'fade',
        timeout = 3000,
        background_colour = '#000000',
      })

      -- Apply noice setup
      require('noice').setup(opts)
    end,
  },
}

