-- [nfnl] fnl/plugins/mini.fnl
local function _1_()
  require("mini.align").setup()
  return require("mini.indentscope").setup()
end
return {"echasnovski/mini.nvim", config = _1_}
