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
      -- return {
      require("plugins.coding.lspconfig")
      -- }
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

  -- {
  --   "nvimdev/epo.nvim",
  --   event = "InsertEnter",
  --   -- dev = true,
  --   config = function()
  --     require("epo").setup({
  --       -- default value of options.
  --       fuzzy = false,
  --       -- increase this value can aviod trigger complete when delete character.
  --       debounce = 50,
  --       -- when completion confrim auto show a signature help floating window.
  --       signature = false,
  --     })
  --   end,
  -- },

  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        preselect = cmp.PreselectMode.Item,
        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered(),
        },
        formatting = {
          fields = { "abbr", "kind", "menu" },
        },
        -- You can set mappings if you want
        mapping = cmp.mapping.preset.insert({
          ["<C-e>"] = cmp.config.disable,
          ["<Tab>"] = cmp.mapping.confirm({ select = true }),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "path" },
          { name = "buffer" },
        },
      })
    end,
  },

  -- {
  --   "L3MON4D3/LuaSnip",
  --
  --   event = "InsertCharPre",
  --   keys = function()
  --     return {}
  --   end,
  --   config = function()
  --     local ls = require("luasnip")
  --     ls.config.set_config({
  --       delete_check_events = "TextChanged,InsertEnter",
  --     })
  --     require("luasnip.loaders.from_vscode").lazy_load({
  --       paths = { "./snippets/" },
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
