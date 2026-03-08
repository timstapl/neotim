-- [nfnl] fnl/plugins/mason.fnl
local function _1_()
  return require("mason").setup()
end
local function _2_()
  local function _3_(event)
    local opts = {buffer = event.buf}
    local function _4_()
      return vim.lsp.buf.definition()
    end
    vim.keymap.set("n", "gd", _4_, opts)
    local function _5_()
      return vim.lsp.buf.hover()
    end
    vim.keymap.set("n", "K", _5_, opts)
    local function _6_()
      return vim.lsp.buf.workspace_symbol()
    end
    vim.keymap.set("n", "<leader>vws", _6_, opts)
    local function _7_()
      return vim.lsp.buf.open_float()
    end
    vim.keymap.set("n", "<leader>vd", _7_, opts)
    local function _8_()
      return vim.lsp.buf.goto_next()
    end
    vim.keymap.set("n", "[d", _8_, opts)
    local function _9_()
      return vim.lsp.buf.goto_prev()
    end
    vim.keymap.set("n", "]d", _9_, opts)
    local function _10_()
      return vim.lsp.buf.code_action()
    end
    vim.keymap.set("n", "<leader>vca", _10_, opts)
    local function _11_()
      return vim.lsp.buf.references()
    end
    vim.keymap.set("n", "<leader>vrr", _11_, opts)
    local function _12_()
      return vim.lsp.buf.rename()
    end
    vim.keymap.set("n", "<leader>vrn", _12_, opts)
    local function _13_()
      return vim.lsp.buf.signature_help()
    end
    return vim.keymap.set("i", "<C-h>", _13_, opts)
  end
  vim.api.nvim_create_autocmd("LspAttach", {group = vim.api.nvim_create_augroup("user_lsp_attach", {clear = true}), callback = _3_})
  local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities
  local function _14_(server_name)
    return require("lspconfig")[server_name].setup({capabilities = lsp_capabilities})
  end
  local function _15_()
    return require("lspconfig").lua_ls.setup({capabilities = lsp_capabilities, settings = {Lua = {runtime = {version = "LuaJIT"}, diagnostics = {globals = {"vim"}}, workspace = {library = {vim.env.VIMRUNTIME}}}}})
  end
  return require("mason-lspconfig").setup({ensure_installed = {"crystalline", "tailwindcss", "taplo", "rust_analyzer", "lua_ls", "jsonls", "clangd", "markdown_oxide"}, handers = {_14_, lua_ls = _15_}})
end
return {{"williamboman/mason.nvim", config = _1_}, {"williamboman/mason-lspconfig.nvim", config = _2_}}
