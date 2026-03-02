;;;;;;;;;;;;;;;;
;;  Init.fnl  ;; 
;;;;;;;;;;;;;;;;

;; (local nfnl (require :nfnl.api))

;; get hostname
;; (local hostname (os.getenv "HOSTNAME"))

(local device (case (os.getenv "HOSTNAME")
               :fedora :home-desktop
               _ :unknown
               ))

(print "Device Detected? " device)

(require :core.mappings)
(require :core.settings)
(require :plugins)
(require :core.theme)
(require :config.keybindings)

;;
;; Testing an option for more complex lsp config:
;; WARN: this is being problematic, disabling for now
;; (require :core.lspconfig)

;;
;; Only load neovide specific config when needed
;;
(if vim.g.neovide (require :core.neovide))
