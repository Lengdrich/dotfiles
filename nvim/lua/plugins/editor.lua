return {

  --==============================neotree============================================
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    cmd = "Neotree toggle",

    keys = function()
      return {
        {"<C-n>", "<cmd>Neotree toggle<CR>", desc = "open neotree"},
      }
    end,

    opts = {
      window = {
        position = "right",
        width = 25,

        mappings = {
          ["<space>"] = {
            "toggle_node",
            nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use
          },
          ["<2-LeftMouse>"] = "open",
          ["<cr>"] = "open",
          ["o"] = "open",
        },
      },
    },

  },

--=================================leap=============================================
  {
    "ggandor/leap.nvim",
    event = 'BufRead',
    config = function()
      vim.keymap.set({'x', 'o', 'n'}, 'f', '<Plug>(leap-forward-to)')
      vim.keymap.set({'x', 'o', 'n'}, 'F', '<Plug>(leap-backward-to)')

      require('leap').setup({
        safe_labels = {
          'f', 'n', 'u', 'm','t', '/', 'S', 'F', 'N',
          'L', 'H', 'M', 'U', 'G', 'T', '?', 'Z',
        }
      })
    end
  },

  --=============================hlsearch===========================================
  {
    'glepnir/hlsearch.nvim',
    event = 'BufRead',
    config = function()
      require('hlsearch').setup()
    end,
  },


  --=============================Comment=============================================
  {
    'numToStr/Comment.nvim',
    event = 'BufRead',
    opts = {
      ---Add a space b/w comment and the line
      padding = true,
      ---Whether the cursor should stay at its position
      sticky = true,
      ---Lines to be ignored while (un)comment
      ignore = nil,
      ---LHS of toggle mappings in NORMAL mode
      toggler = {
          ---Line-comment toggle keymap
          line = '<C-_>',
          ---Block-comment toggle keymap
          block = 'gbc',
      },
      ---LHS of operator-pending mappings in NORMAL and VISUAL mode
      opleader = {
          ---Line-comment keymap
          line = '<C-_>',
          ---Block-comment keymap
          block = 'gb',
      },
      ---LHS of extra mappings
      extra = {
          ---Add comment on the line above
          above = 'gcO',
          ---Add comment on the line below
          below = 'gco',
          ---Add comment at the end of line
          eol = 'gcA',
      },
      ---Enable keybindings
      ---NOTE: If given `false` then the plugin won't create any mappings
      mappings = {
          ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
          basic = true,
          ---Extra mapping; `gco`, `gcO`, `gcA`
          extra = true,
      },
      ---Function to call before (un)comment
      pre_hook = nil,
      ---Function to call after (un)comment
      post_hook = nil,
    }
  },

  --===================================treesitter=================================
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = 'all',
    },
  },
}
