return {
	-- "folke/tokyonight.nvim",
	-- "bettervim/yugen.nvim",
	"fenetikm/falcon",
	-- "EdenEast/nightfox.nvim",
	-- "sainnhe/everforest",
	-- "adamkali/vaporlush",
	-- dependencies = { "rktjmp/lush.nvim" },
	-- lazy = false,
	-- priority = 1000,
	config = function()
		vim.cmd([[colorscheme falcon]])
	end,
}
