local MiniDeps = require('mini.deps')

MiniDeps.add('stevearc/conform.nvim')
require('conform').setup({
    formatters_by_ft = {
        lua = { 'stylua' },
    },
})

MiniDeps.add('marko-cerovac/material.nvim')

MiniDeps.add('nvim-tree/nvim-web-devicons')
require('nvim-web-devicons').setup()
