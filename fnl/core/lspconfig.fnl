(local nvimlsp (require :cmp_nvim_lsp))
(local capabilities (nvimlsp.default_capabilities (vim.lsp.protocol.make_client_capabilities)))

(local lspconf (require :lspconfig))

(fn check_codelens_support [] 
  (let [clients (vim.lsp.get_active_clients { :bufnr 0})] 
    (each [_ v (ipairs clients)]
      (if (v.server_capabilities.codeLensProvider) true
        false)
      )))

(vim.api.nvim_create_autocmd 
  [:TextChanged :InsertLeave :CursorHold :LspAttach :BufEnter] 
  {
    :buffer 0
    :callback (fn [] (if (check_codelens_support) (vim.lsp.codelens.refresh {:bufnr 0})))
  })

(lspconf.markdown_oxide.setup {
  :capabilities (vim.tbl_deep_extend :force capabilities {:workspace { :didChangeWatchedFiles { :dynamicRegistration true }}})
  :on_attach (fn []
             )
})

