vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

require("options")
require("keymaps")
require("launch")

-- Load plugins first before setting up completion
require("plugins.conform")
require("plugins.mini")
require("plugins.dadbod")
require("plugins.indent_line")
require("plugins.lint")
require("plugins.lspconfig")
require("plugins.material")
require("plugins.obsidian")
require("plugins.render-markdown")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.vim-codium")

local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) 
        end,
    },
    mapping = {
        ['<C-h>'] = cmp.mapping.select_next_item(),
        ['<C-l>'] = cmp.mapping.select_prev_item(),
        ['<S-CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },  -- This allows completion from the current buffer
        { name = 'path' },
        { name = 'luasnip' }, -- Include snippets from LuaSnip if you're using it
    },
})

vim.cmd("colorscheme material-deep-ocean")
