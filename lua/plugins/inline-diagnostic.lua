-- [nfnl] fnl/plugins/inline-diagnostic.fnl
local function _1_()
  local inline = require("tiny-inline-diagnostic")
  inline.setup()
  return vim.diagnostic.config({virtual_text = false})
end
return {"rachartier/tiny-inline-diagnostic.nvim", event = "VeryLazy", priority = 1000, config = _1_}
