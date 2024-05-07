local add = MiniDeps.add

-- mini.extra
add('echasnovski/mini.extra')
require('mini.extra').setup()

-- MINI.EXTRA Mappings
-- keys.map('n', '<Leader>fk', MiniExtra.pickers.keymaps, 'Find keymaps')
-- keys.map('n', '<Leader>fs', MiniExtra.pickers.spellsuggest, 'Find spelling')

-- keys.map('n', '<C-f>', function()
-- 	MiniExtra.pickers.history({ scope = ':' })
-- end, 'Filter command history')

-- keys.map('n', '<C-s>', function()
-- 	MiniExtra.pickers.buf_lines({ scope = 'current' })
-- end, 'Find lines')

-- mini.pick
add('echasnovski/mini.pick')
require('mini.pick').setup({
	source = {
		show = require('mini.pick').default_show,
	},

	mappings = {
		refine = '<C-J>',
		choose_marked = '<C-Q>',
	},
})

-- Use mini.pick as the default selector in vim
vim.ui.select = MiniPick.ui_select

-- MINI.PICK Mappings
-- keys.map('n', '<Leader><Space>', MiniPick.builtin.files, 'Find files')
-- keys.map('n', '<Leader>z', MiniPick.builtin.resume, 'Resume last picker')
-- keys.map('n', '<C-b>', MiniPick.builtin.buffers, 'Find buffers')
-- keys.map('n', '<Leader>fh', MiniPick.builtin.help, 'Find help')
-- keys.map('n', '<Leader>fg', MiniPick.builtin.grep_live, 'Find content')
-- keys.map('n', '<Leader>*', '<cmd>Pick grep pattern='<cword>'<cr>', 'Grep string under cursor')

-- mini.pairs
add('echasnovski/mini.pairs')
require('mini.pairs').setup({
	modes = { insert = true, command = true, terminal = true },
})

-- mini.files
add('echasnovski/mini.files')
require('mini.files').setup({
	mappings = {
		go_in_plus = '<CR>',
	},
})

-- MINI.FILES Mappings
-- keys.map('n', '-', function()
-- 	MiniFiles.open(vim.fn.expand('%'))
-- end, 'Open file explorer')

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

-- Autocommands
-- local group = event.augroup('MacroNotification')
-- 
-- event.autocmd('RecordingEnter', {
-- 	group = group,
-- 	callback = function()
-- 		MiniNotify.add('(macro) Recording @' .. vim.fn.reg_recording())
-- 	end,
-- })
-- 
-- event.autocmd('RecordingLeave', { group = group, callback = MiniNotify.clear })

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

-- mini.sessions
add('echasnovski/mini.sessions')
require('mini.sessions').setup({
	autowrite = false,
	verbose = { read = true },
})

--- Wrapper around mini.sessions functions. Returns a function that
--- behaves differently based on the given scope.
----@param scope 'local'|'write'|'read'|'delete'
---@return function
local function session(scope)
	return function()
		if scope == 'local' then
			MiniSessions.write('Session.vim')
		else
			MiniSessions.select(scope)
		end
	end
end

-- MINI.SESSION Mappings
-- keys.map('n', '<Leader>sl', session('local'), 'Write a local session')
-- keys.map('n', '<Leader>sw', session('write'), 'Write a session')
-- keys.map('n', '<Leader>sr', session('read'), 'Read a session')
-- keys.map('n', '<Leader>sd', session('delete'), 'Delete a session')

-- mini.visits
add('echasnovski/mini.visits')
require('mini.visits').setup()

local LABEL = 'core'

--- Wrapper around mini.visits functions. Returns a function that
--- behaves differently based on the given action.
----@param action 'add'|'remove'
---@return function
local function label(action)
	return function()
		if action == 'add' then
			MiniVisits.add_label(LABEL)
		elseif action == 'remove' then
			MiniVisits.remove_label(LABEL)
		end
	end
end

-- MINI.VISITS Mappings
-- keys.map('n', '<Leader>la', label('add'), 'Add to ' .. LABEL)
-- keys.map('n', '<Leader>lr', label('remove'), 'Remove from ' .. LABEL)

-- keys.map('n', '<Leader>v', function()
-- 	MiniVisits.select_path(nil, { filter = LABEL })
-- end, 'Find labels (current)')
-- keys.map('n', '<Leader>V', function()
-- 	MiniVisits.select_path('', { filter = LABEL })
-- end, 'Find labels (all)')

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
	},
})

-- mini.completion
add('echasnovski/mini.completion')
require('mini.completion').setup({
	window = {
		info = { border = 'single' },
		signature = { border = 'single' },
	},

	fallback_action = '<C-x><C-l>',

	mappings = {
		force_twostep = '<C-h>',
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

    -- Built-in completion
    { mode = 'i', keys = '<C-x>' },

    -- `g` key
    { mode = 'n', keys = 'g' },
    { mode = 'x', keys = 'g' },

    -- Marks
    { mode = 'n', keys = "'" },
    { mode = 'n', keys = '`' },
    { mode = 'x', keys = "'" },
    { mode = 'x', keys = '`' },

    -- Registers
    { mode = 'n', keys = '"' },
    { mode = 'x', keys = '"' },
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
