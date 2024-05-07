vim.o.conceallevel = 2
vim.o.pumheight = 10
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"
vim.opt.showmode = false -- Don't show mode, it's in the status line

vim.opt.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim

vim.opt.wrap = true
vim.opt.linebreak = true

vim.g.codeium_enabled = true -- enable codeium
vim.g.codeium_filetypes_disabled_by_default = true
vim.g.codeium_filetypes = {
	lua = true,
	bash = true,
	zsh = true,
	md = true,
	markdown = true,
}

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.breakindent = true

vim.opt.undodir = "/Users/gchingon/.config/nvim/undodir"
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250

vim.opt.timeoutlen = 100

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

vim.opt.cursorline = false

vim.opt.scrolloff = 20

--  See `:help vim.keymap.set()` Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
