-- Personal option and keymap overrides on top of kickstart's defaults.

vim.o.cursorline = false

-- Per window statusline
vim.o.laststatus = 2

vim.keymap.set('n', '<leader>v', '<cmd>vsp<CR>', { desc = 'Vertical Split' })
-- NOTE: `<leader>h` is also the prefix for gitsigns' hunk mappings, so this fires after 'timeoutlen'.
vim.keymap.set('n', '<leader>h', '<cmd>sp<CR>', { desc = 'Horizontal Split' })

-- Disable mini.surround's default mappings (kept out of init.lua to avoid upstream merge conflicts).
for _, lhs in ipairs { 'sa', 'sd', 'sr', 'sf', 'sF', 'sh', 'sn' } do
  for _, mode in ipairs { 'n', 'x' } do
    pcall(vim.keymap.del, mode, lhs)
  end
end
