;;;;;;;;;;;;;;;;
;;  Init.fnl  ;; 
;;;;;;;;;;;;;;;;

;(local nfnl (require :nfnl.api))

(require :core.mappings)
(require :core.settings)
(require :plugins)
(require :core.theme)
(require :config.keybindings)

(if vim.g.neovide (require :core.neovide))
