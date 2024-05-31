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

--
-- Telekasten
--
wk.register({
	["<leader>n"] = {
		name = "Notes",
		f = { "<cmd>Telekasten find_notes<cr>", "Find Notes" },
		g = { "<cmd>Telekasten search_notes<cr>", "Search Notes" },
		d = { "<cmd>Telekasten goto_today<cr>", "Today's Note" },
		z = { "<cmd>Telekasten follow_link<cr>", "Follow Link" },
		n = { "<cmd>Telekasten new_note<cr>", "New Note" },
		c = { "<cmd>Telekasten show_calendar<cr>", "Calendar" },
		b = { "<cmd>Telekasten show_backlinks<cr>", "Backlinks" },
		I = { "<cmd>Telekasten insert_img_link<cr>", "Insert Image" },
	}
})

wk.register({
	["<leader>n"] = { "<cmd>Telekasten panel<cr>", "Notes" }
})

-- Launch panel if nothing is typed after <leader>z
-- vim.keymap.set("n", "<leader>z", "<cmd>Telekasten panel<CR>")

-- Most used functions
-- vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
-- vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
-- vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
-- vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
-- vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
-- vim.keymap.set("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>")
-- vim.keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
-- vim.keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>")

-- Call insert link automatically when we start typing a link
-- vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")


--
-- Gitlab (Going to change these)
--
local gitlab = require("gitlab")
local gitlab_server = require("gitlab.server")
vim.keymap.set("n", "glb", gitlab.choose_merge_request)
vim.keymap.set("n", "glr", gitlab.review)
vim.keymap.set("n", "gls", gitlab.summary)
vim.keymap.set("n", "glA", gitlab.approve)
vim.keymap.set("n", "glR", gitlab.revoke)
vim.keymap.set("n", "glc", gitlab.create_comment)
vim.keymap.set("v", "glc", gitlab.create_multiline_comment)
vim.keymap.set("v", "glC", gitlab.create_comment_suggestion)
vim.keymap.set("n", "glO", gitlab.create_mr)
vim.keymap.set("n", "glm", gitlab.move_to_discussion_tree_from_diagnostic)
vim.keymap.set("n", "gln", gitlab.create_note)
vim.keymap.set("n", "gld", gitlab.toggle_discussions)
vim.keymap.set("n", "glaa", gitlab.add_assignee)
vim.keymap.set("n", "glad", gitlab.delete_assignee)
vim.keymap.set("n", "glla", gitlab.add_label)
vim.keymap.set("n", "glld", gitlab.delete_label)
vim.keymap.set("n", "glra", gitlab.add_reviewer)
vim.keymap.set("n", "glrd", gitlab.delete_reviewer)
vim.keymap.set("n", "glp", gitlab.pipeline)
vim.keymap.set("n", "glo", gitlab.open_in_browser)
vim.keymap.set("n", "glM", gitlab.merge)
vim.keymap.set("n", "glu", gitlab.copy_mr_url)
vim.keymap.set("n", "glP", gitlab.publish_all_drafts)
vim.keymap.set("n", "glD", gitlab.toggle_draft_mode)
