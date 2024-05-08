local add = MiniDeps.add

-- nvim-treesitter
add({
	source = "nvim-treesitter/nvim-treesitter",
	hooks = { post_checkout = vim.cmd.TSUpdate },
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
})

vim.api.nvim_set_hl(0, "TreesitterContext", { link = "CursorLine" })
