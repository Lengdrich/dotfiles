return {

  --=====================================noice========================================
  -- {
  --   "folke/noice.nvim",
  --   opts = {
  --     -- -- add any options here
  --     lsp = {
  --       -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
  --       override = {
  --         ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
  --         ["vim.lsp.util.stylize_markdown"] = true,
  --         ["cmp.entry.get_documentation"] = true,
  --       },
  --     },
  --     -- you can enable a preset for easier configuration
  --     presets = {
  --       bottom_search = false, -- use a classic bottom cmdline for search
  --       command_palette = true, -- position the cmdline and popupmenu together
  --       long_message_to_split = true, -- long messages will be sent to a split
  --       inc_rename = false, -- enables an input dialog for inc-rename.nvim
  --       lsp_doc_border = false, -- add a border to hover docs and signature help
  --     },
  --     routes = {
  --       {
  --         filter = {
  --           event = "msg_show",
  --           find = "%d+L, %d+B",
  --         },
  --         view = "mini",
  --       },
  --     },
  --   },
  -- },

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

  --======================================indent_blankline====================================
  {
    "nvimdev/indentmini.nvim",
    event = "VeryLazy",
    config = function()
      require("indentmini").setup({
        char = "│",
        -- exclude = {
        --   "erlang",
        --   "markdown",
        -- }
      })
      vim.cmd.highlight("default link IndentLine Comment")
      -- vim.cmd.highlight("Visual indentmini guibg = #282828")
    end,
    -- this is no required but if you want indent blanklink line this is needed
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },

  -- {
  --   "glepnir/dashboard-nvim",
  --   event = "VimEnter",
  --   config = function()
  --     require("dashboard").setup({
  --       -- config
  --       disable_move = true,
  --       shortcut = {
  --         { desc = "[  Github]", group = "DashboardShortCut" },
  --         { desc = "[  lengdrich]", group = "DashboardShortCut" },
  --         -- { desc = "[  0.2.3]", group = "DashboardShortCut" },
  --       },
  --       preview = {
  --         command = "cat", -- preview command
  --         file_path = vim.fn.stdpath("config") .. "/static/neovim.cat", -- preview file path
  --         file_height = 10, -- preview file height
  --         file_width = 70, -- preview file width
  --       },
  --     })
  --   end,
  --   dependencies = { { "nvim-tree/nvim-web-devicons" } },
  -- },
}
