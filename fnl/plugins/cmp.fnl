{
  1 :hrsh7th/nvim-cmp
  :dependencies [
		:hrsh7th/cmp-nvim-lsp
		:hrsh7th/cmp-buffer
		:hrsh7th/cmp-path
		:saadparwaiz1/cmp_luasnip
    :kristijanhusak/vim-dadbod-completion
  ]
  :config (fn []
    (local cmp (require :cmp))
    (local cmp_select {:behavior cmp.SelectBehavior.Select})

    (cmp.setup {
      :sources [
        { :name "path" }
        {
          :name "nvim_lsp"
          :option {
          ;; TODO: is there a good way to do a regex definition in fennel?
          ;; :markdown_oxide { :keyword_pattern [[\(\k\| \|\/\|#\)\+]] }
          }
        }
        { :name "vim-dadbod-completion" }
        { :name "luasnip" :keyword_length 2 }
        { :name "buffer" :keyword_length 3 }
      ]
      :mapping (cmp.mapping.preset.insert {
        :<C-p>     (cmp.mapping.select_prev_item cmp_select)
        :<C-n>     (cmp.mapping.select_next_item cmp_select)
        :<C-y>     (cmp.mapping.confirm { :select true })
        :<C-Space> (cmp.mapping.complete)
      })
      :window {
        :completion (cmp.config.window.bordered)
        :documentation (cmp.config.window.bordered)
      }
      ;; :snippet {
        ;; :expand (fn [args]
          ;; ((. (require :cmp_luasnip) :lsp_expand) (. args :body))
        ;; )
      ;; }
      :formatting {
        :format (fn [entry vim_item]
          (set vim_item.menu (. {
            :rg                    "[Rg]"
            :buffer                "[Buffer]"
            :nvim_lsp              "[LSP]"
            :vsnip                 "[Snippet]"
            :tags                  "[Tag]"
            :path                  "[Path]"
            :orgmode               "[Org]"
            :vim-dadbod-completion "[DB]"
          } (. entry.source :name)))
          vim_item
        )
      }
    })
  )
                
}
