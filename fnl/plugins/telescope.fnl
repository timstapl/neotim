[
	{
		1 :nvim-telescope/telescope-symbols.nvim
	}
	{
		1 :nvim-telescope/telescope-media-files.nvim
	}
	{
		1 :nvim-telescope/telescope.nvim
    ;; :tag '0.2.1'
		:dependencies [ :nvim-lua/plenary.nvim ]
		:config (fn []
      ((. (require :telescope) :load_extension) :media_files)
		)
	}
]
