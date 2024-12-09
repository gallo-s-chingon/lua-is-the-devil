vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

require("options")
require("keymaps")
require("launch")
require("snippets_setup")
--require("plugins.cmp")
require("plugins.conform")
require("plugins.dadbod")
require("plugins.indent_line")
require("plugins.lint")
require("plugins.lspconfig")
require("plugins.material")
require("plugins.mini")
require("plugins.obsidian")
require("plugins.render-markdown")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.vim-codium")
vim.cmd("colorscheme material-deep-ocean")
