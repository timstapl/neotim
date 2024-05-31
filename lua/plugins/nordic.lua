return {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
		config = function ()
			require("nordic").setup {
				reduced_blue   = true,
				bright_border  = true,
				transparent_bg = false,
				noice = {
					-- Available styles: `classic`, `flat`.
					style = 'flat',
				},
				telescope = {
					-- Available styles: `classic`, `flat`.
					style = 'flat',
				},
				leap = {
					-- Dims the backdrop when using leap.
					dim_backdrop = false,
				},
				ts_context = {
					-- Enables dark background for treesitter-context window
					dark_background = true,
				}
			}
		end
}
