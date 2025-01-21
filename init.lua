-- Bootstrap lazy.nvim, LazyVim, and your plugins
require("config.lazy")

-- Enable verbose logging for Neovim
local log_file = vim.fn.stdpath("cache") .. "/nvim_debug.log" -- Log file path

-- Set verbose level to capture more details
vim.o.verbose = 15 -- Adjust verbosity level (15 is maximum)
vim.o.verbosefile = log_file -- Redirect verbose output to the log file

-- Function to write custom logs (e.g., for vim.notify or manual logs)
local function write_log(msg, level)
  local log_fh = io.open(log_file, "a")
  if not log_fh then
    print("Failed to open log file: " .. log_file)
    return
  end

  local levels = {
    [vim.log.levels.ERROR] = "ERROR",
    [vim.log.levels.WARN] = "WARN",
    [vim.log.levels.INFO] = "INFO",
    [vim.log.levels.DEBUG] = "DEBUG",
  }
  local timestamp = os.date("%Y-%m-%d %H:%M:%S")
  local level_str = levels[level] or "DEBUG"
  log_fh:write(string.format("[%s] [%s] %s\n", timestamp, level_str, msg))
  log_fh:flush()
  log_fh:close()
end

-- Override vim.notify to capture notifications in the log file
vim.notify = function(msg, level, opts)
  write_log(msg, level or vim.log.levels.INFO)
  -- Call the default notify function to display messages in Neovim
  vim.api.nvim_echo({ { msg } }, true, {})
end

-- Log a startup message
write_log("Neovim started", vim.log.levels.INFO)

-- Set colorscheme
vim.cmd("colorscheme material-deep-ocean")
