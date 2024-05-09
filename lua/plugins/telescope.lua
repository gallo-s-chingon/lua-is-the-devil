return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		{
			"nvim-telescope/telescope-ui-select.nvim",
		},
		{
			"nvim-tree/nvim-web-devicons",
			enabled = vim.g.have_nerd_font,
		},
	},
	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})

		-- Telescope binds
		-- bind("n", "<leader>h", require("telescope.builtin").help_tags, { desc = "Search [h]elp" })
		-- bind("n", "<Leader>b", require("telescope.builtin").buffers, { desc = "[b]uffer Find" })
		-- bind("n", "<leader>S", require("telescope.builtin").spell_suggest, { desc = "[S]pell suggest" })
		-- bind("n", "<leader>y", require("telescope.builtin").command_history, { desc = "command histor[y]" })
		-- bind("n", "<leader>k", require("telescope.builtin").binds, { desc = "search [k]eymaps" })
		-- bind("n", "<leader>/", require("telescope.builtin").find_files, { desc = "Find Files [/]" })
		-- bind("n", "<leader>w", require("telescope.builtin").grep_string, { desc = "Search current [w]ord" })
		-- bind("n", "<leader>r", require("telescope.builtin").live_grep, { desc = "Search by G[r]ep" })
		-- bind("n", "<leader>d", require("telescope.builtin").diagnostics, { desc = "Search [d]iagnostics" })

		-- Enable Telescope extensions if they are installed
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")
	end,
}
