{
  "Kurama622/llm.nvim",
  dependencies = { 
    "nvim-lua/plenary.nvim", 
    "MunifTanjim/nui.nvim" 
  },
  cmd = { "LLMSessionToggle", "LLMSelectedTextHandler" },
  config = function()
    require("llm").setup({
      -- Basic prompt setup
      prompt = "You are a helpful coding assistant.",

      -- Chat interface styling
      prefix = {
        user = { text = "🧑 ", hl = "Title" },
        assistant = { text = "🤖 ", hl = "Added" },
      },

      -- Window positioning
      style = "float", -- options: right | left | above | below | float

      -- Ollama configuration
      url = "http://localhost:11434/api/chat",
      model = "codellama", -- Change this to your preferred Ollama model
      api_type = "ollama",

      -- Response settings
      max_tokens = 1024,
      temperature = 0.3,
      top_p = 0.7,

      -- Session management
      save_session = true,
      max_history = 15,
      history_path = vim.fn.expand("~/.cache/nvim/llm_history"),

      -- Loading spinner
      spinner = {
        text = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
        hl = "Title",
      },

      -- Display settings
      display = {
        diff = {
          layout = "vertical",
          opts = { 
            "internal", 
            "filler", 
            "closeoff", 
            "algorithm:patience", 
            "followwrap", 
            "linematch:120" 
          },
          provider = "mini_diff",
        },
      },

      -- Keybindings
      keys = {
        -- Input window keys
        ["Input:Cancel"] = { mode = "n", key = "<C-c>" },
        ["Input:Submit"] = { mode = "n", key = "<cr>" },
        ["Input:Resend"] = { mode = "n", key = "<C-r>" },
        ["Input:HistoryNext"] = { mode = "n", key = "<C-j>" },
        ["Input:HistoryPrev"] = { mode = "n", key = "<C-k>" },

        -- Output window keys
        ["Output:Ask"] = { mode = "n", key = "i" },
        ["Output:Cancel"] = { mode = "n", key = "<C-c>" },
        ["Output:Resend"] = { mode = "n", key = "<C-r>" },

        -- Session management keys
        ["Session:Toggle"] = { mode = "n", key = "<leader>ac" },
        ["Session:Close"] = { mode = "n", key = "<esc>" },
      },
    })
  end,
  keys = {
    { "<leader>ac", mode = "n", desc = "Toggle LLM Session", "<cmd>LLMSessionToggle<cr>" },
    { "<leader>ae", mode = "v", desc = "Explain Code", "<cmd>LLMSelectedTextHandler Please explain this code<cr>" },
    { "<leader>ai", mode = "v", desc = "Improve Code", "<cmd>LLMSelectedTextHandler Please improve this code and explain the improvements<cr>" },
  },
}