require('plugins')
require('lualine').get_config()
require('lualine').setup{
  options = { 
    theme = 'gruvbox',
    icons_enabled = true
  }
  
}
vim.cmd[[:colorscheme gruvbox]]
global_op = vim.o
local_win = vim.wo
local_buf = vim.bo


local_buf.smartindent = true
local_buf.expandtab = true
local_buf.shiftwidth = 2
local_buf.softtabstop = 2

local_win.nu = true
global_op.background='light'
global_op.encoding='utf-8'
global_op.undodir='~/.vim/undodir'

map = vim.api.nvim_set_keymap

map('n', '<c-s>', ':w<CR>', {})
map('n', '<c-q>', ':q<CR>', {})
map('n', '<c-z>', ':undo<CR>', {})
map('n', '<c-r>', ':redo<CR>', {})
map('n', '<c-v>', ':vsplit<CR>', {})
map('n', '<c-h>', ':split<CR>', {})
map('n', '<c-e>', ':Ntree<CR>', {})

map('i', '<c-s>', '<ESC>:w<CR>', {})
map('i', '<c-z>', '<ESC>:undo<CR>', {})
map('i', '<c-r>', '<ESC>:redo<CR>', {})
