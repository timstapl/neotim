-- [nfnl] fnl/plugins/wiki.fnl
return {"echaya/neowiki.nvim", opts = {wiki_dirs = {{name = "Work", path = "~/Documents/wiki/gravie"}}}, keys = {{"<leader>ww", "<cmd>lua require('neowiki').open_wiki()<cr>", desc = "Open Wiki"}, {"<leader>wW", "<cmd>lua require('neowiki').open_wiki_floating()<cr>", desc = "Open Floating Wiki"}}}
