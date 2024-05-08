vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- set find/replace to S
vim.keymap.set('n', 'S', ':%s//g<Left><Left>', { noremap = true, silent = false })
vim.keymap.set('n', '.', ':', { noremap = true })
vim.keymap.set('n', ':', '.', { noremap = true })
-- move better in wrapped buffers
vim.keymap.set('n', 'J', 'j', { noremap = true })
vim.keymap.set('n', 'K', 'k', { noremap = true })
vim.keymap.set('n', 'j', 'gj', { noremap = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true })
vim.keymap.set('n', '<leader>l', '$', { noremap = true })
vim.keymap.set('n', '<leader>h', '^', { noremap = true })
vim.keymap.set('v', '<leader>l', '$', { noremap = true, desc = 'end of line'})
vim.keymap.set('v', '<leader>h', '^', { noremap = true, desc = 'start of line'})
vim.keymap.set('n', '<leader>t', ']s', { noremap = true, desc = 'next misspell'})
vim.keymap.set('n', '<leader>e', '[s', { noremap = true, desc = 'prior misspell'})
vim.keymap.set('n', '<leader>c', 'zg', { noremap = true, desc = 'mark spell good'})
vim.keymap.set( 'n', '<leader>o', '<cmd>redo<cr>', { noremap = true, desc = 'redo' })
vim.keymap.set('n', '<leader>5', function()
  vim.cmd('w')
  vim.cmd('source %')
end, { noremap = true, silent = false, desc = 'write & source file' })
-- MINI.CLUE setup
vim.keymap.set('n', '<leader>m', '<cmd>Mason<cr>', { noremap = true, desc = 'Mason' })
vim.keymap.set('n', '<leader>n', '<cmd>enew<cr>', { noremap = true, desc = 'New File' })
vim.keymap.set('n', '<leader>p', '<cmd>PasteImage<cr>', { noremap = true, desc = 'Paste clipboard image' })
vim.keymap.set('n', '<leader>ga', '<cmd>Git add<cr>', { noremap = true, desc = 'Git ' })
vim.keymap.set('n', '<leader>gs', '<cmd>Git status<cr>', { noremap = true, desc = 'Git ' })
vim.keymap.set('n', '<leader>gd', '<cmd>Git diff<cr>', { noremap = true, desc = 'Git ' })
vim.keymap.set('n', '<leader>gh', '<cmd>Git help<cr>', { noremap = true, desc = 'Git ' })
-- buffer navigation
vim.keymap.set('n', '<S-h>', '<cmd>bprevious<cr>', { noremap = true, desc = 'Prev Buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { noremap = true, desc = 'Next Buffer' })
vim.keymap.set('n', '<leader>-', '<cmd>bd<cr>', { noremap = true, desc = 'Delete Current Buffer'})
-- Keybinds to make split navigation easier. Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
