local material = require('material')

material.setup({
  contrast = {
    lsp_virtual_text = true
  },
  style = 'deep ocean',
  plugins = {
    "mini",
    "gitsigns",
    "nvim-web-devicons"
  },
    style = {
    comments = { bold = true},
    keywords = { undercurl = true},
    functions = { italic = true },
    strings = { bold = true },
  },
})
