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
    { "Exafunction/codeium.vim" },
    { "MeanderingProgrammer/markdown.nvim",  -- Ensure this is correctly formatted as well
        opts = {},
        dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
    },
    {
        'hrsh7th/nvim-cmp', -- Completion plugin
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',  -- LSP source for nvim-cmp
            'hrsh7th/cmp-buffer',     -- Buffer completions
            'hrsh7th/cmp-path',       -- Path completions
            'saadparwaiz1/cmp_luasnip', -- Snippet completions
            'L3MON4D3/LuaSnip'        -- Snippet engine
        },
    },
    {
        "rafamadriz/friendly-snippets", -- Optional: pre-defined snippets
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load() -- Load snippets from friendly-snippets
        end,
    },
})
