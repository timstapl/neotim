-- [nfnl] fnl/plugins/telekasten.fnl
local function _1_()
  return require("telekasten").setup({home = vim.fn.expand("~/Documents/wiki/gravie"), dailies = vim.fn.expand("~/Documents/wiki/gravie/daily"), weeklies = vim.fn.expand("~/Documents/wiki/gravie/weekly"), templates = vim.fn.expand("~/Documents/wiki/gravie/templates"), template_new_daily = vim.fn.expand("~/Documents/wiki/gravie/templates/daily.md"), auto_set_syntax = true, image_subdir = "attachments", new_note_filename = "title-uuid", uuid_type = "rand", uuid_sep = "-", journal_auto_open = true, install_syntax = true, tag_notation = "#tag", media_previewer = "viu-previewer", auto_set_filetype = false, take_over_my_home = false})
end
return {"renerocksai/telekasten.nvim", dependencies = {"nvim-telescope/telescope.nvim", "nvim-telekasten/calendar-vim"}, config = _1_}
