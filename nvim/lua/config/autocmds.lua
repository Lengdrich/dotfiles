-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local autocmd = vim.api.nvim_create_autocmd

-- autocmd("LspAttach", {
--   pattern = { "*.cpp", "*.rs", "*.lua" },
--   callback = function(args)
--     local ok, err = pcall(vim.lsp.inlay_hint, args.buf, true)
--     if not ok then
--       print(err)
--     end
--     vim.cmd.highlight("default link LspInlayHint Comment")
--   end,
-- })
