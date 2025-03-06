-- ~/.config/nvim/scripts/batch_srt_to_md.lua
local dir = vim.fn.expand("%:p:h") -- Current file's directory (pass via -c)
local files = vim.fn.glob(dir .. "/*.srt", true, true) -- List all .srt files

for _, file in ipairs(files) do
  -- Open each file
  vim.api.nvim_command("edit " .. file)
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  local filtered_lines = {}

  -- Filter lines (same logic as above)
  for _, line in ipairs(lines) do
    if not line:match("^%d%d?%d?%d?%d?$") and not line:match("%-%->") and line:match("%S") then
      table.insert(filtered_lines, line)
    end
  end

  vim.api.nvim_buf_set_lines(0, 0, -1, false, filtered_lines)
  local md_file = file:gsub("%.srt$", ".md")
  vim.api.nvim_command("write! " .. md_file)
end

vim.api.nvim_command("quit!")
