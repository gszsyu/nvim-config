-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
	live_filter = {
		prefix = "[FILTER]: ",
		always_show_folders = false, -- Turn into false from true by default
	},
})

local treeutils = require("plugins.nvimTree.treeutils")

vim.keymap.set("n", "<c-f>", treeutils.launch_find_files, { desc = "Launch Find Files" })
vim.keymap.set("n", "<c-g>", treeutils.launch_live_grep, { desc = "Launch Live Grep" })
