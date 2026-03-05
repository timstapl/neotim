-- [nfnl] fnl/plugins/wiki.fnl
local device = require("../utils/device")
local _2_
do
  local case_1_ = device["identify-host"]()
  if (case_1_ == "home-desktop") then
    _2_ = {{name = "Personal", path = "~/Documents/wiki/personal"}}
  elseif (case_1_ == "gravie-macbook") then
    _2_ = {{name = "Work", path = "~/Documents/wiki/gravie"}}
  elseif ((_G.type(case_1_) == "table") and (case_1_[1] == "unknown") and true) then
    local _ = case_1_[2]
    _2_ = {}
  else
    _2_ = nil
  end
end
return {"echaya/neowiki.nvim", opts = {wiki_dirs = _2_}, keys = {{"<leader>ww", "<cmd>lua require('neowiki').open_wiki()<cr>", desc = "Open Wiki"}, {"<leader>wW", "<cmd>lua require('neowiki').open_wiki_floating()<cr>", desc = "Open Floating Wiki"}}}
