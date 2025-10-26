-- [nfnl] fnl/plugins/recollect.fnl
local function _1_()
  local rec = require("recollect")
  return rec.setup({birthday = "1987-12-20", daily_notes_path = (vim.fn.expand("~") .. "/Documents/wiki/gravie/daily/")})
end
return {"jbuck95/recollect.nvim", dependencies = {"nvim-lua/plenary.nvim"}, config = _1_}
