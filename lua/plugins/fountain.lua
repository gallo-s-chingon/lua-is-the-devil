return {
  "MRdima98/better-fountain.nvim",
  dependencies = { "kblin/vim-fountain" },
  config = function()
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
      pattern = { "*.fountain" },
      callback = function()
        vim.lsp.start({
          name = "better-fountain",
          cmd = { "path/to/executable" },
        })
      end,
    })
  end,
}