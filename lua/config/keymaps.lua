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

-- snacks related keymaps

keys = {
  {
    "<leader>z",
    function()
      Snacks.zen()
    end,
    desc = "Toggle Zen Mode",
  },
  {
    "<leader>Z",
    function()
      Snacks.zen.zoom()
    end,
    desc = "Toggle Zoom",
  },
  {
    "<leader>.",
    function()
      Snacks.scratch()
    end,
    desc = "Toggle Scratch Buffer",
  },
  {
    "<leader>S",
    function()
      Snacks.scratch.select()
    end,
    desc = "Select Scratch Buffer",
  },
  {
    "<leader>n",
    function()
      Snacks.notifier.show_history()
    end,
    desc = "Notification History",
  },
  {
    "<leader>bd",
    function()
      Snacks.bufdelete()
    end,
    desc = "Delete Buffer",
  },
  {
    "<leader>cR",
    function()
      Snacks.rename.rename_file()
    end,
    desc = "Rename File",
  },
  {
    "<leader>gB",
    function()
      Snacks.gitbrowse()
    end,
    desc = "Git Browse",
    mode = { "n", "v" },
  },
  {
    "<leader>gb",
    function()
      Snacks.git.blame_line()
    end,
    desc = "Git Blame Line",
  },
  {
    "<leader>gf",
    function()
      Snacks.lazygit.log_file()
    end,
    desc = "Lazygit Current File History",
  },
  {
    "<leader>gg",
    function()
      Snacks.lazygit()
    end,
    desc = "Lazygit",
  },
  {
    "<leader>gl",
    function()
      Snacks.lazygit.log()
    end,
    desc = "Lazygit Log (cwd)",
  },
  {
    "<leader>un",
    function()
      Snacks.notifier.hide()
    end,
    desc = "Dismiss All Notifications",
  },
  {
    "<c-/>",
    function()
      Snacks.terminal()
    end,
    desc = "Toggle Terminal",
  },
  {
    "<leader>cR",
    function()
      Snacks.rename.rename_file()
    end,
    desc = "Rename File",
  },
  {
    "]]",
    function()
      Snacks.words.jump(vim.v.count1)
    end,
    desc = "Next Reference",
    mode = { "n", "t" },
  },
  {
    "[[",
    function()
      Snacks.words.jump(-vim.v.count1)
    end,
    desc = "Prev Reference",
    mode = { "n", "t" },
  },
}
