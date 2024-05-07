local add = MiniDeps.add

add("tpope/vim-fugitive")

add("echasnovski/mini.diff")
require("mini.diff").setup({
	view = {
		style = "sign",
		signs = { add = "+", change = "~", delete = "-" },
	},
})

