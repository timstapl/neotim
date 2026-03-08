-- [nfnl] fnl/plugins/markdown.fnl
local function _1_()
  return require("render-markdown").setup({start_enabled = true, latex_enabled = true})
end
return {"MeanderingProgrammer/markdown.nvim", name = "render-markdown", dependencies = {"nvim-treesitter/nvim-treesitter"}, config = _1_}
