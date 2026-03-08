-- [nfnl] fnl/plugins/telescope.fnl
local function _1_()
  return require("telescope").load_extension("media_files")
end
return {{"nvim-telescope/telescope-symbols.nvim"}, {"nvim-telescope/telescope-media-files.nvim"}, {"nvim-telescope/telescope.nvim", dependencies = {"nvim-lua/plenary.nvim"}, config = _1_}}
