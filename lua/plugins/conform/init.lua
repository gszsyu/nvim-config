local list = {
	"fixjson",
	"markdown-toc",
	"tombi",
}

local packer_path = vim.fn.stdpath("data") .. "/mason/bin/"

for _, v in ipairs(list) do
	if vim.fn.findfile(v, packer_path) == "" then
		vim.cmd("MasonInstall" .. " " .. v)
	end
end

require("plugins.conform.conform")
