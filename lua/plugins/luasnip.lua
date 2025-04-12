-- Filename: ~/il-diab/lua/plugins/luasnip.lua
-- This allows me to create my custom snippets All you need to do, if using the lazyvim.org distro, is to enable the coding.luasnip LazyExtra and then add this file If you're a dotfiles scavenger, definitely watch this video (you're welcome) https://youtu.be/FmHhonPjvvA?si=8NrcRWu4GGdmTzee

return {
  "L3MON4D3/LuaSnip",
  enabled = true,
  opts = function(_, opts)
    local ls = require("luasnip")

    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node
    local f = ls.function_node

    local function clipboard()
      return vim.fn.getreg("+")
    end

    -- Base function to process YouTube snippets with custom formatting
    -- Format functions for different types of YouTube snippets
    -- #####################################################################
    --                            Markdown
    -- #####################################################################

    -- Helper function to create code block snippets
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

    -- Define languages for code blocks
    local languages = {
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

    -- Generate snippets for all languages
    local snippets = {}

    for _, lang in ipairs(languages) do
      table.insert(snippets, create_code_block_snippet(lang))
    end

    table.insert(
      snippets,
      s({
        trig = "chirpy",
        name = "Disable markdownlint and prettier for chirpy",
        desc = "Disable markdownlint and prettier for chirpy",
      }, {
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
        t({
          "",
          "{: .prompt-",
        }),
        -- In case you want to add a default value "tip" here, but I'm having
        -- issues with autosave
        -- i(2, "tip"),
        i(2),
        t({
          " }",
          " ",
          "<!-- prettier-ignore-end -->",
          "<!-- markdownlint-restore -->",
        }),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "markdownlint",
        name = "Add markdownlint disable and restore headings",
        desc = "Add markdownlint disable and restore headings",
      }, {
        t({
          " ",
          "<!-- markdownlint-disable -->",
          " ",
          "> ",
        }),
        i(1),
        t({
          " ",
          " ",
          "<!-- markdownlint-restore -->",
        }),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "prettierignore",
        name = "Add prettier ignore start and end headings",
        desc = "Add prettier ignore start and end headings",
      }, {
        t({
          " ",
          "<!-- prettier-ignore-start -->",
          " ",
          "> ",
        }),
        i(1),
        t({
          " ",
          " ",
          "<!-- prettier-ignore-end -->",
        }),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "linkt",
        name = 'Add this -> [](){:target="_blank"}',
        desc = 'Add this -> [](){:target="_blank"}',
      }, {
        t("["),
        i(1),
        t("]("),
        i(2),
        t('){:target="_blank"}'),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "todo",
        name = "Add TODO: item",
        desc = "Add TODO: item",
      }, {
        t("<!-- TODO: "),
        i(1),
        t(" -->"),
      })
    )

    -- Paste clipboard contents in link section, move cursor to ()
    table.insert(
      snippets,
      s({
        trig = "linkc",
        name = "Paste clipboard as .md link",
        desc = "Paste clipboard as .md link",
      }, {
        t("["),
        i(1),
        t("]("),
        f(clipboard, {}),
        t(")"),
      })
    )

    -- Paste clipboard contents in link section, move cursor to ()
    table.insert(
      snippets,
      s({
        trig = "linkcex",
        name = "Paste clipboard as EXT .md link",
        desc = "Paste clipboard as EXT .md link",
      }, {
        t("["),
        i(1),
        t("]("),
        f(clipboard, {}),
        t('){:target="_blank"}'),
      })
    )

    -- Inserting "author" front matter
    table.insert(
      snippets,
      s({
        trig = "author",
        name = "Insert 'author:' to front matter",
        desc = "Insert 'author:' to front matter",
      }, {
        t("author: Gallo-Salvaje; Chingon"),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "created",
        name = "Inserts 'created' date in front matter",
        desc = "Inserts 'created' date in front matter",
      }, {
        t("created: "),
        f(function()
          return os.date("%Y-%m-%dT%H:%M")
        end),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "discord",
        name = "discord support",
        desc = "discord support",
      }, {
        t({
          "```txt",
          "I have a members only discord, it's goal is to troubleshoot stuff related to my videos, and try to help users out",
          "If you want to join, the link can be found below",
          "https://www.youtube.com/channel/UCrSIvbFncPSlK6AdwE2QboA/join",
          "```",
        }),
      })
    )

    -- Add a snippet for inserting a blogpost article template
    table.insert(
      snippets,
      s({
        trig = "blogpost template",
        name = "Insert blog post template",
        desc = "Insert blog post template with frontmatter and sections",
      }, {
        t({ "---", "title: " }),
        i(1, ""),
        t({ "", "description: " }),
        i(2, ""),
        t({
          "",
          "author: Gallo-Salvaje; Chingon",
          "created: ",
        }),
        f(function()
          return os.date("%Y-%m-%dT%H:%M")
        end),
        t({
          "",
          "tags: []",
          "---",
          "",
        }),
      })
    )

    -- Basic bash script template
    table.insert(
      snippets,
      s({
        trig = "bashex",
        name = "Basic bash script example",
        desc = "Simple bash script template",
      }, {
        t({
          "```bash",
          "#!/bin/bash",
          "",
          "echo 'helix'",
          "echo 'deeznuts'",
          "```",
          "",
        }),
      })
    )

    -- Basic Python script template
    table.insert(
      snippets,
      s({
        trig = "pythonex",
        name = "Basic Python script example",
        desc = "Simple Python script template",
      }, {
        t({
          "```python",
          "#!/usr/bin/env python3",
          "",
          "def main():",
          "    print('helix dizpython')",
          "",
          "if __name__ == '__main__':",
          "    main()",
          "```",
          "",
        }),
      })
    )

    ls.add_snippets("markdown", snippets)

    -- #####################################################################
    --                         all the filetypes
    -- #####################################################################
    ls.add_snippets("all", {
      s({
        trig = "workflow",
        name = "Add this -> lamw25wmal",
        desc = "Add this -> lamw25wmal",
      }, {
        t("lamw25wmal"),
      }),

      s({
        trig = "lam",
        name = "Add this -> lamw25wmal",
        desc = "Add this -> lamw25wmal",
      }, {
        t("lamw25wmal"),
      }),

      s({
        trig = "mw25",
        name = "Add this -> lamw25wmal",
        desc = "Add this -> lamw25wmal",
      }, {
        t("lamw25wmal"),
      }),
    })

    return opts
  end,
}
