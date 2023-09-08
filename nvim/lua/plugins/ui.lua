return {

  --=====================================noice========================================
  {
    "folke/noice.nvim",
    opts = {
      -- -- add any options here
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
      routes = {
        {
          filter = {
            event = "msg_show",
            find = "%d+L, %d+B",
          },
          view = "mini",
        },
      },
    },
  },

  --======================================whiskyline====================================
  {
    "Lengdrich/whiskyline.nvim",
    event = "BufEnter",
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
}
