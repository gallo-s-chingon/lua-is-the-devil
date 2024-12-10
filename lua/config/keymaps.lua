-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
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

map("<leader>o", "<cmd>redo<cr>", "redo")
Vap("<leader>L", "$", "end")
Vap("<leader>H", "^", "home")
