-- [nfnl] fnl/plugins/tmux.fnl
local function _1_()
  return require("nvim-tmux-navigation").setup({disable_when_zoomed = true, keybindings = {left = "<C-h>", down = "<C-j>", up = "<C-k>", right = "<C-l>", last_active = "<C-\\>", next = "<C-Space>"}})
end
return {"alexghergh/nvim-tmux-navigation", config = _1_}
