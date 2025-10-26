-- [nfnl] fnl/plugins/dbout.fnl
local function _1_()
  local dbout = require("dbout")
  return dbout.setup()
end
return {"zongben/dbout.nvim", build = "npm install", lazy = "VeryLazy", cmd = {"Dbout"}, config = _1_}
