-- ~/.config/nvim/lua/user/options.lua

-- Your desired global settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false -- This is the crucial global setting
vim.opt.softtabstop = 0
vim.opt.colorcolumn = '80'
vim.opt.swapfile = false

-- Autocommand to ensure expandtab=false is applied after filetype plugins load
-- This runs AFTER AstroNvim's astrocore has set its defaults
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "*" }, -- Apply to all file types
  callback = function()
    -- Only apply if expandtab is currently true (to avoid overriding if it's already correct)
    -- This guard helps avoid unnecessary re-settings and potential conflicts
    if vim.opt_local.expandtab:get() then
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
        vim.opt_local.expandtab = false
        vim.opt_local.softtabstop = 0
    end
  end,
})
