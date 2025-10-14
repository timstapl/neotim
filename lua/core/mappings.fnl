; set spacebar as leader key
(set vim.g.mapleader " ")

; misc keybindings
(local opts {:noremap true :silent false})
(local nvmap vim.api.nvim_set_keymap)

; move between tabs
(nvmap "n" "<s-h>" "<cmd>BufferLineCyclePrev<cr>" opts)
(nvmap "n" "<s-l>" "<cmd>BufferLineCycleNext<cr>" opts)

; stop highlighting search results
(nvmap "n" "<esc>" "<cmd>noh<cr>" opts)

; go to buffers
(nvmap "n" "gb" "<cmd>Telescope buffers<cr>" opts)

; go to implementation
(nvmap "n" "gi" "<cmd>Telescope lsp_implementation<cr>" opts)

; go to definition
(nvmap "n" "gd" "<cmd>Telescope lsp_definitions<cr>" opts)

; go to references
(nvmap "n" "gr" "<cmd>Telescope lsp_references<cr>" opts)

