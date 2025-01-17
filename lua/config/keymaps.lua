-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function set_keymap(mode, keys, func, opts)
  if type(opts) == "string" then
    opts = { desc = opts }
  end
  vim.keymap.set(mode, keys, func, opts)
end

local function map(keys, func, opts)
  set_keymap("n", keys, func, opts)
end

local function vap(keys, func, opts)
  set_keymap({ "n", "v" }, keys, func, opts)
end

map("<Esc>", "<cmd>nohlsearch<CR>")
map("S", ":%s//g<Left><Left>", { silent = false })
map(".", ":", { noremap = true })
map(":", ".", { noremap = true })
map("<leader>o", "<cmd>redo<cr>", "redo")

vap("<leader>L", "$", "end")
vap("<leader>H", "^", "home")
