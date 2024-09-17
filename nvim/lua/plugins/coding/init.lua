local enable_lsp_filetype = {
  "go",
  "lua",
  "sh",
  "rust",
  "c",
  "cpp",
  "typescript",
  "javascript",
  "typescriptreact",
  "json",
  "vue",
  "html",
}

local cmd = function(str)
  return "<cmd>" .. str .. "<CR>"
end

return {
  {
    "neovim/nvim-lspconfig",
    -- used filetype to lazyload lsp
    -- config your language filetype in here
    -- ft = { "lua", "rust", "c", "cpp" },
    ft = enable_lsp_filetype,
    keys = function()
      return {
        { "<Leader>li", cmd("LspInfo"), desc = "LspInfo" },
        { "<Leader>ll", cmd("LspLog"), desc = "LspLog" },
        { "<Leader>lr", cmd("LspRestart"), desc = "LspRestart" },
      }
    end,
    config = function()
      require("plugins.coding.lspconfig")
    end,
  },

  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },

  {
    "glepnir/lspsaga.nvim",
    branch = "main",
    ft = enable_lsp_filetype,
    config = function()
      require("lspsaga").setup({
        symbol_in_winbar = {
          ignore_patterns = { "%w_spec" },
        },
      })
    end,
  },

  {
    "nvimdev/epo.nvim",
    event = "InsertEnter",
    -- dev = true,
    config = function()
      require("epo").setup({
        -- nvim-autopair compatibility
        vim.keymap.set("i", "<cr>", function()
          if vim.fn.pumvisible() == 1 then
            return "<C-y>"
          end
          return require("mini.pairs").cr()
        end, { expr = true, noremap = true }),
      })
    end,
  },

  -- {
  --   "hrsh7th/nvim-cmp",
  --   event = "InsertEnter",
  --   config = function()
  --     local cmp = require("cmp")
  --     cmp.setup({
  --       preselect = cmp.PreselectMode.Item,
  --       window = {
  --         -- completion = cmp.config.window.bordered(),
  --         -- documentation = cmp.config.window.bordered(),
  --       },
  --       formatting = {
  --         fields = { "abbr", "kind", "menu" },
  --       },
  --       -- You can set mappings if you want
  --       mapping = cmp.mapping.preset.insert({
  --         ["<C-e>"] = cmp.config.disable,
  --         ["<Tab>"] = cmp.mapping.confirm({ select = true }),
  --         ["<CR>"] = cmp.mapping.confirm({ select = true }),
  --       }),
  --       sources = {
  --         { name = "nvim_lsp" },
  --         { name = "path" },
  --         { name = "nvim-snippets" },
  --         { name = "buffer" },
  --       },
  --     })
  --   end,
  -- },

  {
    "nvim-ts-autotag",
    event = function()
      return {}
    end,
    ft = {
      "html",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "svelte",
      "vue",
      "tsx",
      "jsx",
      "rescript",
      "xml",
      "php",
      "markdown",
      "astro",
      "glimmer",
      "handlebars",
      "hbs",
    },
  },
}
