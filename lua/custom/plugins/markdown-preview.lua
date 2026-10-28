-- markdown-preview
-- https://github.com/iamcco/markdown-preview.nvim
--
-- `:MarkdownPreview` / `:MarkdownPreviewStop` / `:MarkdownPreviewToggle`

-- Download the prebuilt preview server on install/update.
-- Must be registered before `vim.pack.add` so it sees the initial install.
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name ~= 'markdown-preview.nvim' or (kind ~= 'install' and kind ~= 'update') then return end
    if not ev.data.active then vim.cmd.packadd(name) end
    vim.fn['mkdp#util#install']()
  end,
})

vim.g.mkdp_filetypes = { 'markdown' }

-- On WSL, open the preview in the default Windows browser. Elsewhere (e.g. macOS)
-- the plugin's default already uses the system browser.
-- `mkdp_browserfunc` must name a Vimscript function, so define one here.
if vim.fn.has 'wsl' == 1 then
  vim.cmd [[
    function! MkdpOpenInWindowsBrowser(url) abort
      call jobstart(executable('wslview') ? ['wslview', a:url] : ['explorer.exe', a:url], { 'detach': v:true })
    endfunction
  ]]
  vim.g.mkdp_browserfunc = 'MkdpOpenInWindowsBrowser'
end

vim.pack.add { 'https://github.com/iamcco/markdown-preview.nvim' }
