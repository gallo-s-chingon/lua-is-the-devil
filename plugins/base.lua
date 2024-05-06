local add = MiniDeps.add

add("stevearc/conform.nvim")
local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
	},
})

-- CONFORM.NVIM Mappings
keys.map("n", "=", function()
	conform.format({ async = true, lsp_fallback = true })
end, "Format file")

add("tpope/vim-sleuth")
require("vim-sleuth").setup()

add("folke/tokyonight.nvim")
require("folke/tokyonight.nvim")

add("kblin/vim-fountain")
require("vim-fountain").setup()

add("nvim-tree/nvim-web-devicons")
require("nvim-web-devicons").setup()
