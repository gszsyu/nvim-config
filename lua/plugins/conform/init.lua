local list = {
	"fixjson",
	"markdown-toc",
	"tombi",
	"typstyle",
}

local packer_path = vim.fn.stdpath("data") .. "/mason/bin/"

local function FormatSync()
	for _, v in ipairs(list) do
		if vim.fn.findfile(v, packer_path) == "" then
			vim.cmd("MasonInstall" .. " " .. v)
		end
	end
	vim.notify("Aleardy have been install", vim.log.levels.INFO)
end

vim.api.nvim_create_user_command("FormatSync", FormatSync, {})

require("plugins.conform.conform")
