vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

require("options")
require("keymaps")
require("launch")
require("load-plug")
vim.cmd("colorscheme material-deep-ocean")
