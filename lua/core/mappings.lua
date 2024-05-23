--------------------------------
---  Base nVim Key Mappings  ---
--------------------------------

--
-- Space Bar is leader key
--
vim.g.mapleader = " "

--
-- Misc Keybinds
--
local opts = {noremap = true, silent = false}
local map = vim.api.nvim_set_keymap

map('n', '<s-h>', '<cmd>BufferLineCyclePrev<cr>', opts)
map('n', '<s-l>', '<cmd>BufferLineCycleNext<cr>', opts)

map('n', '<esc>', '<cmd>noh<cr>', opts)
