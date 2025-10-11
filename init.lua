-- [nfnl] init.fnl
require("core.mappings")
require("core.settings")
require("plugins")
require("core.theme")
require("config.keybindings")
if vim.g.neovide then
  return require("core.neovide")
else
  return nil
end
