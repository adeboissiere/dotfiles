return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.icons")
		require("mini.pairs").setup()
		-- require("mini.comment").setup()
		-- require("mini.diff").setup()
		-- require("mini.surround").setup()
	end,
}
