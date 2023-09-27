return {
	"rebelot/kanagawa.nvim",
	priority = 1000, -- load before all other plugins
	config = function()
		vim.cmd("colorscheme kanagawa")
	end
}
