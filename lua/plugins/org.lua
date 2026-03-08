-- [nfnl] fnl/plugins/org.fnl
local function _1_()
  return require("orgmode").setup({org_agenda_files = "~/org/**/*", org_default_notes_file = "~/org/refile.org", emacs_config = {executable_path = "/usr/bin/emacs"}})
end
return {"nvim-orgmode/orgmode", event = "VeryLazy", ft = {"org"}, config = _1_}
