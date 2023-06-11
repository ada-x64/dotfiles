-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end
-- markdown and plaintext editing
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  group = augroup("md_edit"),
  pattern = "*.md *.txt",
  command = "set tw=80",
})
vim.api.nvim_create_autocmd({ "BufLeave" }, {
  group = augroup("md_edit"),
  command = "set tw=0",
})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = augroup("wgsl"),
  pattern = "*.wgsl",
  command = "set filetype=wgsl",
})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = augroup("fold"),
  command = "set foldlevel=99",
})
