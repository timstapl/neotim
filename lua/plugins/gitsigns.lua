-- [nfnl] fnl/plugins/gitsigns.fnl
local function _1_()
  local gs = require("gitsigns")
  return gs.setup()
end
return {"lewis6991/gitsigns.nvim", config = _1_}
