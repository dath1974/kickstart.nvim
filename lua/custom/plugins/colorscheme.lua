-- catppuccin
-- https://github.com/catppuccin/nvim
--
-- Loaded after kickstart's tokyonight setup in init.lua, so this colorscheme wins.

-- The repo is named `nvim`, so give it a clearer local name.
vim.pack.add { { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' } }
require('catppuccin').setup {
  flavour = 'mocha', -- latte, frappe, macchiato, mocha
  styles = {
    comments = {}, -- Disable italics in comments (matches kickstart's default)
  },
}
vim.cmd.colorscheme 'catppuccin'
