return {
  {
    'https://github.com/tpope/vim-fugitive',
    vim.keymap.set('n', '<leader>gs', ':G<CR>', { desc = 'Git [S]tatus' }),
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
}
