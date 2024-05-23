return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		require("bufferline").setup {
			options = {
				separator_style = "slant",
				--always_show_bufferline = false,
        diagnostics = "nvim_lsp" or "coc", -- | "coc"
				offsets = {
          {
            filetype = "NvimTree",
            text = "Nvim Tree",
						separator = true,
            text_align = "left",
          },
        },
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local s = " "
          for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " "
              or (e == "warning" and " " or "" )
            s = s .. n .. sym
          end
          return s
        end
			}
		}
	end,
}
