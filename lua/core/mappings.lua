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

-- move between tabs
map('n', '<s-h>', '<cmd>BufferLineCyclePrev<cr>', opts)
map('n', '<s-l>', '<cmd>BufferLineCycleNext<cr>', opts)

-- stop highighting search results
map('n', '<esc>', '<cmd>noh<cr>', opts)

-- go to buffers
map('n', 'gb', '<cmd>Telescope buffers', opts)

-- go to implementation
map('n', 'gi', '<cmd>Telescope lsp_implementation<cr>', opts)

-- go to definition
map('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', opts)

-- go to references
map('n', 'gr', '<cmd>Telescope lsp_references<cr>', opts)
