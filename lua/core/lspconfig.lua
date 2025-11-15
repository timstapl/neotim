-- [nfnl] fnl/core/lspconfig.fnl
local nvimlsp = require("cmp_nvim_lsp")
local capabilities = nvimlsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconf = require("lspconfig")
local function check_codelens_support()
  local clients = vim.lsp.get_active_clients({bufnr = 0})
  for _, v in ipairs(clients) do
    if v.server_capabilities.codeLensProvider() then
    else
    end
  end
  return nil
end
local function _2_()
  if check_codelens_support() then
    return vim.lsp.codelens.refresh({bufnr = 0})
  else
    return nil
  end
end
vim.api.nvim_create_autocmd({"TextChanged", "InsertLeave", "CursorHold", "LspAttach", "BufEnter"}, {buffer = 0, callback = _2_})
local function _4_()
end
return lspconf.markdown_oxide.setup({capabilities = vim.tbl_deep_extend("force", capabilities, {workspace = {didChangeWatchedFiles = {dynamicRegistration = true}}}), on_attach = _4_})
