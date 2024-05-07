local add = MiniDeps.add
local now, later = MiniDeps.now, MiniDeps.later

add({
    source = "L3MON4D3/LuaSnip",
    depends = { "rafamadriz/friendly-snippets" },
    later(function()
        require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })
    end),
})
