return {

--====================================fcitx========================================
  {
    'Lengdrich/fcitx.nvim',
    event = 'InsertEnter',
  },

--===============================vim-tmux-navigate=================================
  {
    'alexghergh/nvim-tmux-navigation',
    config = function()
      local nvim_tmux_nav = require('nvim-tmux-navigation')
      require('nvim-tmux-navigation').setup({
        disable_when_zoomed = true, -- defaults to false
      })
      vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
      vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
      vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
      vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
      vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
      -- vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
    end
  },

--===================================trans=========================================
  {
    "JuanZoran/Trans.nvim",
    keys = {
    -- 可以换成其他你想映射的键
      { 'mm', mode = { 'n', 'x' }, '<Cmd>Translate<CR>', desc = ' Translate' },
      { 'mk', mode = { 'n', 'x' }, '<Cmd>TransPlay<CR>', desc = ' 自动发音' },

      -- 目前这个功能的视窗还没有做好，可以在配置里将view.i改成hover
      { 'mi', '<Cmd>TranslateInput<CR>', desc = ' Translate From Input' },
    },
    dependencies = { 'kkharji/sqlite.lua' },
  },

}
