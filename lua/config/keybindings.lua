-- [nfnl] fnl/config/keybindings.fnl
local wk = require("which-key")
local function g(_1_)
  local keybind = _1_[1]
  local group_name = _1_[2]
  return {("<leader>" .. keybind), group = group_name}
end
local function c(_2_)
  local keybind = _2_[1]
  local command = _2_[2]
  local description = _2_[3]
  return {("<leader>" .. keybind), ("<cmd>" .. command .. "<cr>"), desc = description}
end
wk.add({c({"e", "NvimTreeToggle", "File Tree"})})
wk.add({c({"p", "Whaler", "Open Project"})})
wk.add({g({"s", "Search"}), c({"sb", "Telescope buffers", "Find Buffer"}), c({"sb", "Telescope buffers", "Find Buffer"}), c({"sf", "Telescope find_files", "Find File"}), c({"sn", "enew", "New File"}), c({"sr", "Telescope oldfiles", "Open Recent File"}), c({"st", "Telescope live_grep", "Find Text"})})
wk.add({g({"g", "Git"}), c({"gg", "LazyGit", "LazyGit"}), c({"go", "GBrowse", "Open in Gitlab"})})
wk.add({g({"b", "Buffers"}), c({"bh", "BufferLineCyclePrev", "Previous Buffer"}), c({"bc", "bw", "Close Buffer"}), c({"bl", "BufferLineCycleNext", "Next Buffer"}), c({"bw", "w", "Write"})})
wk.add({g({"f", "File"}), c({"fs", "w", "Save"})})
wk.add({c({"h", "Dashboard", "Home"})})
return vim.keymap.set("n", "'", "<cmd><cd>")
