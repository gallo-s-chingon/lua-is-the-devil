local function augroup(name)
	return vim.api.nvim_create_augroup("plugins" .. name, { clear = true })
end

local autocmd = vim.api.nvim_create_autocmd

-- Check if we need to reload the file when it changed
autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
	group = augroup("Checktime"),
	command = "checktime",
})

-- Highlight on yank
autocmd("TextYankPost", {
	group = augroup("HighlightYank"),
	callback = function()
		vim.highlight.on_yank({
			higroup = "Visual",
			timeout = 200,
			on_visual = false,
		})
	end,
})

-- resize splits if window got resized
autocmd({ "VimResized" }, {
	group = augroup("resize_splits"),
	callback = function()
		vim.cmd("tabdo wincmd =")
	end,
})

-- Don't display line numbers for certain filetypes
autocmd("FileType", {
	group = augroup("NoLineNumber"),
	pattern = { "fugitive", "qf", "gitcommit" },
	callback = function()
		vim.opt_local.number = false
		vim.opt_local.relativenumber = false
	end,
})

-- wrap and check for spell in text filetypes
autocmd("FileType", {
	group = augroup("WrapSpell"),
	pattern = { "gitcommit", "html", "markdown", "typescriptreact" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})

autocmd("FileType", {
	group = augroup("format_options"),
	pattern = "*",
	callback = function()
		vim.opt_local.formatoptions = "coqjl1"
	end,
})

autocmd("TermOpen", {
	group = augroup("auto_term_insert_mode"),
	callback = function()
		vim.opt_local.number = false
		vim.opt_local.relativenumber = false
		vim.cmd.startinsert()
	end,
})

-- Don't display numbers and sign column in command window.
autocmd("CmdwinEnter", {
	group = augroup("CommandWindow"),
	callback = function()
		vim.opt_local.number = false
		vim.opt_local.relativenumber = false
		vim.opt_local.signcolumn = "no"
	end,
})

-- Auto pairs for angle brackets
autocmd("FileType", {
	group = augroup("AutoPairs"),
	pattern = {
		"markdown",
		"html",
	},
	callback = function()
		MiniPairs.map_buf(0, "i", "<", { action = "open", pair = "<>", register = { cr = false } })
		MiniPairs.map_buf(0, "i", ">", { action = "close", pair = "<>", register = { cr = false } })
	end,
})

local helpers = {
	augroup = augroup,
	autocmd = autocmd,
}

return helpers
