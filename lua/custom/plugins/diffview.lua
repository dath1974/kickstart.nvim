-- diffview.nvim
-- https://github.com/sindrets/diffview.nvim
--
-- Tabpage interface for diffs and file history.

vim.pack.add { 'https://github.com/nvim-tree/nvim-web-devicons', 'https://github.com/sindrets/diffview.nvim' }
require('diffview').setup {
  enhanced_diff_hl = true, -- Better syntax highlighting in diffs
  view = { default = { layout = 'diff2_horizontal' } },
}

vim.keymap.set('n', '<leader>gd', '<cmd>DiffviewOpen<cr>', { desc = 'Git Diffview Open' })
vim.keymap.set('n', '<leader>gc', '<cmd>DiffviewClose<cr>', { desc = 'Git Diffview Close' })
