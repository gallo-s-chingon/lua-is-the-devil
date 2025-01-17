return {
  "epwalsh/obsidian.nvim",
  version = "*",
  event = {
    "BufReadPre " .. vim.fn.expand("$HOME/Documents/widows-club") .. "/**.md",
    "BufReadPre " .. vim.fn.expand("$HOME/notes") .. "/**.md",
    "BufNewFile " .. vim.fn.expand("$HOME/Documents/widows-club") .. "/**.md",
    "BufNewFile " .. vim.fn.expand("$HOME/notes") .. "/**.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "novel",
        path = vim.fn.expand("$HOME/Documents/widows-club"),
      },
      {
        name = "notes",
        path = vim.fn.expand("$HOME/Documents/notes"),
      },
    },
    ui = {
      enable = false,
    },
    templates = {
      folder = vim.fn.expand("$HOME/.config/nvim/templates"),
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      tags = "",
    },
  },
  config = function(_, opts)
    vim.schedule(function()
      require("obsidian").setup(opts)
    end)
  end,
}