local vim = vim

-- Show line numbers
vim.o.number = true

vim.o.linebreak = true

-- Show which line your cursor is on
vim.o.cursorline = true

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Save undo history
vim.o.undofile = true

-- Better case searching
vim.o.ignorecase = true
vim.o.smartcase = true

-- Tabbing
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.smarttab = true

-- Num lines to keep above/below cursor.
vim.o.scrolloff = 10

-- prompt save on quit with unsaved changes
vim.o.confirm = true

-- Disable mouse
vim.opt.mouse = ""

--- PLUGINS ---
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Navigation
Plug 'junegunn/fzf'

-- VCS
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'

-- UI
Plug 'folke/todo-comments.nvim'
Plug'nvim-lualine/lualine.nvim'

Plug 'folke/which-key.nvim'
Plug 'folke/zen-mode.nvim'

-- Themes
Plug'nanotech/jellybeans.vim'
Plug'shaunsingh/nord.nvim'

vim.call('plug#end')

--- THEME ---
vim.cmd('silent! colorscheme jellybeans')

--- KEYMAP ---
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- FZF
vim.keymap.set('n', '<leader>f', ':GFiles<CR>')
vim.keymap.set('n', '<leader>r', ':RG<CR>')
vim.keymap.set('n', '<leader>h', ':Help<CR>')
vim.keymap.set('n', '<leader>w', ':Windows<CR>')
vim.keymap.set('n', '<leader>t', ':Tags<CR>')
vim.keymap.set('n', '<leader>m', ':Marks<CR>')
