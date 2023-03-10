local enable_lsp_filetype = {
   'go',
   'lua',
   'sh',
   'rust',
   'c',
   'cpp',
   'zig',
   'typescript',
   'typescriptreact',
   'json',
   'python',
   'elixir',
}

local cmd = function(str)
  return '<cmd>' .. str .. '<CR>'
end

return {
  {
    'neovim/nvim-lspconfig',
    -- used filetype to lazyload lsp
    -- config your language filetype in here
    ft = { 'lua', 'rust', 'c', 'cpp' },
    keys = function()
      return {
        { '<Leader>li', cmd('LspInfo'), desc = 'LspInfo' },
        { '<Leader>ll', cmd('LspLog'), desc = 'LspLog' },
        { '<Leader>lr', cmd('LspRestart'), desc = 'LspRestart' },
      }
    end,
    config = function()
      require('plugins.coding.lspconfig')
    end
  },

  {
    "williamboman/mason.nvim",
    cmd = 'Mason',
    opts = {
      ui = {
          icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
          }
      }
    }
  },

  {
    "glepnir/lspsaga.nvim",
    branch = "main",
    ft = enable_lsp_filetype,
    config = function()
      require('lspsaga').setup()
    end
  },

  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    config = function()
      local cmp = require('cmp')
      cmp.setup({
        preselect = cmp.PreselectMode.Item,
        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered(),
        },
        formatting = {
          fields = { 'abbr', 'kind', 'menu' },
        },
        -- You can set mappings if you want
        mapping = cmp.mapping.preset.insert({
          ['<C-e>'] = cmp.config.disable,
          ['<Tab>'] = cmp.mapping.confirm({ select = true }),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        sources = {
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
          { name = 'buffer' },
        },
      })
    end
  },

  {
    'L3MON4D3/LuaSnip',
    event = 'InsertCharPre',
    config = function()
      local ls = require('luasnip')
      ls.config.set_config({
        delete_check_events = 'TextChanged,InsertEnter',
      })
      require('luasnip.loaders.from_vscode').lazy_load({
        paths = { './snippets/' },
      })
    end
  },

}
