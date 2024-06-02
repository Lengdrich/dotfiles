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
      local white = "#ced1d1"
      local purple = "#6c71c4"
      local type_color = "#859900"
      local grey = "#839496"
      local magenta = "#d33682"

      require("solarized").setup({
        transparent = false, -- enable transparent background
        styles = {
          comments = { italic = false },
          functions = { italic = false, bold = true },
          -- variables = { italic = false, fg = grey },
          variables = { fg = grey, italic = false },
          numbers = {},
          constants = { fg = type_color },
          parameters = { italic = false },
          keywords = { fg = purple },
          types = {},
          -- Identifier = { fg = grey },
        },
        highlights = function(c)
          local utils = require("solarized.utils")
          local set_hl = utils.set_hl
          return {
            -- Treesitter@namespace = { fg = "#839496" },
            set_hl("@field", { fg = grey }),
            set_hl("@namespace", { fg = type_color }), -- modules or namespaces
            Statement = { bold = true, fg = purple },
            String = { fg = c.cyan },
            Type = { fg = purple },
            Structure = { fg = type_color },
            PreProc = { fg = c.blue },
            Boolean = { fg = magenta },
          }
        end,
        -- highlights = {},
        -- colors = {},
        -- theme = "neo", -- or 'neosolarized' or 'neo' for short
      })
    end,
  },

  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = false },
        keywords = { italic = false, bold = true, fg = "#6C71C4" },
        functions = { italic = false },
        variables = { italic = false },
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "transparent", -- style for sidebars, see below
        floats = "transparent", -- style for floating windows
      },
      hide_inactive_statusline = false,
      on_highlights = function(hl, c)
        local prompt = "#2d3149"
        hl.DiagnosticVirtualTextError = {
          bg = c.base03,
          fg = c.red500,
        }
        hl.DiagnosticVirtualTextWarn = {
          bg = c.base03,
          fg = c.yellow500,
        }
        hl.DiagnosticVirtualTextInfo = {
          bg = c.base03,
          fg = c.blue500,
        }
        hl.DiagnosticVirtualTextHint = {
          bg = c.base03,
          fg = c.cyan500,
        }
      end,
    },
  },

  --===================================LazyVim========================================
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      -- colorscheme = "tokyonight",
      -- colorscheme = "default",
      colorscheme = "solarized",
      -- colorscheme = "solarized-osaka",
    },
  },
}
