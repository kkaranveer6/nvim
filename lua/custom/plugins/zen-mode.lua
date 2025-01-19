return {
  'folke/zen-mode.nvim',
  config = function()
    vim.keymap.set('n', '<leader>z', ':ZenMode<CR>', { desc = '[Z]en Mode' })
  end,
}
