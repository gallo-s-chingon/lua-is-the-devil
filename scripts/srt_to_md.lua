-- ~/.config/nvim/scripts/srt_to_md.lua
-- Convert SRT to Markdown: remove numeric lines (1-99999), timecodes, and collapse newlines

-- Read the current buffer (assumes the SRT file is loaded)
local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
local filtered_lines = {}

-- Filter lines
for _, line in ipairs(lines) do
	-- Skip lines that are just numbers (1-99999)
	if not line:match("^%d%d?%d?%d?%d?$") then
		-- Skip timecode lines (e.g., "00:00:01,000 --> 00:00:02,000")
		if not line:match("%-%->") then
			-- Add non-empty alphanumeric lines
			if line:match("%S") then
				table.insert(filtered_lines, line)
			end
		end
	end
end

-- Replace buffer with filtered lines (single newline between each)
vim.api.nvim_buf_set_lines(0, 0, -1, false, filtered_lines)

-- Save as markdown (strip .srt and append .md)
local filename = vim.fn.expand("%:p:r") .. ".md"
vim.api.nvim_command("write! " .. filename)
vim.api.nvim_command("quit!")
