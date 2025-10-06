-- default config
require("bigfile").setup({
	filesize = 10, -- size of the file in MiB, the plugin round file sizes to the closest MiB
	pattern = { "*" }, -- autocmd pattern or function see <### Overriding the detection of big files>
})
