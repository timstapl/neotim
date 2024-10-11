-- line numbers
vim.opt.nu=true
-- Clipboard
vim.opt.clipboard="unnamedplus"
-- whitespace
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.softtabstop=2
vim.opt.expandtab=true

-- Conceal for Markdown, etc
vim.opt.conceallevel=1
-- vim.opt.auto_set_syntax = true
-- vim.opt.auto_set_filetype = true
-- auto_set_syntax = true

--  Folding
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 4
vim.opt.foldnestmax = 4
-- vim.cmd(highlight Folded ctermbg=red)
-- vim.cmd([[
-- 	highlight Folded ctermbg=red
-- ]])

-- vim.cmd([[
-- 	set auto_set_syntax=true
-- 	set auto_set_filetype=true
-- ]])

vim.api.nvim_create_autocmd('BufWinEnter', {
	pattern = '*.md',
	group = vim.api.nvim_create_augroup('md_telekasten_fix', { clear = true }),
	callback = function ()
		vim.cmd([[
			set syntax=telekasten
			set filetype=markdown
		]])
	end,
})

-- let g:markdown_fenced_languages = 
vim.g.markdown_fenced_languages = {'html', 'python', 'lua', 'vim', 'typescript', 'javascript', 'json', 'crystal', 'mermaid' }
-- don't conceal quotes in json, I hate that
vim.g.vim_json_conceal=0
