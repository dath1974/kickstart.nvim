-- smartcolumn
-- https://github.com/m4xshen/smartcolumn.nvim
--
-- Only shows the colorcolumn when a line in the visible window exceeds it.

vim.pack.add { 'https://github.com/m4xshen/smartcolumn.nvim' }
require('smartcolumn').setup {
  colorcolumn = '80',
  -- Overrides the plugin default ({ 'help', 'text', 'markdown' }) so markdown gets a column
  disabled_filetypes = { 'help' },
  custom_colorcolumn = {
    go = '100',
    groovy = '100',
    lua = '120',
    markdown = '100',
    python = '88',
    ruby = '100',
  },
}
