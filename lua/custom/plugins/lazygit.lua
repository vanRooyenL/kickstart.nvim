return {
	"kdheepak/lazygit.nvim",
	lazy = true,
	cmd = {
		"LazyGit",
		"LazygitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	-- optional for floating window border decoration
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	-- setting the keybinding for LazyGit with 'keys' ls is recommended in
	-- order to load the pluginb when the command is run for the first time
	keys = {
		{"<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit"},
	}
	
}
