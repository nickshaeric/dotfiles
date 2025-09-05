-- nicksha's gitsigns.nvim git integration configuration

return {
  {
    'lewis6991/gitsigns.nvim',
    event = 'BufReadPre',  -- Lazy-load when opening files
    config = function()
      require('gitsigns').setup {
        signs = {
          add          = { text = '│' },
          change       = { text = '│' },
          delete       = { text = '_' },
          topdelete    = { text = '‾' },
          changedelete = { text = '~' },
          untracked    = { text = '┆' },
        },
        signcolumn = true,
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns
          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          -- Navigation between hunks
          map('n', ']c', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(gs.next_hunk)
            return '<Ignore>'
          end, { expr = true, desc = 'Next git hunk' })
          map('n', '[c', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(gs.prev_hunk)
            return '<Ignore>'
          end, { expr = true, desc = 'Previous git hunk' })

          -- Actions: stage/reset/preview/blame
          map({ 'n', 'v' }, '<leader>hs', ':Gitsigns stage_hunk<CR>', { desc = 'Stage hunk' })
          map({ 'n', 'v' }, '<leader>hr', ':Gitsigns reset_hunk<CR>', { desc = 'Reset hunk' })
          map('n', '<leader>hS', gs.stage_buffer,       { desc = 'Stage buffer' })
          map('n', '<leader>hR', gs.reset_buffer,       { desc = 'Reset buffer' })
          map('n', '<leader>hp', gs.preview_hunk,       { desc = 'Preview hunk' })
          map('n', '<leader>hb', function() gs.blame_line { full = true } end, { desc = 'Blame line' })
          map('n', '<leader>hd', gs.diffthis,           { desc = 'Diff this' })
          map('n', '<leader>hD', function() gs.diffthis('~') end, { desc = 'Diff with last commit' })

          -- Toggles
          map('n', '<leader>tb', gs.toggle_current_line_blame, { desc = 'Toggle current line blame' })
          map('n', '<leader>tD', gs.toggle_deleted,            { desc = 'Toggle deleted lines' })

          -- Text object for hunks
          map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { desc = 'Select git hunk' })
        end,
      }
    end,
  },
}

