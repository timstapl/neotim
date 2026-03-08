-- [nfnl] fnl/plugins/lualine.fnl
local function _1_()
  return require("lualine").setup({options = {theme = "gruvbox"}})
end
return {"nvim-lualine/lualine.nvim", dependencies = {"nvim-tree/nvim-web-devicons"}, config = _1_}
