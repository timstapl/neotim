-- [nfnl] fnl/plugins.fnl
local lazypath = (vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({"git", "clone", "--filter=blob:none", "--single-branch", "https://github.com/folke/lazy.nvim.git", lazypath})
else
end
vim.opt.runtimepath:prepend(lazypath)
local lazy = require("lazy")
return lazy.setup({require("plugins.nfnl"), require("plugins.nui"), require("plugins.lspconfig"), require("plugins.treesitter"), require("plugins.luasnip"), require("plugins.mason"), require("plugins.cmp"), require("plugins.gruvbox"), require("plugins.dashboard"), require("plugins.ccc"), require("plugins.bufferline"), require("plugins.lualine"), require("plugins.noice"), require("plugins.lazygit"), require("plugins.fugitive"), require("plugins.gitsigns"), require("plugins.telescope"), require("plugins.mini"), require("plugins.tmux"), require("plugins.nvimtree"), require("plugins.nerdtree"), require("plugins.toggleterm"), require("plugins.trouble"), require("plugins.ufo"), require("plugins.inline-diagnostic"), require("plugins.dap"), require("plugins.markdown_preview"), require("plugins.follow_md_links"), require("plugins.wiki"), require("plugins.recollect"), require("plugins.fennel"), require("plugins.markdown"), require("plugins.poetry"), require("plugins.elixir"), require("plugins.dispatch"), require("plugins.conjure"), require("plugins.jack-in"), require("plugins.whichkey"), require("plugins.dadbod"), require("plugins.dbout"), require("plugins.todo-comments"), require("plugins.encourage"), require("plugins.zen"), require("plugins.strudel"), require("plugins.surround"), require("plugins.repeat"), require("plugins.jira"), require("plugins.whaler"), require("plugins.wrapped")})
