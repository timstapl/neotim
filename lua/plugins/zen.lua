-- [nfnl] fnl/plugins/zen.fnl
local function _1_()
  vim.opt.nu = false
  return nil
end
local function _2_()
  vim.opt.nu = true
  return nil
end
return {"folke/zen-mode.nvim", opts = {on_open = _1_, on_close = _2_}}
