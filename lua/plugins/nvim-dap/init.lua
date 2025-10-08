local dap = require("dap")

-- lldb-dap
dap.adapters.lldb = {
	type = "executable",
	command = "lldb-dap", -- adjust as needed, must be absolute path
	name = "lldb",
}

dap.configurations.cpp = require("plugins.nvim-dap.cpp-dap")
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = require("plugins.nvim-dap.rust-dap")
