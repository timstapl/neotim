-- [nfnl] lua/core/settings.fnl
vim.opt.nu = true
vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.conceallevel = 1
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 4
vim.opt.foldnestmax = 4
vim.g.markdown_fenced_languages = {"html", "python", "lua", "vim", "typescript", "javascript", "json", "mermaid", "groovy", "sql", "clojure"}
vim.g.vim_json_conceal = 0
return nil
