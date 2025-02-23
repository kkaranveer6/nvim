return {
  {
    'https://github.com/tpope/vim-fugitive',
    vim.keymap.set('n', '<leader>gs', ':G<CR>', { desc = 'Git [S]tatus' }),
    vim.keymap.set('n', '<leader>gl', ':G log<CR>', { desc = 'Git [L]og' }),
    vim.keymap.set('n', '<leader>gm', ':G commit -m ""<Left>', { desc = 'Git [M]essage' }),
    vim.keymap.set('n', '<leader>gr', ':G rebase -i HEAD~', { desc = 'Git [R]ebase' }),
  },
  {
    'sindrets/diffview.nvim',
    config = function()
      require('diffview').setup {}

      local function toggle_diffview()
        local view = require('diffview.lib').get_current_view()

        if view then
          vim.cmd 'DiffviewClose'
        else
          vim.cmd 'DiffviewOpen'
        end
      end

      vim.keymap.set('n', '<leader>gd', toggle_diffview, { desc = 'Toggle Git [D]iff' })
    end,
  },
  {
    'junegunn/gv.vim',
    vim.keymap.set('n', '<leader>gv', ':GV<cr>', { desc = 'Git Commit [V]iew' }),
    vim.keymap.set('n', '<leader>gV', ':GV!<cr>', { desc = 'Git Commit [V]iew File' }),
  },
}
