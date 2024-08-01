return {
	"windwp/nvim-ts-autotag",
	event = { "BufReadPre", "BufNewFile" },
	-- config = true,
	config = function()
		local autotag = require("nvim-ts-autotag")

		autotag.setup({
			opts = {
				enable_rename = true,
			},
		})
	end,
}
