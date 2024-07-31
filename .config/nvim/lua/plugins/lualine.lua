return {
	"nvim-lualine/lualine.nvim",
	event = "ColorScheme",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- config = true, -- require('lualine').setup()
	config = function()
		local lualine = require("lualine")

		lualine.setup({
			options = {
				--- @usage 'rose-pine' | 'rose-pine-alt'
				theme = "rose-pine",
			},
		})
	end,
}
