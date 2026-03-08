-- [nfnl] fnl/plugins/gitlab.fnl
local function _1_()
  return require("gitlab.server").build(true)
end
local function _2_()
  return require("gitlab").setup()
end
return {"harrisoncramer/gitlab.nvim", dependencies = {"MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim", "sindrets/diffview.nvim", "stevearc/dressing.nvim", "nvim-tree/nvim-web-devicons"}, enabled = true, build = _1_, config = _2_}
