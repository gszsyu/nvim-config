require("mason-lspconfig").setup({
<<<<<<< HEAD
	ensure_installed = { "rust_analyzer", "lua_ls", "clangd", "tinymist", "neocmake" },
=======
	ensure_installed = { "rust_analyzer", "lua_ls", "clangd", "tinymist" },
>>>>>>> 37b385c330b8200e74cd17bb0c3510017b29254c
})

local lsp_config = vim.lsp.config

<<<<<<< HEAD
vim.lsp.enable({ "rust_analyzer", "lua_ls", "clnagd", "tinymist", "neocmake" }, true)
=======
vim.lsp.enable({ "rust_analyzer", "lua_ls", "clnagd", "tinymist" }, true)
>>>>>>> 37b385c330b8200e74cd17bb0c3510017b29254c

lsp_config("lua_ls", {
	on_init = function(client)
		if client.workspace_folders then
			local path = client.workspace_folders[1].name
			if
				path ~= vim.fn.stdpath("config")
				and (vim.uv.fs_stat(path .. "/.luarc.json") or vim.uv.fs_stat(path .. "/.luarc.jsonc"))
			then
				return
			end
		end

		client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
			runtime = {
				-- Tell the language server which version of Lua you're using (most
				-- likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
				-- Tell the language server how to find Lua modules same way as Neovim
				-- (see `:h lua-module-load`)
				path = {
					"lua/?.lua",
					"lua/?/init.lua",
				},
			},
			-- Make the server aware of Neovim runtime files
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME,
					-- Depending on the usage, you might want to add additional paths
					-- here.
					-- '${3rd}/luv/library'
					-- '${3rd}/busted/library'
				},
				-- Or pull in all of 'runtimepath'.
				-- NOTE: this is a lot slower and will cause issues when working on
				-- your own configuration.
				-- See https://github.com/neovim/nvim-lspconfig/issues/3189
				-- library = {
				--   vim.api.nvim_get_runtime_file('', true),
				-- }
			},
		})
	end,
	settings = {
		Lua = {},
	},
})

lsp_config("tinymist", {
	cmd = { "tinymist" },
	filetypes = { "typst" },
	settings = {
		root_markers = { "main.typ" },
	},
})
<<<<<<< HEAD

lsp_config("clangd", {
	cmd = { "clangd" },
	settings = {},
})

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp_config("neocmake", {
	capabilities = capabilities,
})
=======
>>>>>>> 37b385c330b8200e74cd17bb0c3510017b29254c
