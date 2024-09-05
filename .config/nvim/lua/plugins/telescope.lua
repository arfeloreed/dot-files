return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},
	config = function()
		-- telescope setup, also install ripgrep via brew or apt
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")
		telescope.load_extension("fzf")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cwd" })
		vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find files in git dir" })
		vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find string in cwd" })
		vim.keymap.set(
			"n",
			"<leader>fc",
			"<cmd>Telescope grep_string<cr>",
			{ desc = "Find string under cursor in cwd" }
		)
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find files in buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Show help" })
		vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
	end,
}
