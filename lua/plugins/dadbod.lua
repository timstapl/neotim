-- [nfnl] fnl/plugins/dadbod.fnl
local function _1_()
  vim.g.db_ui_use_nerd_fonts = 1
  vim.g.db_ui_env_variable_url = "DATABASE_URL"
  vim.g.db_ui_env_variable_name = "DATABASE_NAME"
  return nil
end
return {{"tpope/vim-dadbod"}, {"kristijanhusak/vim-dadbod-ui", dependencies = {{"tpope/vim-dadbod", lazy = true}, {"kristijanhusak/vim-dadbod-completion", ft = {"sql", "mysql", "plsql"}, lazy = true}}, cmd = {"DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer"}, init = _1_}}
