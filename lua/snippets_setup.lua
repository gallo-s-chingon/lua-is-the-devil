local status, luasnip = pcall(require, 'luasnip')
if not status then
    print("Error loading LuaSnip: " .. luasnip)
    return
end

-- Load custom snippets for markdown
luasnip.snippets.markdown = require('snippets.markdown') -- Load the markdown snippets

-- Setup nvim-cmp with LuaSnip as a source
local cmp = require("cmp")
cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body) -- Expand snippets
        end,
    },
    mapping = {
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_locally_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
    },
    sources = {
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
        { name = "nvim_lsp" },
    },
})
