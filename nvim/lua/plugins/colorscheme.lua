
return {

--======================================onedark===================================
  { 'navarasu/onedark.nvim',
    event = 'VeryLazy',
    config = function()
      require('onedark').setup({
        style = 'deep',
        colors = {
        },
        highlights = {
          -- StatusLine = { bg = "#1f2335" },
        },
      })
    end
  },

--====================================tokyonight==================================
  {
    "folke/tokyonight.nvim",
    event = 'VeryLazy',
    config = function()
      require("tokyonight").setup({
        style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        styles = {
          -- comments = { italic = false },
          keywords = { italic = false },
        },
      })
    end
  },

--====================================gruvbox=====================================
  {
    "ellisonleao/gruvbox.nvim",
    event = 'VeryLazy',
    config = function()
      require('gruvbox').setup({
        italic = false,
        -- bold = false,
        overrides = {
          String = { fg = "#00a000" },
          -- StatusLine = { fg = "#1f2335" }
        },
      })
    end
  },

--===================================monokai=======================================
  {
    "loctvl842/monokai-pro.nvim",
    event = 'VeryLazy',
    config = function()
      require('monokai-pro').setup({
        filter = "classic",  -- classic | octagon | pro | machine | ristretto | spectrum
        styles = {
          comment = { italic = true },
          keyword = { italic = false }, -- any other keyword
          type = { italic = false }, -- (preferred) int, long, char, etc
          storageclass = { italic = false }, -- static, register, volatile, etc
          structure = { italic = false }, -- struct, union, enum, etc
          parameter = { italic = false }, -- parameter pass in function
          annotation = { italic = false },
          tag_attribute = { italic = false }, -- attribute of tag in reactjs
        },
      })
    end
  },

--===================================LazyVim========================================
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
