vim.o.cole = 2 -- conceal level
vim.o.pumheight = 5 -- max number of items visible in popup window
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = true -- highlight search term
vim.opt.mouse = "a" -- Enable mouse support
vim.opt.showmode = false -- Hide mode, it's in the status line
vim.opt.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim
vim.opt.wrap = true -- Enable line wrapping
vim.opt.linebreak = true --  and breaking
vim.g.codeium_enabled = true
vim.g.codeium_filetypes_disabled_by_default = true
vim.g.codeium_filetypes = {
	lua = true,
	bash = true,
	zsh = true,
	md = true,
	markdown = true,
}
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.breakindent = true
vim.opt.undofile = true -- Enable undo history
vim.opt.ignorecase = true -- Case-insensitive searching
vim.opt.smartcase = true -- unless \C or one or more capital letters in the search term
vim.opt.signcolumn = "yes" -- Show sign column
vim.opt.updatetime = 250 -- Set update time
vim.opt.timeoutlen = 100 --  and timeout length
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true -- Set list options
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.inccommand = "split" -- Preview substitutions live, as you type
vim.opt.cursorline = false -- Set cursor line
vim.opt.scrolloff = 10 -- Set scroll offset
vim.api.nvim_create_autocmd("FileType", {
	pattern = "sh",
	callback = function()
		vim.lsp.start({
			name = "bash-language-server",
			cmd = { "bash-language-server", "start" },
		})
	end,
})
