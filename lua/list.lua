-- Add to current session (install if absent)

local add = MiniDeps.add

add({
	source = "gszsyu/base46",
})

add({
	source = "nvim-mini/mini.pairs",
})

add({
	source = "stevearc/conform.nvim",
})

add({
	source = "neovim/nvim-lspconfig",
	depends = { "mason-org/mason-lspconfig.nvim" },
})

add({
	source = "folke/noice.nvim",
})

add({
	source = "nvim-telescope/telescope.nvim",
})

add({
	source = "mason-org/mason.nvim",
})

add({
	source = "L3MON4D3/LuaSnip",
})

add({
	source = "rachartier/tiny-inline-diagnostic.nvim",
})

add({
	source = "Saghen/blink.cmp",
	hooks = {
		post_checkout = function(params)
			vim.system({ "cargo", "build", "--release" }, { cwd = params.path }):wait()
		end,
		post_install = function(params)
			vim.system({ "cargo", "build", "--release" }, { cwd = params.path }):wait()
		end,
	},

	depends = { "L3MON4D3/LuaSnip" },
})

add({
	source = "nvim-treesitter/nvim-treesitter",
	-- Use 'master' while monitoring updates in 'main'
	checkout = "master",
	monitor = "main",
	-- Perform action after every checkout
	hooks = {
		post_checkout = function()
			vim.cmd("TSUpdate")
		end,
	},
})

add({
	source = "nvim-mini/mini.icons",
})

add({
	source = "folke/which-key.nvim",
})

add({
	source = "MunifTanjim/nui.nvim",
})

add({
	source = "nvzone/volt",
})

add({
	source = "dstein64/vim-startuptime",
})

add({
	source = "gszsyu/ui",
})

add({
	source = "nvim-tree/nvim-tree.lua",
})

add({
	source = "nvim-lua/plenary.nvim",
})

add({
	source = "nvim-tree/nvim-web-devicons",
})

add({
	source = "kevinhwang91/nvim-ufo",
	depends = { "kevinhwang91/promise-async" },
})

add({
	source = "kevinhwang91/nvim-hlslens",
})

add({
	source = "nvim-mini/mini.ai",
	name = "mini-ai",
})

add({
	source = "folke/edgy.nvim",
})

add({
	source = "akinsho/toggleterm.nvim",
})

add({
	source = "nvim-mini/mini.animate",
})

require("plugins")
