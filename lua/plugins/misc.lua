return {
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			colors = {
				theme = {
					all = {
						ui = {
							bg_gutter = "none",
						},
					},
				},
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "kanagawa-dragon",
		},
	},
	{ "brenoprata10/nvim-highlight-colors" },
}
