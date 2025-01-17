return {
  "L3MON4D3/LuaSnip",
  enabled = true,
  opts = function(_, opts)
    local ls = require("luasnip")
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node
    local f = ls.function_node

    -- Utility Functions
    local function clipboard()
      return vim.fn.getreg("+")
    end

    -- YouTube Snippet Processing
    local function process_youtube_snippets(file_path, format_func)
      local snippets = {}
      local file = io.open(file_path, "r")
      if not file then
        vim.notify("Could not open snippets file: " .. file_path, vim.log.levels.ERROR)
        return snippets
      end

      local lines = {}
      for line in file:lines() do
        if line == "" then
          if #lines == 2 then
            table.insert(snippets, format_func(lines[1], lines[2]))
          end
          lines = {}
        else
          table.insert(lines, line)
        end
      end

      if #lines == 2 then
        table.insert(snippets, format_func(lines[1], lines[2]))
      end

      file:close()
      return snippets
    end

    -- YouTube Format Functions
    local youtube_formats = {
      plain = function(title, url)
        return s({ trig = "yt - " .. title }, { t(title), t({ "", url }) })
      end,
      markdown = function(title, url)
        local safe_title = string.gsub(title, "|", "-")
        return s({ trig = "ytmd - " .. title }, {
          t(string.format("[%s](%s)", safe_title, url)),
        })
      end,
      markdown_external = function(title, url)
        local safe_title = string.gsub(title, "|", "-")
        return s({ trig = "ytex - " .. title }, {
          t(string.format('[%s](%s){:target="_blank"}', safe_title, url)),
        })
      end,
      embed = function(title, url)
        local video_id = url:match(".*/(.*)")
        return s({ trig = "ytem - " .. title }, {
          t(string.format("{%% include embed/youtube.html id='%s' %%}", video_id)),
        })
      end,
    }

    -- Process YouTube Snippets
    local snippets_file = vim.fn.expand("~/github/obsidian_main/300-youtube/youtube-video-list.txt")
    for format_name, format_func in pairs(youtube_formats) do
      ls.add_snippets("all", process_youtube_snippets(snippets_file, format_func))
    end

    -- Code Block Snippet Generator
    local function create_code_block_snippet(lang)
      return s({
        trig = lang,
        name = "Codeblock",
        desc = lang .. " codeblock",
      }, {
        t({ "```" .. lang, "" }),
        i(1),
        t({ "", "```" }),
      })
    end

    -- Markdown Snippets
    local markdown_snippets = {
      -- Languages for code blocks
      "txt",
      "lua",
      "sql",
      "go",
      "regex",
      "bash",
      "markdown",
      "markdown_inline",
      "yaml",
      "json",
      "jsonc",
      "cpp",
      "csv",
      "java",
      "javascript",
      "python",
      "dockerfile",
      "html",
      "css",
      "templ",
      "php",
    }

    local snippets = {}

    -- Generate code block snippets
    for _, lang in ipairs(markdown_snippets) do
      table.insert(snippets, create_code_block_snippet(lang))
    end

    -- Add custom markdown snippets
    local custom_markdown_snippets = {
      -- Chirpy snippet
      {
        trig = "chirpy",
        name = "Disable markdownlint and prettier for chirpy",
        nodes = {
          t({
            " ",
            "<!-- markdownlint-disable -->",
            "<!-- prettier-ignore-start -->",
            " ",
            "<!-- tip=green, info=blue, warning=yellow, danger=red -->",
            " ",
            "> ",
          }),
          i(1),
          t({ "", "{: .prompt-" }),
          i(2),
          t({ " }", " ", "<!-- prettier-ignore-end -->", "<!-- markdownlint-restore -->" }),
        },
      },
      -- Markdownlint snippet
      {
        trig = "markdownlint",
        name = "Add markdownlint disable and restore headings",
        nodes = {
          t({ " ", "<!-- markdownlint-disable -->", " ", "> " }),
          i(1),
          t({ " ", " ", "<!-- markdownlint-restore -->" }),
        },
      },
      -- Link snippets
      {
        trig = "linkt",
        name = "Add external link",
        nodes = {
          t("["),
          i(1),
          t("]("),
          i(2),
          t('){:target="_blank"}'),
        },
      },
      -- TODO snippet
      {
        trig = "todo",
        name = "Add TODO item",
        nodes = {
          t("<!-- TODO: "),
          i(1),
          t(" -->"),
        },
      },
      -- Clipboard link snippets
      {
        trig = "linkc",
        name = "Paste clipboard as markdown link",
        nodes = {
          t("["),
          i(1),
          t("]("),
          f(clipboard, {}),
          t(")"),
        },
      },
      {
        trig = "linkcex",
        name = "Paste clipboard as external markdown link",
        nodes = {
          t("["),
          i(1),
          t("]("),
          f(clipboard, {}),
          t('){:target="_blank"}'),
        },
      },
    }

    -- Add all custom markdown snippets
    for _, snippet_def in ipairs(custom_markdown_snippets) do
      table.insert(
        snippets,
        s({
          trig = snippet_def.trig,
          name = snippet_def.name,
          desc = snippet_def.name,
        }, snippet_def.nodes)
      )
    end

    -- Add predefined text snippets
    local text_snippets = {
      {
        trig = "dotfiles latest",
        content = "[my dotfiles](https://github.com/linkarzu/dotfiles-latest)",
      },
      {
        trig = "support me",
        content = {
          "Members only discord -> https://www.youtube.com/channel/UCrSIvbFncPSlK6AdwE2QboA/join",
          "☕ Support me -> https://ko-fi.com/linkarzu",
          "☑ My Twitter -> https://x.com/link_arzu",
          "❤‍🔥 My tiktok -> https://www.tiktok.com/@linkarzu",
        },
      },
    }

    for _, snippet_def in ipairs(text_snippets) do
      table.insert(
        snippets,
        s({
          trig = snippet_def.trig,
          name = snippet_def.trig,
          desc = snippet_def.trig,
        }, {
          t(type(snippet_def.content) == "table" and snippet_def.content or { snippet_def.content }),
        })
      )
    end

    -- Add all snippets to markdown filetype
    ls.add_snippets("markdown", snippets)

    -- Global snippets (available in all filetypes)
    ls.add_snippets("all", {
      s({ trig = "workflow", name = "Workflow shortcut" }, { t("lamw25wmal") }),
      s({ trig = "lam", name = "Workflow shortcut" }, { t("lamw25wmal") }),
      s({ trig = "mw25", name = "Workflow shortcut" }, { t("lamw25wmal") }),
    })

    return opts
  end,
}
