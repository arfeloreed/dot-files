return {
	-- rose-pine setup
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = function()
		-- load the colorscheme here
		vim.cmd("colorscheme rose-pine-main")
	end,
}
