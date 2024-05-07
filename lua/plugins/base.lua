local MiniDeps = require('mini.deps')

MiniDeps.add('stevearc/conform.nvim')
require('conform').setup({
    formatters_by_ft = {
        lua = { 'stylua' },
    },
})


-- MiniDeps.add('tpope/vim-sleuth')
-- require('vim-sleuth').setup()

MiniDeps.add('folke/tokyonight.nvim')
require('tokyonight').setup({
  style = 'night',
  keywords = { italic = true },
  comments = { italic = false },
})

MiniDeps.add('marko-cerovac/material.nvim')

MiniDeps.add('nvim-tree/nvim-web-devicons')
require('nvim-web-devicons').setup()
