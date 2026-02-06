return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
    "kristijanhusak/vim-dadbod-completion",
	},
	config = function()
		local cmp = require('cmp')
		local cmp_select = {behavior = cmp.SelectBehavior.Select}
    -- local lspkind = require("lspkind")

		cmp.setup({
			sources = {
				{ name = 'path' },
				{
          name = 'nvim_lsp',
          option = {
            markdown_oxide = {
              keyword_pattern = [[\(\k\| \|\/\|#\)\+]]
            }
          }
        },
        { name = "vim-dadbod-completion" },
				{ name = 'luasnip', keyword_length = 2},
				{ name = 'buffer', keyword_length = 3 },
			},
			mapping = cmp.mapping.preset.insert({
				['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
				['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
				['<C-y>'] = cmp.mapping.confirm({ select = true }),
				['<C-Space>'] = cmp.mapping.complete(),
			}),
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			snippet = {
				expand = function(args)
					require('cmp_luasnip').lsp_expand(args.body)
				end,
			},
      formatting = {
        format = function(entry, vim_item)
          vim_item.menu = ({
            rg = '[Rg]',
            buffer = '[Buffer]',
            nvim_lsp = '[LSP]',
            vsnip = '[Snippet]',
            tags = '[Tag]',
            path = '[Path]',
            orgmode = '[Org]',
            ['vim-dadbod-completion'] = '[DB]',
          })[entry.source.name]
          return vim_item
        end,
      },
		})
	end
}
