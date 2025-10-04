require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- You can customize some of the format options for the filetype (:help conform.format)
		rust = { "rustfmt", lsp_format = "first" },
		markdown = { "markdownfmt", lsp_format = "first" },
		tombi = { "tombi", lsp_format = "fallback" },
		fixjson = { "fixjson", lsp_format = "fallback" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
