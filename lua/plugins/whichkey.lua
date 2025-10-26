-- [nfnl] fnl/plugins/whichkey.fnl
local function _1_()
  vim.o.timeout = true
  vim.o.timeoutlen = 300
  return nil
end
return {"folke/which-key.nvim", event = "VeryLazy", init = _1_, opts = {}}
