--  See `:help vim.keymap.set()` Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- set find/replace to S
vim.keymap.set("n", "S", ":%s//g<Left><Left>", { noremap = true, silent = false })
vim.keymap.set("n", ".", ":", { noremap = true })
vim.keymap.set("n", ":", ".", { noremap = true })

-- move better in wrapped buffers
vim.keymap.set("n", "J", "j", { noremap = true })
vim.keymap.set("n", "K", "k", { noremap = true })
vim.keymap.set("n", "j", "gj", { noremap = true })
vim.keymap.set("n", "k", "gk", { noremap = true })
vim.keymap.set("n", "C-l", "$", { noremap = true })
vim.keymap.set("n", "C-h", "^", { noremap = true })
vim.keymap.set("v", "C-l", "$", { noremap = true })
vim.keymap.set("v", "C-h", "^", { noremap = true })
-- whichkey setup
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { noremap = true, desc = "Lazy" })
vim.keymap.set("n", "<leader>m", "<cmd>Mason<cr>", { noremap = true, desc = "Mason" })
vim.keymap.set("n", "<leader>n", "<cmd>enew<cr>", { noremap = true, desc = "New File" })
vim.keymap.set("n", "<leader>p", "<cmd>PasteImage<cr>", { noremap = true, desc = "Paste clipboard image" })

-- buffer navigation
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { noremap = true, desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { noremap = true, desc = "Next Buffer" })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier for people to discover. Otherwise, you normally need to press <C-\><C-n>, which is not what someone will guess without a bit more experience.
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping or just use <C-\><C-n> to exit terminal mode
--
-- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier. Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- figure out the best way to do this for mini.completion
-- ['<C-n>'] = cmp.mapping.select_next_item(),
-- Select the [p]revious item
-- ['<C-p>'] = cmp.mapping.select_prev_item(),
--
-- Scroll the documentation window [b]ack / [f]orward
-- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
-- ['<C-f>'] = cmp.mapping.scroll_docs(4),
--
-- Accept ([y]es) the completion.
-- ['<S-CR>'] = cmp.mapping.confirm { select = true },
-- ['<A-j>'] = cmp.mapping.select_next_item(),
-- ['<A-k>'] = cmp.mapping.select_prev_item(),
