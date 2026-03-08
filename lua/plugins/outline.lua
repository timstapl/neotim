-- [nfnl] fnl/plugins/outline.fnl
local function _1_()
  vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", {desc = "Toggle Outline"})
  return require("outline").setup({})
end
return {"hedyhli/outline.nvim", config = _1_}
