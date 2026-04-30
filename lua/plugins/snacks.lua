-- [nfnl] fnl/plugins/snacks.fnl
local function _1_(_lang, type)
  return (type == "math")
end
return {"folke/snacks.nvim", opts = {image = {enabled = true, doc = {enabled = true, inline = true, conceal = _1_}}}}
