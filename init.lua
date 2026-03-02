-- [nfnl] init.fnl
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
print("Device Detected? ", device)
require("core.mappings")
require("core.settings")
require("plugins")
require("core.theme")
require("config.keybindings")
if vim.g.neovide then
  return require("core.neovide")
else
  return nil
end
