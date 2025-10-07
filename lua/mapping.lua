vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("v", "<C-c>", "y", { desc = "Copy" })
map("n", "<C-v>", "p", { desc = "Paste shortcut" })
map("v", "<C-x>", "x", { desc = "Cut" })
map("n", "<C-z>", "u", { desc = "Undo" })
map("n", "<C-y>", "<C-r>", { desc = "Redo" })
map("n", "<C-a>", "gg0v<S-g>$", { desc = "Select All" })

map("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })

map("n", "<leader>i", ":ToggleTerm<cr>", { desc = "Open ToggleTerm Terminal" })

map("n", "<leader>t", ":NvimTreeFocus<cr>", { silent = true, noremap = true, desc = "NvimTreeFocus" })

if require("chadrc").ui.tabufline.enabled then
	map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })

	map("n", "<tab>", function()
		require("nvchad.tabufline").next()
	end, { desc = "buffer goto next" })

	map("n", "<S-tab>", function()
		require("nvchad.tabufline").prev()
	end, { desc = "buffer goto prev" })

	map("n", "<leader>q", function()
		require("nvchad.tabufline").close_buffer()
	end, { desc = "buffer close" })
end

map("n", "<leader>h", function()
	require("nvchad.themes").open()
end, { desc = "telescope nvchad themes" })
