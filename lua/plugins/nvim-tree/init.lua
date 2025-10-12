-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.b.completion = false

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	-- 	vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
	vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))

	local treeutils = require("plugins.nvim-tree.treeutils")
	vim.keymap.set("n", "<c-f>", treeutils.launch_find_files, opts("Launch Find Files"))
	vim.keymap.set("n", "<c-g>", treeutils.launch_live_grep, opts("Launch Live Grep"))
end

-- OR setup with some options
require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 33,
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
	on_attach = my_on_attach,
})
