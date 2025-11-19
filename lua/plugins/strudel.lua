-- [nfnl] fnl/plugins/strudel.fnl
local function _1_()
  local strudel = require("strudel")
  return strudel.setup()
end
return {"gruvw/strudel.nvim", build = "npm install", config = _1_}
