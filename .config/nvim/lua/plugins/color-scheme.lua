-- transparent nvim
function Transparent(color)
	color = color
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	-- rose-pine setup
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = function()
		-- load the colorscheme here
		vim.cmd("colorscheme rose-pine-main")
		Transparent("rose-pine")
	end,
}
