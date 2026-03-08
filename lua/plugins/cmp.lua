-- [nfnl] fnl/plugins/cmp.fnl
local function _1_()
  local cmp = require("cmp")
  local cmp_select = {behavior = cmp.SelectBehavior.Select}
  local function _2_(args)
    return require("cmp_luasnip").lsp_expand(args.body)
  end
  local function _3_(entry, vim_item)
    vim_item.menu = ({rg = "[Rg]", buffer = "[Buffer]", nvim_lsp = "[LSP]", vsnip = "[Snippet]", tags = "[Tag]", path = "[Path]", orgmode = "[Org]", ["vim-dadbod-completion"] = "[DB]"})[entry.source.name]
    return vim_item
  end
  return cmp.setup({sources = {{name = "path"}, {name = "nvim_lsp", option = {}}, {name = "vim-dadbod-completion"}, {name = "luasnip", keyword_length = 2}, {name = "buffer", keyword_length = 3}}, mapping = cmp.mapping.preset.insert({["<C-p>"] = cmp.mapping.select_prev_item(cmp_select), ["<C-n>"] = cmp.mapping.select_next_item(cmp_select), ["<C-y>"] = cmp.mapping.confirm({select = true}), ["<C-Space>"] = cmp.mapping.complete()}), window = {completion = cmp.config.window.bordered(), documentation = cmp.config.window.bordered()}, snippet = {expand = _2_}, formatting = {format = _3_}})
end
return {"hrsh7th/nvim-cmp", dependencies = {"hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path", "saadparwaiz1/cmp_luasnip", "kristijanhusak/vim-dadbod-completion"}, config = _1_}
