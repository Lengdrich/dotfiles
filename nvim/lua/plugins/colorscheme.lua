return {

  --======================================onedark===================================

  --====================================gruvbox=====================================
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   -- prioirity = 1000,
  --   event = "VeryLazy",
  --   config = function()
  --     require("gruvbox").setup({
  --       italic = {
  --         strings = false,
  --         comments = false,
  --         operators = false,
  --         folds = false,
  --       },
  --       -- bold = false,
  --       overrides = {
  --         String = { fg = "#00a000" },
  --         -- StatusLine = { fg = "#1f2335" }
  --       },
  --     })
  --     -- vim.cmd("colorscheme gruvbox")
  --   end,
  -- },

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
        styles = {
          functions = { bold = true },
          -- variables = { fg = grey },
          parameters = { italic = false },
          keywords = { fg = purple },
          constants = { fg = magenta },
        },
        on_highlights = function(colors, color)
          return {
            ["@constant.builtin.rust"] = { link = "Type" },
            ["@lsp.type.enumMember"] = { link = "Type" },
            ["@variable.member"] = { fg = grey },
            ["@keyword.import"] = { fg = purple },
            ["@module.builtin"] = { fg = type_color },
            ["@module"] = { fg = type_color },
            ["@keyword.import.rust"] = { fg = type_color },
            Statement = { bold = true, fg = purple },
            SpecialComment = { fg = "#586e75" },
            Type = { fg = type_color },
            Structure = { fg = type_color },
            Include = { fg = purple },
            Define = { fg = colors.blue },
            Macro = { fg = colors.blue },
            PreCondit = { fg = purple },
            Boolean = { fg = magenta },
            StorageClass = { fg = purple },
            Identifier = { fg = grey },
          }
        end,
        -- colors = {},
        -- theme = "neo", -- or 'neosolarized' or 'neo' for short
      })
    end,
  },

  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     transparent = true,
  --     styles = {
  --       -- Style to be applied to different syntax groups
  --       -- Value is any valid attr-list value for `:help nvim_set_hl`
  --       -- comments = { italic = false, fg = "#586e75" },
  --       keywords = { italic = false, bold = true, fg = "#6C71C4" },
  --       functions = { italic = false },
  --       variables = { italic = false },
  --       -- Background styles. Can be "dark", "transparent" or "normal"
  --       sidebars = "transparent", -- style for sidebars, see below
  --       floats = "transparent", -- style for floating windows
  --     },
  --     hide_inactive_statusline = false,
  --     on_highlights = function(hl, c)
  --       local prompt = "#2d3149"
  --       hl.DiagnosticVirtualTextError = {
  --         bg = c.base03,
  --         fg = c.red500,
  --       }
  --       hl.DiagnosticVirtualTextWarn = {
  --         bg = c.base03,
  --         fg = c.yellow500,
  --       }
  --       hl.DiagnosticVirtualTextInfo = {
  --         bg = c.base03,
  --         fg = c.blue500,
  --       }
  --       hl.DiagnosticVirtualTextHint = {
  --         bg = c.base03,
  --         fg = c.cyan500,
  --       }
  --     end,
  --   },
  -- },

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
