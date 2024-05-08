local MiniDeps = require('mini.deps')

MiniDeps.add('stevearc/conform.nvim')
require('conform').setup({
    format = {
      timeout_ms = 3000,
      async = false, -- not recommended to change
      quiet = false, -- not recommended to change
      lsp_fallback = true, -- not recommended to change
    },
    formatters_by_ft = {
        lua = { 'stylua' },
      fish = { "fish_indent" },
      sh = { "shfmt" },
    },
    formatters = {
      injected = { options = { ignore_errors = true } },
  }
      })

MiniDeps.add('marko-cerovac/material.nvim')

MiniDeps.add('nvim-tree/nvim-web-devicons')
require('nvim-web-devicons').setup()
