local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "hrsh7th/nvim-cmp" },
	{ "saadparwaiz1/cmp_luasnip" },
  { "stevearc/conform.nvim" },
  { "tpope/vim-dadbod" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "mfussenegger/nvim-lint" },
  { "neovim/nvim-lspconfig" },
  { "marko-cerovac/material.nvim" },
  { "echasnovski/mini.nvim" },
  { "epwalsh/obsidian.nvim" },
  { "MeanderingProgrammer/render-markdown.nvim" },
  { "nvim-telescope/telescope.nvim" },
  { "nvim-treesitter/nvim-treesitter" },
  { "nvim-tree/nvim-web-devicons" },
  { "L3MON4D3/LuaSnip" },
  { "Exafunction/codeium.vim" },
  {
    "MeanderingProgrammer/markdown.nvim",
    opts = {},
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
  },
})
