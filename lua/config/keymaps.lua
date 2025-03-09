-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap CTRL Arrow Keys to Window Navigation Commands in Normal Mode
vim.api.nvim_set_keymap("n", "<C-Up>", "<C-W>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Down>", "<C-W>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Left>", "<C-W>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Right>", "<C-W>l", { noremap = true })
