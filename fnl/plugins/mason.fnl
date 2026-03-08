[
  {
		1 :williamboman/mason.nvim
		:config (fn []
      ((. (require :mason) :setup))
    )
  }
  {
		1 :williamboman/mason-lspconfig.nvim
    :config (fn []
      (vim.api.nvim_create_autocmd :LspAttach {
        :group (vim.api.nvim_create_augroup :user_lsp_attach { :clear true })
        :callback (fn [event]
          (local opts { :buffer event.buf })

          (vim.keymap.set :n "gd" (fn [] (vim.lsp.buf.definition)) opts)
          (vim.keymap.set :n "K" (fn [] (vim.lsp.buf.hover)) opts)
          (vim.keymap.set :n "<leader>vws" (fn [] (vim.lsp.buf.workspace_symbol)) opts)
          (vim.keymap.set :n "<leader>vd" (fn [] (vim.lsp.buf.open_float)) opts)
          (vim.keymap.set :n "[d" (fn [] (vim.lsp.buf.goto_next)) opts)
          (vim.keymap.set :n "]d" (fn [] (vim.lsp.buf.goto_prev)) opts)
          (vim.keymap.set :n "<leader>vca" (fn [] (vim.lsp.buf.code_action)) opts)
          (vim.keymap.set :n "<leader>vrr" (fn [] (vim.lsp.buf.references)) opts)
          (vim.keymap.set :n "<leader>vrn" (fn [] (vim.lsp.buf.rename)) opts)
          (vim.keymap.set :i "<C-h>" (fn [] (vim.lsp.buf.signature_help)) opts)
        )
      })

      (local lsp_capabilities (. (require :cmp_nvim_lsp) :default_capabilities))

      ((. (require :mason-lspconfig) :setup) {
        :ensure_installed [
          :crystalline
          :tailwindcss
          :taplo
          :rust_analyzer
          :lua_ls
          :jsonls
          :clangd
          :markdown_oxide
        ]
        :handers {
          1 (fn [server_name]
            ((. (. (require :lspconfig) server_name) :setup) {
              :capabilities lsp_capabilities
            })
          )
          :lua_ls (fn []
            ((. (. (require :lspconfig) :lua_ls) :setup) {
              :capabilities lsp_capabilities
              :settings {
                :Lua {
                  :runtime { :version "LuaJIT" }
                  :diagnostics { :globals ["vim"]}
                  :workspace { :library [ vim.env.VIMRUNTIME ]}
                }
              }
            })
          )
        }
      })
    )
  }
]
