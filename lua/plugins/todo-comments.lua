return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      highlight = {
        comments_only = false,
      },

      config = function()
        local wk = require("which-key")

        wk.add({
          mode = "n",
          { "<leader>t", group = "Todo's..." },
          { "<leader>td", "<CMD>TodoQuickFix<CR>", desc = "QuickFix-list with all Todo's" },
          { "<leader>tt", "<CMD>TodoTelescope<CR>", desc = "Telescope with all Todo's" },
        })

        require("todo-comments").setup({
          keywords = {
            MISSING = { icon = "󰅖 ", color = "error", alt = { "FAIL" } },
            CITE = { icon = "󱀢 ", color = "#00FDFF", alt = { "QUESTION" } },
            DANGER = { icon = "󱐋 ", color = "error", alt = { "CAUTION" } },
            LIST = { icon = "󰉹 ", color = "#FF9300" },
          },
        })
      end,
    },
  },
}
--[[
danger = { color = "DANGER", icon = "󱐋 ",
example = { color = "EXAMPLE", icon = "󰉹 ",
help = { color = "HELP", icon = "󰘥 ",
important = { color = "IMPORTANT", icon = "󰅾 ",
summary = { color = "SUMMARY", icon = "󰨸 ",
tip = { color = "TIP", icon = "󰌶 ",
--]]
