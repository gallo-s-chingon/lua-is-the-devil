local add = MiniDeps.add

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = "rounded",
})

vim.diagnostic.config({
	float = { border = "rounded" },
	update_in_insert = true,
	virtual_text = false,
})

-- Mason
add({
	source = "williamboman/mason-lspconfig.nvim",
	depends = { "williamboman/mason.nvim", "neovim/nvim-lspconfig", "WhoIsSethDaniel/mason-tool-installer.nvim" },
})

-- Add documentation for nvim-lua api and plugins
add("folke/neodev.nvim")
require("neodev").setup()

-- Mason
require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "pyright", "tsserver" },
})

require("mason-lspconfig").setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({})
	end,

	["lua_ls"] = function()
		require("lspconfig").lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},

					hint = { enable = true },
				},
			},
		})
	end,
})

local function lsp(scope)
	return function()
		MiniExtra.pickers.lsp({ scope = scope })
	end
end

local function diagnostic(scope)
	return function()
		MiniExtra.pickers.diagnostic({ scope = scope })
	end
end
