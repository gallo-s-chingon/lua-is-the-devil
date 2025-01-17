return {
  {
    "marko-cerovac/material.nvim",
    priority = 1000,
    config = function()
      require("material").setup({
        contrast = {
          lsp_virtual_text = true,
        },
        plugins = {
          "telescope",
          "mini",
          "gitsigns",
          "nvim-web-devicons",
          "nvim-cmp",
          "telescope",
          "trouble",
        },
        style = {
          comments = { italic = false },
          keywords = { undercurl = true },
          functions = { bold = true },
          strings = { bold = true },
        },
      })
    end,
  },
}