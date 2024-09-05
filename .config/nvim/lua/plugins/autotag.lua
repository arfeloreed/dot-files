return {
	"windwp/nvim-ts-autotag",
	event = { "BufReadPre", "BufNewFile" },
	-- config = true,
	config = function()
		local autotag = require("nvim-ts-autotag")

		autotag.setup({
			opts = {
				enable_rename = true,
				enable_close_on_slash = true, -- Auto close on trailing </
			},
		})
	end,
}
