return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "notes",
				path = "/Users/gchingon/Documents/ozel",
				daily_notes = {
					folder = "%Y/%m/",
					{
						{
							name = "novel",
							path = "/Users/gchingon/Documents/novel/",
						},
					},
					ui = {
						enable = true,
						update_debounce = 500,
					},
				},
				completion = {
					nvim_cmp = true,
					min_chars = 3,
				},
				mappings = {
					["<leader>Of"] = {
						action = function()
							return require("obsidian").util.gf_passthrough()
						end,
						opts = { noremap = false, expr = true, buffer = true },
					},
				},

				note_frontmatter_func = function(note)
					-- This is equivalent to the default frontmatter function.
					local out = { id = note.id, tags = note.tags, area = "", project = "" }
					-- `note.metadata` contains any manually added fields in the frontmatter.
					-- So here we just make sure those fields are kept in the frontmatter.
					if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
						for k, v in pairs(note.metadata) do
							out[k] = v
						end
					end
					return out
				end,

				templates = {
					subdir = "templates",
					date_format = "%Y-%m-%d",
					time_format = "%H:%M",
					tags = "",
				},
			},
		},
	},
}
