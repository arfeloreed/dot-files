return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local configs = require("nvim-treesitter.configs")
		local autotag = require("nvim-ts-autotag")

		configs.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"markdown_inline",
				"python",
				"javascript",
				"go",
				"html",
				"css",
			},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>", -- bs = backspace
				},
			},
		})

		autotag.setup({
			opts = {
				-- Defaults
				-- enable_close = true, -- Auto close tags
				-- enable_rename = true, -- Auto rename pairs of tags
				-- enable_close_on_slash = false, -- Auto close on trailing </
			},
			-- Also override individual filetype configs, these take priority.
			-- Empty by default, useful if one of the "opts" global settings
			-- doesn't work well in a specific filetype
			-- per_filetype = {
			-- 	["html"] = {
			-- 		enable_close = false,
			-- 	},
			-- },
		})
	end,
}
