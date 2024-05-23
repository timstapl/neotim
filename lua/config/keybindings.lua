local wk = require("which-key")
--
-- NvimTree
--
wk.register({
	["<leader>e"] = { "<cmd>NvimTreeToggle<cr>", "File Tree" },
})

--
-- Telescope
--
wk.register({
	["<leader>s"] = {
		name = "Search",
		b = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		t = { "<cmd>Telescope live_grep<cr>", "Find Text" },
    n = { "<cmd>enew<cr>", "New File" },
	}
})

--
-- Git
--
wk.register({
	["<leader>g"] = {
		name = "Git",
		g = { "<cmd>LazyGit<cr>", "LazyGit" },
	}
})

--
-- Buffers
--
wk.register({
	["<leader>b"] = {
		name = "Buffers",
		h = { "<cmd>BufferLineCyclePrev<cr>", "Previous Buffer" },
		c = { "<cmd>bd<cr>", "Close Buffer" },
		l = { "<cmd>BufferLineCycleNext<cr>", "Next Buffer" },
		w = { "<cmd>w<cr>", "Write" },
	}
})

wk.register({
	["<leader>w"] = { "<cmd>w<cr>", "Save"}
})
-- vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
