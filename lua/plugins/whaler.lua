-- [nfnl] fnl/plugins/whaler.fnl
local device
do
  local case_1_ = os.getenv("HOSTNAME")
  if (case_1_ == "fedora") then
    device = "home-desktop"
  else
    local _ = case_1_
    device = "unknown"
  end
end
local _3_
if (device == "home-desktop") then
  _3_ = {{path = "~/Projects/"}}
elseif (device == "unknown") then
  _3_ = {{path = "~/projects/gravie/comfort/repos/core-services/", alias = "comfort-core"}, {path = "~/projects/gravie/comfort/repos/dbschema/", alias = "comfort-db"}, {path = "~/projects/gravie/comfort/repos/tools/", alias = "comfort-tools"}, {path = "~/projects/gravie/comfort/repos/libraries/", alias = "comfort-libs"}, {path = "~/projects/gravie/comfort/repos/integration/", alias = "comfort-int"}, {path = "~/projects/gravie/comfort/repos/mobile/", alias = "comfort-mobile"}, {path = "~/projects/gravie/comfort/repos/production-support/", alias = "comfort-support"}, {path = "~/projects/gravie/comfort/repos/", alias = "comfort"}, {path = "~/projects/gravie/ichra/repos/", alias = "ichra"}, {path = "~/projects/gravie/platform/repos/", alias = "platform"}}
else
  _3_ = nil
end
return {"SalOrak/whaler", opts = {directories = _3_, picker = "telescope", file_explorer = "nvimtree"}}
