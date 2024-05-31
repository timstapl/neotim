return {
	{
		'nvim-telescope/telescope-symbols.nvim'
	},
	{
		'nvim-telescope/telescope-media-files.nvim'
	},
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.6',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function ()
			require("telescope").load_extension('media_files')
		end
	}
}
