local add = MiniDeps.add
add{
  source = 'epwalsh/obsidian.nvim',
  depends = { 'nvim-lua/plenary.nvim' },
  ft = 'markdown',
  opts = {
    workspaces = {
      {
        name = 'notes',
        path = '$HOME/Documents/ozel',
        daily_notes = {
          folder = '%Y/%m/',
        },
      },
      {
        name = 'novel',
        path = '$HOME/Documents/novel/',
        'prepend_new_note_path',
      },
    },
  },
picker = {
    name = 'mini.deps',
  },
  ui = {
    enable = true,
    update_debounce = 500,
  },

  completion = {
    nvim_cmp = true,
    min_chars = 3,
  },

  keys = {
    { '<leader>on', '<cmd>ObsidianNew<cr>', desc = 'New Obsidian note', mode = 'n' },
    { '<leader>oo', '<cmd>ObsidianSearch<cr>', desc = 'Search Obsidian notes', mode = 'n' },
    { '<leader>os', '<cmd>ObsidianQuickSwitch<cr>', desc = 'Quick Switch', mode = 'n' },
    { '<leader>ob', '<cmd>ObsidianBacklinks<cr>', desc = 'Show location list of backlinks', mode = 'n' },
    { '<leader>ot', '<cmd>ObsidianTemplate<cr>', desc = 'Follow link under cursor', mode = 'n' },
  },

  templates = {
    folder = '$HOME/.config/templates',
    date_format = '%Y-%m-%d',
    time_format = '%H:%M',
  },
}
