-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.wo.foldmethod = "expr"
-- don't auto-fold
vim.wo.foldlevel = 99

-- don't sync with system clipboard
vim.opt.clipboard = ""
