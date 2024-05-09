-- vim.g.material_style = 'deep ocean'
return {
	{
		"marko-cerovac/material.nvim",
		priority = 1000,
		contrast = {
			lsp_virtual_text = true,
		},
		plugins = {
			"telescope",
			"mini",
			"gitsigns",
			"nvim-web-devicons",
		},
		style = {
			comments = { bold = true },
			keywords = { undercurl = true },
			functions = { italic = true },
			strings = { bold = true },
		},
	},
}
