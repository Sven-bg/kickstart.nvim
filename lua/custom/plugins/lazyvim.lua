return {
  'kdheepak/lazygit.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  cmd = { 'LazyGit' },
  keys = {
    { '<leader>lg', '<cmd>LazyGit<CR>', desc = 'Open LazyGit' },
  },
  config = function()
    -- Optional: You can configure behavior here if needed
    vim.g.lazygit_floating_window_use_plenary = 1
  end,
}
