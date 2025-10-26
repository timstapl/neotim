-- [nfnl] fnl/core/mappings.fnl
vim.g.mapleader = " "
local opts = {noremap = true, silent = false}
local nvmap = vim.api.nvim_set_keymap
nvmap("n", "<s-h>", "<cmd>BufferLineCyclePrev<cr>", opts)
nvmap("n", "<s-l>", "<cmd>BufferLineCycleNext<cr>", opts)
nvmap("n", "<esc>", "<cmd>noh<cr>", opts)
nvmap("n", "gb", "<cmd>Telescope buffers<cr>", opts)
nvmap("n", "gi", "<cmd>Telescope lsp_implementation<cr>", opts)
nvmap("n", "gd", "<cmd>Telescope lsp_definitions<cr>", opts)
return nvmap("n", "gr", "<cmd>Telescope lsp_references<cr>", opts)
