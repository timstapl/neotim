return {
  {
    'MeanderingProgrammer/markdown.nvim',
    name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('render-markdown').setup({
				start_enabled = true,
				-- Whether LaTeX should be rendered, mainly used for health check
				latex_enabled = true,
			})
    end,
  },
  -- {
  --   "tadmccorkle/markdown.nvim",
  --   ft = "markdown", -- or 'event = "VeryLazy"'
  --   opts = {
  --     -- configuration here or empty for defaults
  --   },
  -- },
}
