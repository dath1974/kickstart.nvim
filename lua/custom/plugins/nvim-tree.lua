-- nvim-tree.lua
-- https://github.com/nvim-tree/nvim-tree.lua
--
-- File explorer, toggled with `<leader>e`. Replaces netrw.

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.pack.add { 'https://github.com/nvim-tree/nvim-web-devicons', 'https://github.com/nvim-tree/nvim-tree.lua' }
require('nvim-tree').setup {
  view = { width = 30, side = 'left', signcolumn = 'yes' },
  renderer = {
    highlight_git = true,
    highlight_opened_files = 'all',
    indent_markers = { enable = true },
  },
  git = { enable = true, ignore = false },
}

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle [E]xplorer' })
