-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Markdown: disable prettier auto-format on save & smartindent
-- (menghindari format ulang / indent aneh saat mengetik .md)
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "md", "gitcommit" },
  callback = function()
    vim.b.autoformat = false -- off format-on-save
    vim.bo.smartindent = false -- off auto smart-indent
    vim.bo.indentexpr = "" -- clear treesitter/auto indent expr
    vim.bo.autoindent = false
  end,
})
