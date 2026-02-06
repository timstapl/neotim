-- [nfnl] fnl/plugins/dbee.fnl
local function _1_()
  local dbee = require("dbee")
  return dbee.install("go")
end
local function _2_()
  local dbee = require("dbee")
  local src = require("dbee.sources")
  return dbee.setup({sources = {src.FileSource:new((vim.fn.stdpath("cache") .. "/dbee/persistence.json")), src.EnvSource:new("DBEE_CONNECTIONS")}})
end
return {"kndndrj/nvim-dbee", requires = {"MunifTanjim/nui.nvim"}, build = _1_, config = _2_}
