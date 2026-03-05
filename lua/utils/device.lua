-- [nfnl] fnl/utils/device.fnl
local function identify_host()
  local case_1_ = os.getenv("HOSTNAME")
  if (case_1_ == "fedora") then
    return "home-desktop"
  elseif (case_1_ == "GR0148") then
    return "gravie-macbook"
  else
    local _ = case_1_
    return "unknown"
  end
end
return {["identify-host"] = identify_host}
