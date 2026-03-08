-- [nfnl] fnl/plugins/bufferline.fnl
local function _1_()
  local bufferline = require("bufferline")
  local function _2_(_count, _level, diagnostics_dict, _context)
    local s = " "
    for key, value in pairs(diagnostics_dict) do
      local sym
      if (key == "error") then
        sym = "\239\129\151 "
      elseif (key == "warning") then
        sym = "\239\129\177 "
      else
        sym = "\239\132\169"
      end
      s = (s .. value .. sym)
    end
    return s
  end
  return bufferline.setup({options = {separator_style = "slant", diagnostics = "nvim_lsp", offsets = {{filetype = "NvimTree", text = "Nvim Tree", separator = true, text_align = "left"}}, diagnostics_indicator = _2_}})
end
return {"akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons", config = _1_}
