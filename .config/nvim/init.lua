local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

--- Nice visuals
Plug('nanotech/jellybeans.vim')
Plug('nvim-lualine/lualine.nvim')

--- For writing stuff
Plug ('smithbm2316/centerpad.nvim')

--- Utils
--- Plug ('pocco81/auto-save.nvim')
Plug ('junegunn/fzf')
Plug ('junegunn/fzf.vim')

vim.call('plug#end')

require('lualine').setup()
-- :lua require('fzf-lua').files()

vim.g.mapleader = ';'
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '<leader>f', ':Files<CR>')

vim.cmd('silent! colorscheme jellybeans')
vim.cmd('silent! set linebreak')

function open_current_line() 
	local line = vim.api.nvim_get_current_line()
	local cmd = string.format("silent !open '%s'", line)
	--print(cmd)
	vim.api.nvim_command(cmd)
end

vim.cmd('set shiftwidth=4 smarttab')
vim.cmd('set number')

-- Open file during rename
vim.keymap.set('n', 'gO', open_current_line)
-- vim.cmd(':xnoremap gO :!open <cfile><CR>')
-- vim.cmd(":set iskeyword-=_")
