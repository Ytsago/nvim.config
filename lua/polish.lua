-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- vim.cmd([[
--   vim.opt.tabstop = 4
--   vim.opt.shiftwidth = 4
--   vim.opt.expandtab = false -- This is the crucial global setting
--   vim.opt.softtabstop = 0
--   "vim.opt.colorcolumn = '80'
--   vim.opt.swapfile = false
-- 	"set notermguicolors
-- 	"highligh @type ctermfg=1 cterm=bold
-- 	"highligh @function ctermfg=2
-- 	"highligh @parameter ctermfg=3
-- 	"highligh @variable ctermfg=4
-- 	"highligh @variable ctermfg=5
-- 	"highligh @keyword ctermfg=6
-- 	"highligh @keyword.conditional ctermfg=6
-- 	"highligh @keyword.repeat ctermfg=6
-- 	"highligh @keyword.return ctermfg=6
-- 	"highligh @comment ctermfg=7
-- 	"highligh @type.builtin ctermfg=8 cterm=bold
-- 	"highligh @number ctermfg=9 cterm=bold
-- 	"highligh @lsp.type.enumMember ctermfg=10 cterm=bold
-- 	"highligh @lsp.type.macro ctermfg=11 cterm=bold
-- ]])

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- ~/.config/nvim/lua/user/options.lua

-- Your desired global settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false -- This is the crucial global setting
vim.opt.softtabstop = 0
-- vim.opt.colorcolumn = '80'
vim.opt.swapfile = false

-- Autocommand to ensure expandtab=false is applied after filetype plugins load
-- This runs AFTER AstroNvim's astrocore has set its defaults
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "*" }, -- Apply to all file types
  callback = function()
    -- Only apply if expandtab is currently true (to avoid overriding if it's already correct)
    -- This guard helps avoid unnecessary re-settings and potential conflicts
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
        vim.opt_local.expandtab = false
        vim.opt_local.softtabstop = 0
  end,
})
