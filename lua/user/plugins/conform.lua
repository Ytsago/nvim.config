-- ~/.config/nvim/lua/user/plugins/conform.lua

-- This file overrides AstroNvim's default conform.nvim settings.
-- We want to return a table that specifies the plugin and its options.
return {
  -- Specify the plugin by its GitHub path
  "stevearc/conform.nvim",
  -- Define the options (opts) for this plugin
  opts = {
    -- *** THIS IS THE KEY SETTING TO DISABLE AUTOMATIC FORMATTING ON SAVE ***
    format_on_save = false,

    -- OPTIONAL: You can also explicitly remove specific formatters for certain file types.
    -- This ensures that even if you manually trigger formatting with `:Conform` or similar,
    -- it won't use clang-format for C/C++ files through conform.
    formatters_by_ft = {
      c = {},    -- No formatter configured for C files
      cpp = {},  -- No formatter configured for C++ files
      h = {},    -- No formatter configured for .h header files
      hpp = {},  -- No formatter configured for .hpp header files
      -- You can add other filetypes here (e.g., lua = {},) if you don't want them formatted by conform.
    },

    -- OPTIONAL: Prevent conform from falling back to LSP formatting if it can't find a formatter.
    -- If you already set 'documentFormattingProvider = false' in astrolsp.lua, this is less critical,
    -- but provides an extra layer of control.
    -- lsp_format = "never", -- or false
  },
}
