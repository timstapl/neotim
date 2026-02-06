-- [nfnl] fnl/plugins/dooing.fnl
local function _1_()
  local dooing = require("dooing")
  return dooing.setup()
end
return {"atiladefreitas/dooing", config = _1_}
