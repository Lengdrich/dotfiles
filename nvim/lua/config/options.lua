-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.clipboard = ""
opt.relativenumber = false
opt.showmode = false -- Dont show mode since we have a statusline
opt.laststatus = 3
opt.shiftwidth = 2
opt.tabstop = 2
opt.signcolumn = "no"
