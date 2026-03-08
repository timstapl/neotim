-- [nfnl] fnl/plugins/poetry.fnl
local function _1_()
  return require("poetry-nvim").setup()
end
return {"karloskar/poetry-nvim", config = _1_}
