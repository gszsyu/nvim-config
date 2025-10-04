require("autocommand")
require("basicsetting")
require("mapping")

if pcall(require, "mason") then
	require("mason").setup()
	require("rocks-config")
else
	vim.cmd("Rocks sync")
end
