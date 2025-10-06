local options = {
	-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
	-- 'super-tab' for mappings similar to vscode (tab to accept)

	-- 'enter' for enter to accept
	-- 'none' for no mappings
	--
	-- All presets have the following mappings:
	-- C-space: Open menu or open docs if already open
	-- C-n/C-p or Up/Down: Select next/previous item
	-- C-e: Hide menu
	-- C-k: Toggle signature help (if signature.enabled = true)
	--
	-- See :h blink-cmp-config-keymap for defining your own keymap

	snippets = { preset = "luasnip" },

	keymap = {
		preset = "none",

		["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
		["<Esc>"] = { "hide", "fallback" },
		["<cr>"] = { "select_and_accept", "fallback" },

		["<Up>"] = { "select_prev", "fallback" },
		["<Tab-S>"] = { "select_prev", "fallback" },
		["<tab>"] = { "select_next", "fallback" },
		-- ["<Down>"] = { "select_next", "fallback" },
		-- ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
		-- ["<C-n>"] = { "select_next", "fallback_to_mappings" },

		["<C-u>"] = { "scroll_documentation_up", "fallback" },
		["<C-d>"] = { "scroll_documentation_down", "fallback" },

		["<Tab>"] = { "snippet_forward", "fallback" },
		["<S-tab>"] = { "snippet_backward", "fallback" },

		["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
	},

	appearance = {
		-- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
		-- Adjusts spacing to ensure icons are aligned
		nerd_font_variant = "Nerd Font",
	},

	-- (Default) Only show the documentation popup when manually triggered
	completion = {
		documentation = { auto_show = false },

		list = {
			selection = {
				preselect = true,
				auto_insert = false,
			},
		},
	},

	-- Default list of enabled providers defined so that you can extend it
	-- elsewhere in your config, without redefining it, due to `opts_extend`
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},

	-- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
	-- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
	-- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
	--
	-- See the fuzzy documentation for more information
	fuzzy = { implementation = "prefer_rust_with_warning" },

	cmdline = {
		keymap = {
			preset = "inherit",

			["<Esc>"] = {},

			["<C-e>"] = { "hide", "fallback" },

			["<cr>"] = { "accept", "fallback" },
		},
		completion = {
			menu = { auto_show = true },
			ghost_text = { enabled = true },
			list = {
				selection = {
					-- When `true`, will automatically select the first item in the completion list
					preselect = false,
					-- When `true`, inserts the completion item automatically when selecting it
					auto_insert = false,
				},
			},
		},
	},
}

local opts = vim.tbl_deep_extend("force", options, require("nvchad.blink.config"))

require("blink-cmp").setup(opts)
