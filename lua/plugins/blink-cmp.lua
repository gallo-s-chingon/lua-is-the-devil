-- Filename: ~/.config/nvim/lua/plugins/blink-cmp.lua
-- HACK: blink.cmp updates | Emoji and Dictionary Sources | Fix Jump Autosave Issue
-- https://youtu.be/JrgfpWap_Pg
-- Completion plugin with support for LSPs and external sources that updates
-- on every keystroke with minimal overhead
-- https://www.lazyvim.org/extras/coding/blink
-- https://github.com/saghen/blink.cmp
-- Documentation site: https://cmp.saghen.dev/

-- NOTE: Trigger characters: ";" for snippets, ":" for emoji
local trigger_text = ";"
local emoji_trigger = ":"

return {
  "saghen/blink.cmp",
  enabled = true,
  event = "InsertEnter", -- Load on insert mode to prevent loading issues
  -- In case there are breaking changes, pin to a release
  -- https://github.com/Saghen/blink.cmp/releases
  -- version = "v0.9.3",
  dependencies = {
    "moyiz/blink-emoji.nvim",
    "Kaiser-Yang/blink-cmp-dictionary",
    config = function()
      require("blink.cmp").setup({
        sources = {
          default = { "lsp", "path", "snippets", "buffer", "markdown" },
          providers = {
            markdown = {
              name = "RenderMarkdown",
              module = "render-markdown.integ.blink",
              fallbacks = { "lsp" },
            },
          },
        },
      })
    end,
  },
  opts = function(_, opts)
    opts.enabled = function()
      local filetype = vim.bo[0].filetype
      -- Disable for Telescope and similar buffers
      return not (filetype == "TelescopePrompt" or filetype == "minifiles" or filetype == "snacks_picker_input")
    end

    opts.sources = vim.tbl_deep_extend("force", opts.sources or {}, {
      default = { "lsp", "path", "snippets", "buffer", "dadbod", "emoji", "dictionary" },
      providers = {
        lsp = {
          name = "LSP",
          module = "blink.cmp.sources.lsp",
          score_offset = 90, -- Higher number = higher priority
          min_keyword_length = 2,
        },
        path = {
          name = "Path",
          module = "blink.cmp.sources.path",
          score_offset = 25,
          fallbacks = { "snippets", "buffer" },
          opts = {
            trailing_slash = false,
            label_trailing_slash = true,
            get_cwd = function(context)
              return vim.fs.dirname(vim.api.nvim_buf_get_name(context.bufnr))
            end,
            show_hidden_files_by_default = true,
          },
        },
        buffer = {
          name = "Buffer",
          max_items = 3,
          module = "blink.cmp.sources.buffer",
          score_offset = 15,
        },
        snippets = {
          name = "Snippets",
          max_items = 15,
          min_keyword_length = 2,
          module = "blink.cmp.sources.snippets",
          score_offset = 85, -- Higher number = higher priority
          should_show_items = function()
            local cursor = vim.api.nvim_win_get_cursor(0)
            local line = vim.api.nvim_get_current_line()
            local before_cursor = line:sub(1, cursor[2])
            return before_cursor:match(trigger_text .. "%w*$") ~= nil
          end,
          transform_items = function(_, items)
            local cursor = vim.api.nvim_win_get_cursor(0)
            local line = vim.api.nvim_get_current_line()
            local before_cursor = line:sub(1, cursor[2])
            local trigger_pos = before_cursor:find(trigger_text .. "[^" .. trigger_text .. "]*$")
            if trigger_pos then
              for _, item in ipairs(items) do
                if not item.trigger_text_modified then
                  item.trigger_text_modified = true
                  item.textEdit = {
                    newText = item.insertText or item.label,
                    range = {
                      start = { line = cursor[1] - 1, character = trigger_pos - 1 },
                      ["end"] = { line = cursor[1] - 1, character = cursor[2] },
                    },
                  }
                end
              end
            end
            return items
          end,
        },
        dadbod = {
          name = "Dadbod",
          module = "vim_dadbod_completion.blink",
          min_keyword_length = 2,
          score_offset = 85,
        },
        emoji = {
          module = "blink-emoji",
          name = "Emoji",
          score_offset = 93,
          min_keyword_length = 2,
          should_show_items = function()
            local cursor = vim.api.nvim_win_get_cursor(0)
            local line = vim.api.nvim_get_current_line()
            local before_cursor = line:sub(1, cursor[2])
            return before_cursor:match(emoji_trigger .. "%w*$") ~= nil
          end,
          opts = { insert = true }, -- Insert emoji instead of name
        },
        dictionary = {
          module = "blink-cmp-dictionary",
          name = "Dict",
          score_offset = 20,
          enabled = true,
          max_items = 8,
          min_keyword_length = 3,
          opts = {
            dictionary_directories = { vim.fn.expand("~/.config/nvim/dictionary") },
            dictionary_files = {
              vim.fn.expand("~/.config/nvim/dictionary/words.txt"),
              vim.fn.expand("~/.config/nvim/spell/en.utf-8.add"),
            },
          },
        },
      },
    })

    opts.cmdline = {
      sources = function()
        local type = vim.fn.getcmdtype()
        if type == "/" or type == "?" then
          return { "buffer" }
        elseif type == ":" then
          return { "cmdline" }
        end
        return {}
      end,
    }

    opts.completion = {
      menu = { border = "single" },
      documentation = {
        auto_show = true,
        window = { border = "single" },
      },
      ghost_text = { enabled = true },
    }

    opts.snippets = {
      preset = "luasnip",
      expand = function(snippet)
        require("luasnip").lsp_expand(snippet)
      end,
      active = function(filter)
        if filter and filter.direction then
          return require("luasnip").jumpable(filter.direction)
        end
        return require("luasnip").in_snippet()
      end,
      jump = function(direction)
        require("luasnip").jump(direction)
      end,
    }

    opts.keymap = {
      preset = "default",
      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },
      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },
      ["<S-k>"] = { "scroll_documentation_up", "fallback" },
      ["<S-j>"] = { "scroll_documentation_down", "fallback" },
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },
    }

    return opts
  end,
}

