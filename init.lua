-- Put this at the top of 'init.lua'
local path_package = vim.fn.stdpath('data') .. '/site'
local mini_path = path_package .. '/pack/deps/start/mini.nvim'
if not vim.loop.fs_stat(mini_path) then
  vim.cmd('echo "Installing `mini.nvim`" | redraw')
  local clone_cmd = {
    'git', 'clone', '--filter=blob:none',
    '--branch', 'stable',
    'https://github.com/echasnovski/mini.nvim', mini_path
  }
  vim.fn.system(clone_cmd)
  vim.cmd('packadd mini.nvim | helptags ALL')
end

-- Add the plugins directory to the Lua package path
local plugins_path = vim.fn.stdpath('config') .. '/plugins'
package.path = package.path .. ';' .. plugins_path .. '?.lua'

local MiniDeps = require('mini.deps')
MiniDeps.setup()


-- Require your plugins
require('keymaps')
require('options')
require('autocmds')
require('lsp')
require('plugins')

vim.cmd('colorscheme material-deep-ocean')
