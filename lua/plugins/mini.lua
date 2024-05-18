return {
	{
		"echasnovski/mini.nvim",
		config = function()
			require("mini.extra").setup()

			require("mini.pick").setup({
				source = {
					show = require("mini.pick").default_show,
				},
			})

			vim.ui.select = require("mini.pick").ui_select

			require("mini.pairs").setup({
				modes = { insert = true, command = true, terminal = true },
			})

			require("mini.basics").setup({
				options = {
					extra_ui = true,
				},
			})

			require("mini.notify").setup({
				content = {
					format = function(notif)
						return notif.msg
					end,
				},
				window = {
					config = {
						border = "rounded",
					},
				},
			})

			require("mini.diff").setup({
				view = {
					style = "sign",
					signs = { add = "+", change = "~", delete = "-" },
				},
			})

			vim.notify = require("mini.notify").make_notify()

			require("mini.comment").setup({
				options = { ignore_blank_line = true },
			})

			require("mini.move").setup({
				mappings = {
					down = "<C-J>",
					up = "<C-K>",
					left = "<C-H>",
					right = "<C-L>",
					line_down = "<C-J>",
					line_up = "<C-K>",
					line_left = "<C-H>",
					line_right = "<C-L>",
				},
			})

			require("mini.surround").setup({
				keys = function(_, keys)
					local plugin = require("lazy.core.config").spec.plugins["mini.surround"]
					local opts = require("lazy.core.plugin").values(plugin, "opts", false)
					local mappings = {
						{ opts.mappings.add, desc = "Add Surrounding", mode = { "n", "v" } },
						{ opts.mappings.delete, desc = "Delete Surrounding" },
						{ opts.mappings.find, desc = "Find Right Surrounding" },
						{ opts.mappings.find_left, desc = "Find Left Surrounding" },
						{ opts.mappings.highlight, desc = "Highlight Surrounding" },
						{ opts.mappings.replace, desc = "Replace Surrounding" },
						{ opts.mappings.update_n_lines, desc = "Update `MiniSurround.config.n_lines`" },
					}
					mappings = vim.tbl_filter(function(m)
						return m[1] and #m[1] > 0
					end, mappings)
					return vim.list_extend(mappings, keys)
				end,
				opts = {
					mappings = {
						add = "<leader>sa",
						delete = "<leader>sd",
						find = "<leader>sf",
						find_left = "<leader>sg",
						highlight = "<leader>sh",
						replace = "<leader>sr",
						update_n_lines = "<leader>sn",
					},
				},
			})

			require("mini.ai").setup({
				custom_textobjects = {
					B = require("mini.extra").gen_ai_spec.buffer(),
					L = require("mini.extra").gen_ai_spec.line(),
				},
			})

			require("mini.bracketed").setup({
				treesitter = { suffix = "" },
				oldfile = { suffix = "" },
				diagnostic = { suffix = "" },
			})

			require("mini.jump").setup({
				mappings = {
					repeat_jump = ",",
				},
				delay = {
					highlight = 0,
				},
			})

			require("mini.splitjoin").setup()
			require("mini.trailspace").setup()
			require("mini.operators").setup()
			require("mini.colors").setup()
			require("mini.tabline").setup()
			local hipatterns = require("mini.hipatterns")
			require("mini.hipatterns").setup({
				highlighters = {
					find = { pattern = "%f[%w]()FIND()%f[%W]", group = "DiffAdd" },
					idea = { pattern = "%f[%w]()IDEA()%f[%W]", group = "TabLineSel" },
					todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "DiffDelete" },
					note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "@comment.hint" },
					hex_color = hipatterns.gen_highlighter.hex_color(),
				},
			})
			require("mini.statusline").setup({
				statusline = {
					setup = function(config)
						config.use_icons = vim.g.have_nerd_font
						return config
					end,
				},
			})
			require("mini.clue").setup({
				triggers = {
					{ mode = "n", keys = "<Leader>" },
					{ mode = "x", keys = "<Leader>" },
					{ mode = "n", keys = "g" },
					{ mode = "x", keys = "g" },
					{ mode = "n", keys = "'" },
					{ mode = "n", keys = "`" },
					{ mode = "x", keys = "'" },
					{ mode = "x", keys = "`" },
					{ mode = "n", keys = "'" },
					{ mode = "x", keys = "'" },
					{ mode = "i", keys = "<C-r>" },
					{ mode = "c", keys = "<C-r>" },
					{ mode = "n", keys = "<C-w>" },
					{ mode = "n", keys = "z" },
					{ mode = "x", keys = "z" },
				},
				clues = {
					require("mini.clue").gen_clues.builtin_completion(),
					require("mini.clue").gen_clues.g(),
					require("mini.clue").gen_clues.marks(),
					require("mini.clue").gen_clues.registers(),
					require("mini.clue").gen_clues.windows(),
					require("mini.clue").gen_clues.z(),
				},
			})
		end,
	},
}
