-- [nfnl] fnl/plugins/whaler.fnl
local device = require("../utils/device")
local _2_
do
  local case_1_ = device["identify-host"]()
  if (case_1_ == "home-desktop") then
    _2_ = {{path = "~/Projects/"}}
  elseif (case_1_ == "gravie-macbook") then
    _2_ = {{path = "~/projects/gravie/comfort/repos/core-services/", alias = "comfort-core"}, {path = "~/projects/gravie/comfort/repos/dbschema/", alias = "comfort-db"}, {path = "~/projects/gravie/comfort/repos/tools/", alias = "comfort-tools"}, {path = "~/projects/gravie/comfort/repos/libraries/", alias = "comfort-libs"}, {path = "~/projects/gravie/comfort/repos/integration/", alias = "comfort-int"}, {path = "~/projects/gravie/comfort/repos/mobile/", alias = "comfort-mobile"}, {path = "~/projects/gravie/comfort/repos/production-support/", alias = "comfort-support"}, {path = "~/projects/gravie/comfort/repos/", alias = "comfort"}, {path = "~/projects/gravie/ichra/repos/", alias = "ichra"}, {path = "~/projects/gravie/platform/repos/", alias = "platform"}}
  elseif (case_1_ == "unknown") then
    _2_ = {}
  else
    _2_ = nil
  end
end
return {"SalOrak/whaler", opts = {directories = _2_, picker = "telescope", file_explorer = "nvimtree"}}
