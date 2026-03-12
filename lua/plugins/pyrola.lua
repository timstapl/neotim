-- [nfnl] fnl/plugins/pyrola.fnl
local function _1_()
  local pyrola = require("pyrola")
  pyrola.setup({kernel_map = {python = "py3", r = "ir"}, split_ratio = 0.65, image = {cell_width = 10, cell_height = 20, max_width_ratio = 0.5, max_height_ratio = 0.5, offset_row = 0, offset_col = 0}, split_horizontal = false})
  local function _2_()
    return pyrola.send_statement_definition()
  end
  vim.keymap.set("n", "<CR>", _2_, {noremap = true})
  local function _3_()
    return pyrola.send_visual_to_repl()
  end
  vim.keymap.set("v", "<leader>vs", _3_, {noremap = true})
  local function _4_()
    return pyrola.send_buffer_to_repl()
  end
  vim.keymap.set("v", "<leader>vb", _4_, {noremap = true})
  local function _5_()
    return pyrola.inspect()
  end
  vim.keymap.set("v", "<leader>is", _5_, {noremap = true})
  local function _6_()
    return pyrola.open_history_manager()
  end
  return vim.keymap.set("v", "<leader>im", _6_, {noremap = true})
end
return {"matarina/pyrola.nvim", dependencies = {"nvim-treesitter/nvim-treesitter"}, build = ":UpdateRemotePlugins", config = _1_}
