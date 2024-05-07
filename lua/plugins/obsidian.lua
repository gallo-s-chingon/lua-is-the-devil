return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'notes',
        path = '/Users/gchingon/Documents/ozel',
        daily_notes = {
          folder = '%Y/%m/',
        },
      },
      {
        name = 'novel',
        path = '/Users/gchingon/Documents/novel/',
        'prepend_new_note_path',
      },
    },
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
    folder = '/Users/gchingon/.config/templates',
    date_format = '%Y-%m-%d',
    time_format = '%H:%M',
  },
}
