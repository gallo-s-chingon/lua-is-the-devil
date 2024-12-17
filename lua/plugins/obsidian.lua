return {
  "epwalsh/obsidian.nvim",
  version = "*",
  event = "BufReadPre *.md",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "novel",
        path = vim.fn.expand("$HOME/Documents/widclub"),
      },
      {
        name = "notes",
        path = vim.fn.expand("$HOME/notes"),
      },
      {
        name = "no-vault",
        path = function()
          return assert(vim.fs.dirname(vim.api.nvim_buf_get_name(0)))
        end,
        overrides = {
          notes_subdir = vim.NIL,
          new_notes_location = "current_dir",
          templates = {
            folder = vim.NIL,
          },
          disable_frontmatter = true,
        },
      },
    },
    ui = {
      enable = false,
      update_debounce = 500,
    },
    completion = {
      nvim_cmp = true,
      min_chars = 3,
    },

    templates = {
      folder = "$HOME/.config/nvim/templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      tags = "",
    },
  },
  config = function(_, opts)
    require("obsidian").setup(opts)
  end,
}
