return {

  --======================================onedark===================================

  --====================================gruvbox=====================================
  {
    "ellisonleao/gruvbox.nvim",
    -- prioirity = 1000,
    event = "VeryLazy",
    config = function()
      require("gruvbox").setup({
        italic = {
          strings = false,
          comments = false,
          operators = false,
          folds = false,
        },
        -- bold = false,
        overrides = {
          String = { fg = "#00a000" },
          -- StatusLine = { fg = "#1f2335" }
        },
      })
      -- vim.cmd("colorscheme gruvbox")
    end,
  },

  {
    "maxmx03/solarized.nvim",
    lazy = "false",
    -- event = "VeryLazy",
    config = function()
      -- vim.o.background = "dark" -- or 'light'
      require("solarized").setup({
        transparent = false, -- enable transparent background
        styles = {
          comments = { italic = false },
          functions = { italic = false, bold = true },
          variables = { italic = false },
          numbers = {},
          constants = {},
          parameters = { italic = false },
          keywords = {},
          types = {},
        },
        highlights = {},
        colors = {},
        -- theme = "neo", -- or 'neosolarized' or 'neo' for short
      })
    end,
  },

  --===================================LazyVim========================================
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      -- colorscheme = "tokyonight",
      -- colorscheme = "default",
      colorscheme = "solarized",
    },
  },
}
