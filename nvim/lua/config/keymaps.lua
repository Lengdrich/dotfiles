-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

local cmd = function(str)
  return "<cmd>" .. str .. "<CR>"
end

map("n", "<Leader>w", cmd("w"))

map("n", "<Leader>y", '"+y')
map("n", "<Leader>yy", '"+yy')
map("n", "<Leader>p", '"+p')
map("v", "<Leader>y", '"+y')
map("v", "<Leader>p", '"+p')

map("n", "<Leader>2", "$")
map("v", "<Leader>2", "$")

--=====================================================
--                                                   --
--                 plugins keymaps                   --
--                                                   --
--=====================================================

--===========================tmux navigate=====================================
map("n", "<C-h>", cmd("NvimTmuxNavigateLeft"), { silent = true })
map("n", "<C-j>", cmd("NvimTmuxNavigateDown"), { silent = true })
map("n", "<C-k>", cmd("NvimTmuxNavigateUp"), { silent = true })
map("n", "<C-l>", cmd("NvimTmuxNavigateRight"), { silent = true })

--=============================lspsaga=========================================
map("n", ";n", cmd("Lspsaga diagnostic_jump_next"))
map("n", ";p", cmd("Lspsaga diagnostic_jump_prev"))
map("n", ";c", cmd("Lspsaga show_cursor_diagnostics"))
map("n", "K", cmd("Lspsaga hover_doc"))
map("n", "ga", cmd("Lspsaga code_action"))
map("n", "gd", cmd("Lspsaga goto_definition"))
map("n", "gD", cmd("Lspsaga goto_declaration"))
map("n", "gr", cmd("Lspsaga lsp_rename"))
map("n", "gh", cmd("Lspsaga finder"))
map("n", "<Leader>o", cmd("Lspsaga outline"))
