-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noreamp = true, silent = true }

-- clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- copy vim to clipboard on visual and normal mode
keymap.set("n", "<leader>Y", [["+Y]]) -- copy with capital Y
