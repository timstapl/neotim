-- [nfnl] fnl/plugins/atlas.fnl
local function _1_()
  local atlas = require("atlas")
  return atlas.setup({jira = {base_url = os.getenv(""), email = os.getenv(""), token = os.getenv("")}})
end
return {"emrearmagan/atlas.nvim", dependencies = {"MeanderingProgrammer/render-markdown.nvim"}, config = _1_}
