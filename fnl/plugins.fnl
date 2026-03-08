;;;;;;;;;;;;;
;; plugins ;;
;;;;;;;;;;;;;

(local lazypath (.. (vim.fn.stdpath "data") "/lazy/lazy.nvim"))

(if (not (vim.loop.fs_stat lazypath))
  (vim.fn.system [ "git" "clone" "--filter=blob:none" "--single-branch" "https://github.com/folke/lazy.nvim.git" lazypath ]))

(vim.opt.runtimepath:prepend lazypath)

(let [lazy (require :lazy)]
      (lazy.setup [
             ;; fennel/neovim
             (require :plugins.nfnl)

             ;; deps
             (require :plugins.nui)

             ;; lsp / completion
             (require :plugins.lspconfig)
             (require :plugins.treesitter)
             (require :plugins.luasnip)
             (require :plugins.mason)
             (require :plugins.cmp)

             ;; style 
             (require :plugins.gruvbox)
             (require :plugins.dashboard)
             (require :plugins.ccc)
             (require :plugins.bufferline)
             (require :plugins.lualine)
             (require :plugins.noice)

             ;; git
             (require :plugins.lazygit)
             (require :plugins.fugitive)
             ;; (require :plugins.gitlab)
             (require :plugins.gitsigns)

             ;; utils
             (require :plugins.telescope)
             (require :plugins.mini)
             (require :plugins.tmux)
             (require :plugins.nvimtree)
             (require :plugins.nerdtree)
             (require :plugins.toggleterm)
             (require :plugins.trouble)
             (require :plugins.ufo)
             (require :plugins.inline-diagnostic)


             ;;todo
             ;;(require :plugins.dooing)

             ;; notes
             (require :plugins.markdown_preview)
             (require :plugins.follow_md_links)
             (require :plugins.wiki)
             (require :plugins.recollect)
             ;; (require :plugins.telekasten)
             ;; (require :plugins.outline)
             ;; (require :plugins.mdeval)
             ;; (require :plugins.org)

             ;; languages
             (require :plugins.fennel)
             ;; (require :plugins.crystal)
             (require :plugins.markdown)
             (require :plugins.poetry)
             (require :plugins.elixir)

             ;; clojure specific
             (require :plugins.dispatch)
             (require :plugins.conjure)
             (require :plugins.jack-in)

             ;; keybinds
             (require :plugins.whichkey)

             ;; database
             (require :plugins.dadbod)
             (require :plugins.dbout)

             ;; misc
             (require :plugins.todo-comments)
             ;; (require :plugins.timerly)
             (require :plugins.zen)
             (require :plugins.strudel)
             (require :plugins.surround)
             (require :plugins.repeat)
             (require :plugins.jira)
             (require :plugins.whaler)
             (require :plugins.wrapped)
]))
