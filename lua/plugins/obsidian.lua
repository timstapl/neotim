return {
  "epwalsh/obsidian.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
	config = function ()
		require("obsidian").setup {
			workspaces = {
				{
					name = "work",
					path = "~/Documents/Second Brain/",
				}
			},
		}
	end
}
