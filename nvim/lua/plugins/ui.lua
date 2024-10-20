return {

  --======================================whiskyline====================================
  {
    "Lengdrich/whiskyline.nvim",
    event = "VeryLazy",
    config = function()
      require("whiskyline").setup({
        -- bg = "#1d2021",
        bg = "#32302f",
        -- bg = "#fbf1c7",
        -- bg = "#f9f5d7",
        -- bg = "#f2e5bc",
      })
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  --======================================whiskyline====================================
  -- {
  --   'nvimdev/modeline.nvim',
  --   event = { 'BufReadPost */*' },
  --   config = function()
  --     require('modeline').setup()
  --   end,
  -- },

  --======================================indent_blankline====================================
  {
    "nvimdev/indentmini.nvim",
    event = "VeryLazy",
    config = function()
      require("indentmini").setup({
        char = "│",
      })
      vim.cmd.highlight("default link IndentLine Comment")
      -- vim.cmd.highlight("Visual indentmini guibg = #282828")
    end,
    -- this is no required but if you want indent blanklink line this is needed
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },

}
