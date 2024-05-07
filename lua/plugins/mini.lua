local add = MiniDeps.add

-- mini.extra
add('echasnovski/mini.extra')
require('mini.extra').setup()

-- MINI.EXTRA Mappings
vim.keymap.set('n', '<Leader>k', '<cmd>Pick diagnostic<cr>', { noremap = true, desc = 'Find keymaps' })
vim.keymap.set('n', '<Leader>s', '<cmd>Pick spellsuggest<cr>', { noremap = true, desc = 'Find spelling' })
vim.keymap.set('n', '<Leader>y', '<cmd>Pick history<cr>', { noremap = true, desc = 'History search' })

add('echasnovski/mini.pick')
require('mini.pick').setup({
	source = {
		show = require('mini.pick').default_show,
	},

})

-- Use mini.pick as the default selector in vim
vim.ui.select = MiniPick.ui_select

-- MINI.PICK Mappings
vim.keymap.set('n', '<leader>/', '<cmd>Pick files<cr>', { noremap = true, desc = 'mini FILE search' })
vim.keymap.set('n', '<Leader>z', '<cmd>Pick resume<cr>', { noremap = true, desc = 'Resume last picker'})
vim.keymap.set('n', '<Leader>b', '<cmd>Pick buffers<cr>', { noremap = true, desc = 'Find buffers'})
vim.keymap.set('n', '<Leader>h', '<cmd>Pick help<cr>', { noremap = true, desc = 'Find help'})
vim.keymap.set('n', '<Leader>r', '<cmd>Pick grep_live<cr>', { noremap = true, desc = 'Find content'})
vim.keymap.set('n', '<Leader>*', '<cmd>Pick grep pattern="<cword>"<cr>', { noremap = true, desc = 'Grep string under cursor'})

-- mini.pairs
add('echasnovski/mini.pairs')
require('mini.pairs').setup({
	modes = { insert = true, command = true, terminal = true },
})

require('mini.basics').setup({
  options = {
    extra_ui = true,
  },
})

-- mini.notify
add('echasnovski/mini.notify')
require('mini.notify').setup({
	content = {
		-- Use notification message as is
		format = function(notif)
			return notif.msg
		end,
	},

	window = {
		config = {
			border = 'rounded',
		},
	},
})

-- Use mini.notify for general notification
vim.notify = MiniNotify.make_notify()

-- mini.comment
add('echasnovski/mini.comment')
require('mini.comment').setup({
	options = { ignore_blank_line = true },
})

-- mini.move
add('echasnovski/mini.move')
require('mini.move').setup({
	mappings = {
		-- Normal mode
		down = '<C-J>',
		up = '<C-K>',
		left = '<C-H>',
		right = '<C-L>',

		-- Visual node
		line_down = '<C-J>',
		line_up = '<C-K>',
		line_left = '<C-H>',
		line_right = '<C-L>',
	},
})

-- mini.surrounds
add('echasnovski/mini.surround')
require('mini.surround').setup({
	custom_surroundings = {
		['b'] = { output = { left = '(', right = ')' } },
		['B'] = { output = { left = '{', right = '}' } },
		['r'] = { output = { left = '[', right = ']' } },
	},
	silent = true,
})

-- mini.ai
add('echasnovski/mini.ai')
require('mini.ai').setup({
	custom_textobjects = {
		B = MiniExtra.gen_ai_spec.buffer(),
		I = MiniExtra.gen_ai_spec.indent(),
		L = MiniExtra.gen_ai_spec.line(),
	},
})

-- mini.bracketed
add('echasnovski/mini.bracketed')
require('mini.bracketed').setup({
	treesitter = { suffix = '' },
	oldfile = { suffix = '' },
	diagnostic = { suffix = '' },
})

-- mini.jump
add('echasnovski/mini.jump')
require('mini.jump').setup({
	mappings = {
		repeat_jump = ',',
	},

	delay = {
		highlight = 0,
	},
})

-- mini.splitjoin
add('echasnovski/mini.splitjoin')
require('mini.splitjoin').setup()

-- mini.trailspace
add('echasnovski/mini.trailspace')
require('mini.trailspace').setup()

-- mini.operators
add('echasnovski/mini.operators')
require('mini.operators').setup()

-- mini.colors
add('echasnovski/mini.colors')
require('mini.colors').setup()

-- mini.hipatterns
add('echasnovski/mini.hipatterns')
local hipatterns = require('mini.hipatterns')
local words = MiniExtra.gen_highlighter.words

hipatterns.setup({
	highlighters = {
		hex_color = hipatterns.gen_highlighter.hex_color(),
		todo = words({ 'TODO', 'todo' }, 'MiniHipatternsTodo'),
		note = words({ 'NOTE', 'note' }, 'MiniHipatternsNote'),
		fixme = words({ 'FIXME', 'fixme' }, 'MiniHipatternsFixme'),
    hack = words({ 'HACK', 'hack' }, 'MiniHipatternsHack'),
	},
})

-- mini.completion
add('echasnovski/mini.completion')
require('mini.completion').setup({
	window = {
		info = { border = 'single' },
		signature = { border = 'single' },
	},
})

-- mini.tabline
add('echasnovski/mini.tabline')
require('mini.tabline').setup()

-- mini.indentscope
add('echasnovski/mini.indentscope')
require('mini.indentscope').setup({
	symbol = '|',
})

-- mini.statusline
add('echasnovski/mini.statusline')
local statusline = require('mini.statusline')
statusline.setup({ use_icons = vim.g.have_nerd_font })
statusline.section_location = function()
return '%2l:%-2v'
end

add({ source = 'echasnovski/mini.clue', checkout = 'stable' })

local miniclue = require('mini.clue')
miniclue.setup({
  triggers = {
    -- Leader triggers
    { mode = 'n', keys = '<Leader>' },
    { mode = 'x', keys = '<Leader>' },

    -- `g` key
    { mode = 'n', keys = 'g' },
    { mode = 'x', keys = 'g' },

    -- Marks
    { mode = 'n', keys = "'" },
    { mode = 'n', keys = '`' },
    { mode = 'x', keys = "'" },
    { mode = 'x', keys = '`' },

    -- Registers
    { mode = 'n', keys = "'" },
    { mode = 'x', keys = "'" },
    { mode = 'i', keys = '<C-r>' },
    { mode = 'c', keys = '<C-r>' },

    -- Window commands
    { mode = 'n', keys = '<C-w>' },

    -- `z` key
    { mode = 'n', keys = 'z' },
    { mode = 'x', keys = 'z' },
  },

  clues = {
    -- Enhance this by adding descriptions for <Leader> mapping groups
    miniclue.gen_clues.builtin_completion(),
    miniclue.gen_clues.g(),
    miniclue.gen_clues.marks(),
    miniclue.gen_clues.registers(),
    miniclue.gen_clues.windows(),
    miniclue.gen_clues.z(),
  },
})
