--------------------------------
---  Init.lua  -----------------
-- Include other config files --
--------------------------------
require("core.mappings")
require("core.settings")

require("plugins")

require("core.theme")

require("config.keybindings")

if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here
    require("core.neovide")
end
