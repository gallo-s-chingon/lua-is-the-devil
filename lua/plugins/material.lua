return {
  {
    "marko-cerovac/material.nvim",
    priority = 1000,
    config = function()
      require('material').setup({
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
          "which-key",
        },
        style = {
          comments = { bold = true },
          keywords = { undercurl = true },
          functions = { italic = true },
          strings = { bold = true },
        },
      })
    end,
  },
}
