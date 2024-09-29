return {
  {
    'https://github.com/tpope/vim-fugitive',
    vim.keymap.set('n', '<leader>gs', ':G<CR>', { desc = 'Git [S]tatus' }),
  },
  {
    'sindrets/diffview.nvim',
    config = function()
      require('diffview').setup {}
    end,
    vim.keymap.set('n', '<leader>gd', ':DiffviewOpen<CR>', { desc = 'Git [D]iff' }),
  },
}
