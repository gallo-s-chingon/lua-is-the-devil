require("lazy").setup({
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = { "blackstork-io/fabric.nvim" },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "fabric", "jq", "gotmpl", "html", "css", "regex" }, -- ......
        highlight = {
          enable = true,
        }
      })
    end
  },
})