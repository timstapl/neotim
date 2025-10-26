; show line numbers
(set vim.opt.nu true)
; use system clipboard
(set vim.opt.clipboard "unnamedplus")
; whitespace config
(set vim.opt.tabstop 2)
(set vim.opt.shiftwidth 2)
(set vim.opt.softtabstop 2)
(set vim.opt.expandtab true)
; conceal for markdown, etc
(set vim.opt.conceallevel 1)
;(set vim.opt.auto_set_syntax true)
;(set vim.opt.auto_set_filetype true)
;(local auto_set_syntax true)

; folding
(set vim.opt.foldmethod "indent")
(set vim.opt.foldlevel 99)
(set vim.opt.foldlevelstart 4)
(set vim.opt.foldnestmax 4)

; I might not actually need this anymore
; (vim.api.nvim_create_autocmd "BufWinEnter" {
;                                             :pattern "*.md"
;                                             :group (vim.api.nvim_create_augroup "md_telekasten_fix" { :clear true })
;                                             :callback (fn [] 
;                                                         (vim.cmd "set syntax=telekasten")
;                                                         (vim.cmd "set filetype=markdown"))
;                                             })

; support for syntax in code blocks
(set vim.g.markdown_fenced_languages [:html :python :lua :vim :typescript :javascript :json :mermaid :groovy :sql :clojure])
; dont hide quotes in json, it drives me bonkers
(set vim.g.vim_json_conceal 0)
