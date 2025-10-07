local dap = require("dap")

dap.adapters["rust-gdb"] = {
	type = "executable",
	command = "/Users/guozongyu/.cargo/bin/rust-gdb",
	args = { "--interpreter=dap" },
}

dap.configurations.rust = require("plugins.nvim-dap.rust-dap")
