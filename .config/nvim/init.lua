local vim = vim
local Plug = vim.fn['plug#']

--- PLUGINS ---
vim.call('plug#begin')

Plug ('junegunn/fzf')
Plug ('junegunn/fzf.vim')
Plug ('smithbm2316/centerpad.nvim')
Plug('nanotech/jellybeans.vim')
Plug('nvim-lualine/lualine.nvim')

vim.call('plug#end')

require('lualine').setup()

--- KEYBINDS ---
vim.g.mapleader = ' '
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '<leader>f', ':Files<CR>')
vim.keymap.set('n', '<leader>r', ':RG<CR>')
vim.cmd('nmap <silent> <Esc> :noh<CR>')

--- TWEAKS ---
vim.cmd('set number')
vim.cmd('set shiftwidth=4 smarttab')
-- vim.cmd(":set iskeyword-=_")
vim.cmd('silent! colorscheme jellybeans')
vim.cmd('silent! set linebreak')

--- Clipboard access
vim.api.nvim_set_option("clipboard","unnamedplus")
