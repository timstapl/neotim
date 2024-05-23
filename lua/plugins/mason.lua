return {
	{
		"williamboman/mason.nvim",
		config = function ()
			require('mason').setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function ()
			vim.api.nvim_create_autocmd('LspAttach', {
				group = vim.api.nvim_create_augroup('user_lsp_attach', {clear = true}),
				callback = function(event)
					local opts = {buffer = event.buf}

					vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
					vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
					vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
					vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
					vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
					vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
					vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
					vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
					vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
					vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
				end,
			})
			local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

			require('mason-lspconfig').setup({
				ensure_installed = {
					"crystalline",
					"tsserver",
					"tailwindcss",
					"volar",
					"taplo",
					"rust_analyzer",
					"lua_ls",
					"jsonls",
					"clangd",
				},
				handlers = {
					function(server_name)
						require('lspconfig')[server_name].setup({
							capabilities = lsp_capabilities,
						})
					end,
					lua_ls = function()
						require('lspconfig').lua_ls.setup({
							capabilities = lsp_capabilities,
							settings = {
								Lua = {
									runtime = {
										version = 'LuaJIT'
									},
									diagnostics = {
										globals = {'vim'},
									},
									workspace = {
										library = {
											vim.env.VIMRUNTIME,
										}
									}
								}
							}
						})
					end,
				}
			})
		end,
	},

}
