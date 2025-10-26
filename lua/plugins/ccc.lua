-- [nfnl] fnl/plugins/ccc.fnl
local function _1_()
  local ccc = require("ccc")
  return ccc.setup({highlighter = {auto_enable = true}})
end
return {"uga-rosa/ccc.nvim", config = _1_}
