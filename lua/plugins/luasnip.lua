return {
  "L3MON4D3/LuaSnip",
  lazy = false,
  -- Make sure it loads before blink.cmp
  priority = 1000,
  dependencies = {
    "rafamadriz/friendly-snippets",
    "saadparwaiz1/cmp_luasnip",
  },
  opts = {
    history = true,
    delete_check_events = "TextChanged",
  },
}