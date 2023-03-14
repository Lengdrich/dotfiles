-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

local cmd = function(str)
  return '<cmd>' .. str .. '<CR>'
end
-- map('n', '<C-n>' '<cmd>Neotree toggle<cr>', {desc = 'neotree toggle'})
map("n", '<Leader>w', cmd('w'))

map('n', '<Leader>y', '"+y')
map('n', '<Leader>p', '"+p')
map('v', '<Leader>y', '"+y')
map('v', '<Leader>p', '"+p')

map('n', 'Y', 'y$')

map('n', '<Leader>2', '$')

--=====================================================
--                                                   --
--                 plugins keymaps                   --
--                                                   --
--=====================================================

  -- tmux navigate
map('n', '<C-h>', cmd('NvimTmuxNavigateLeft') )
map('n', '<C-j>', cmd('NvimTmuxNavigateDown') )
map('n', '<C-k>', cmd('NvimTmuxNavigateUp') )
map('n', '<C-l>', cmd('NvimTmuxNavigateRight') )

  -- lspsaga
map('n', ';n', cmd('Lspsaga diagnostic_jump_next') )
map('n', ';p', cmd('Lspsaga diagnostic_jump_prev') )
map('n', ';c', cmd('Lspsaga show_cursor_diagnostics') )
map('n', 'K', cmd('Lspsaga hover_doc') )
map('n', 'ga', cmd('Lspsaga code_action') )
map('n', 'gd', cmd('Lspsaga peek_definition') )
map('n', 'gh', cmd('Lspsaga signature_help') )
map('n', 'gr', cmd('Lspsaga rename') )
map('n', 'gs', cmd('Lspsaga lsp_finder') )
map('n', '<Leader>o', cmd('Lspsaga outline') )

