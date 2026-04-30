-- [nfnl] fnl/plugins/themes.fnl
local function _1_()
  local ember = require("ember")
  return ember.setup({variant = "ember"})
end
return {{"sainnhe/gruvbox-material"}, {"ember-theme/nvim", name = "ember", priority = 1000, config = _1_}, {"catppuccin/nvim", name = "catppuccin", priority = 1000}, {"sainnhe/everforest", name = "everforest", priority = 1000}, {"savq/melange-nvim", name = "melange", priority = 1000}, {"xero/miasma.nvim", name = "miasma", priority = 1000}, {"ramojus/mellifluous.nvim", name = "mellifluous", priority = 1000}, {"kdheepak/monochrome.nvim", name = "monochrome", priority = 1000}, {"dracula/vim", name = "dracula", priority = 1000}, {"shaunsingh/nord.nvim", name = "nord", priority = 1000}}
