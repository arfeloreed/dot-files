return {
	"roobert/tailwindcss-colorizer-cmp.nvim",
	event = { "InsertEnter" },
	-- optionally, override the default options:
	config = function()
		local tailwindCmp = require("tailwindcss-colorizer-cmp")

		tailwindCmp.setup({
			color_square_width = 2,
		})

		local cmp = require("cmp")

		cmp.setup({
			formatting = {
				format = tailwindCmp.formatter,
			},
		})
	end,
}
