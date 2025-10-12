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

map(
	"n",
	"<leader>G",
	"<S-g><C-u><C-f><S-g>",
	{ desc = "Navigate to the end of the line and scroll down half the screen" }
)

local dap = require("dap")
-- 设置断点（带条件）
map("n", "<leader>dB", function()
	dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, { desc = "Breakpoint Condition" })

-- 切换断点
map("n", "<leader>db", function()
	dap.toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })

-- 运行/继续
map("n", "<leader>dc", function()
	dap.continue()
end, { desc = "Run/Continue" })

-- 运行到光标处
map("n", "<leader>dC", function()
	dap.run_to_cursor()
end, { desc = "Run to Cursor" })

-- 跳转到行（不执行）
map("n", "<leader>dg", function()
	dap.goto_()
end, { desc = "Go to Line (No Execute)" })

-- 单步进入
map("n", "<leader>di", function()
	dap.step_into()
end, { desc = "Step Into" })

-- 向下
map("n", "<leader>dj", function()
	dap.down()
end, { desc = "Down" })

-- 向上
map("n", "<leader>dk", function()
	dap.up()
end, { desc = "Up" })

-- 运行上次的配置
map("n", "<leader>dl", function()
	dap.run_last()
end, { desc = "Run Last" })

-- 单步退出
map("n", "<leader>do", function()
	dap.step_out()
end, { desc = "Step Out" })

-- 单步跳过
map("n", "<leader>dO", function()
	dap.step_over()
end, { desc = "Step Over" })

-- 暂停
map("n", "<leader>dP", function()
	dap.pause()
end, { desc = "Pause" })

-- 切换 REPL
map("n", "<leader>dr", function()
	dap.repl.toggle()
end, { desc = "Toggle REPL" })

-- 会话信息
map("n", "<leader>ds", function()
	dap.session()
end, { desc = "Session" })

-- 终止调试
map("n", "<leader>dt", function()
	dap.terminate()
end, { desc = "Terminate" })

-- 调试 widgets 悬浮提示
map("n", "<leader>dw", function()
	require("dap.ui.widgets").hover()
end, { desc = "Widgets" })

map("n", "<leader>i", ":ToggleTerm<cr>", { desc = "Open ToggleTerm Terminal" })
map("n", "<leader>t", ":NvimTreeFocus<cr>", { silent = true, noremap = true, desc = "NvimTreeFocus" })

if require("chadrc").ui.tabufline.enabled then
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
