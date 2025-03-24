-- Bootstrap lazy.nvim, LazyVim, and your plugins
require("config.lazy")

-- Enable verbose logging for Neovim
local log_file = vim.fn.stdpath("cache") .. "/nvim_debug.log" -- Log file path

-- Set verbose level to capture more details
vim.o.verbose = 15 -- Adjust verbosity level (15 is maximum)
vim.o.verbosefile = log_file -- Redirect verbose output to the log file
