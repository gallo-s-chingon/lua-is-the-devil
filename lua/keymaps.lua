local Vap = function(keys, func, opts)
	if type(opts) == "string" then
		opts = { desc = opts }
	end
	vim.keymap.set({ "n", "v" }, keys, func, opts)
end

local map = function(keys, func, opts)
	if type(opts) == "string" then
		opts = { desc = opts }
	end
	vim.keymap.set("n", keys, func, opts)
end

map("<Esc>", "<cmd>nohlsearch<CR>")
-- set find/replace to S
map("S", ":%s//g<Left><Left>", { silent = false })
map(".", ":", { noremap = true })
map(":", ".", { noremap = true })
-- codeium
vim.keymap.set("i", "<S-Tab>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true })
vim.keymap.set("i", "<S-;>", function()
	return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true })
vim.keymap.set("i", "<S-,>", function()
	return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true })
vim.keymap.set("i", "<S-x>", function()
	return vim.fn["codeium#Clear"]()
end, { expr = true })
-- move better in wrapped buffers
map("J", "j", { noremap = true })
map("K", "k", { noremap = true })
map("j", "gj", { noremap = true })
map("k", "gk", { noremap = true })
map("<leader>z", "<cmd>Lazy<cr>", "la[z]y popup")
Vap("<leader>L", "$", "end")
Vap("<leader>H", "^", "home")
Vap("<leader>t", "]s", "next misspell")
Vap("<leader>e", "[s", "prior misspell")
map("<leader>c", "zg", "mark spell good")
map("<leader>o", "<cmd>redo<cr>", "redo")
Vap("<leader>5", "<cmd>w<cr><cmd>source %<cr>", "write & source file")
-- MINI.CLUE setup
map("<leader>m", "<cmd>Mason<cr>", "Mason")
map("<leader>n", "<cmd>enew<cr>", "New File")
map("<leader>p", "<cmd>PasteImage<cr>", "Paste clipboard image")
map("<leader>ga", "<cmd>Git add<cr>", "Git add")
map("<leader>gs", "<cmd>Git status<cr>", "Git status")
map("<leader>gd", "<cmd>Git diff<cr>", "Git diff")
map("<leader>gh", "<cmd>Git help<cr>", "Git help")
-- buffer navigation
map("<S-h>", "<cmd>bprevious<cr>", "Prev Buffer")
map("<S-l>", "<cmd>bnext<cr>", "Next Buffer")
map("<leader>-", "<cmd>bd<cr>", "Delete Current Buffer")
vim.keymap.set("i", "<Tab>", function()
    if require('luasnip').expand_or_jumpable() then
        return '<Plug>luasnip-expand-or-jump'
    else
        return '<Tab>'
    end
end, { expr = true, silent = true })

vim.keymap.set("i", "<S-Tab>", function()
    if require('luasnip').jumpable(-1) then
        return '<Plug>luasnip-jump-prev'
    else
        return '<S-Tab>'
    end
end, { expr = true, silent = true })
-- MINI.PICK Mappings
map("<Leader>r", "<cmd>Pick grep_live<cr>", "g[R]ep find content")
-- MINI.EXTRA Mappings
map("<leader>On", "<cmd>ObsidianNew<cr>", "[O]bsidian [n]ew note")
map("<leader>O/", "<cmd>ObsidianSearch<cr>", "[O]bsidinotes [/]search")
map("<leader>Ol", "<cmd>ObsidianFollowLink<cr>", "[O]bsidian open [l]ink")
map("<leader>OT", "<cmd>ObsidianTemplate<cr>", "[O]pen [T]emplate")
map("<leader>Ot", "<cmd>ObsidianToday<cr>", "[O]pen daily [t]oday")
-- Set the Telescope keymaps
local telebind = function(keys, func_name, desc)
	vim.keymap.set("n", keys, function()
		require("telescope.builtin")[func_name]()
	end, { desc = desc })
end

telebind("<leader>h", "help_tags", "Search [h]elp")
telebind("<Leader>bf", "buffers", "[b]uffer find")
telebind("<leader>S", "spell_suggest", "[S]pell suggest")
telebind("<leader>y", "command_history", "command histor[y]")
telebind("<leader>k", "keymaps", "search [k]eymaps")
telebind("<leader>/", "find_files", "find files[/]")
telebind("<leader>*", "grep_string", "Search current[*] Word")
telebind("<leader>r", "live_grep", "Search by G[r]ep")
telebind("<leader>d", "diagnostics", "Search [d]iagnostics")
