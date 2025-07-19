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
Plug 'junegunn/fzf.vim'
--Plug 'mikavilpas/yazi.nvim'
--Plug 'nvim-lua/plenary.nvim'
Plug 'Kicamon/yazi.nvim'

-- VCS
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'

-- UI
Plug'nvim-lualine/lualine.nvim'
Plug 'folke/which-key.nvim'
Plug 'xiyaowong/transparent.nvim'

-- Themes
Plug'nanotech/jellybeans.vim'
Plug'shaunsingh/nord.nvim'
Plug'ellisonleao/gruvbox.nvim'

vim.call('plug#end')

require('yazi').setup()

--- THEME ---
vim.cmd('silent! colorscheme gruvbox')

--- KEYMAP ---
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- FZF
vim.keymap.set('n', '<leader>p', ':GFiles<CR>')
vim.keymap.set('n', '<leader>P', ':Files<CR>')
vim.keymap.set('n', '<leader>r', ':RG<CR>')
vim.keymap.set('n', '<leader>b', ':Buffers<CR>')
vim.keymap.set('n', '<leader>g', ':Git<CR>')
vim.keymap.set('n', '<leader>h', ':Help<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>t', ':Tags<CR>')
vim.keymap.set('n', '<leader>m', ':Marks<CR>')
vim.keymap.set('n', '<leader>f', ':Yazi<CR>')
vim.keymap.set('n', '<leader>F', ':tabe|Yazi<CR>')

--vim.g.markdown_folding = 1
--vim.g.markdown_enable_folding = 1
--vim.o.foldlevelstart = 99

require("transparent").setup({
  -- table: default groups
  groups = {
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
    'EndOfBuffer',
  },
  -- table: additional groups that should be cleared
  extra_groups = {},
  -- table: groups you don't want to clear
  exclude_groups = {},
  -- function: code to be executed after highlight groups are cleared
  -- Also the user event "TransparentClear" will be triggered
  on_clear = function() end,
})
