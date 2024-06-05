-------------------
---  Lazy Nvim  ---
-------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- install lazy
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--single-branch",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.runtimepath:prepend(lazypath)

-- use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
	print("lazy just installed, please restart neovim")
	return
end

--
-- Plugins
--
lazy.setup({
	---
	--- Deps
	---
	require("plugins.nui"),

	---
	--- LSP / Completion
	---
	require("plugins.lspconfig"),
	require("plugins.treesitter"),
	require("plugins.luasnip"),
	require("plugins.mason"),
	require("plugins.cmp"),

	---
	--- Style
	---
	require("plugins.nordic"),
	require("plugins.dashboard"),
	require("plugins.ccc"),
	require("plugins.bufferline"),
	require("plugins.lualine"),
	require("plugins.noice"),

	---
	--- Utils
	---
	require("plugins.telescope"),
	require("plugins.mini"),
	require("plugins.tmux"),
	require("plugins.nvimtree"),
	require("plugins.toggleterm"),
	require("plugins.lazygit"),
	require("plugins.fugitive"),
	require("plugins.gitlab"),
	require("plugins.markdown_preview"),
	require("plugins.telekasten"),


	---
	--- Languages
	---
	require("plugins.crystal"),
	-- require("plugins.markdown"),

	---
	--- Keybinds
	---
	require("plugins.whichkey"),
})

