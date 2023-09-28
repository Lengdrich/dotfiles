return {

  --====================================fcitx========================================
  -- {
  --   "Lengdrich/fcitx.nvim",
  --   event = "InsertEnter",
  -- },

  --===================================im-select=====================================

  {
    "keaising/im-select.nvim",
    event = "InsertEnter",
    config = function()
      require("im_select").setup({

        -- IM will be set to `default_im_select` in `normal` mode
        -- For Windows/WSL, default: "1033", aka: English US Keyboard
        -- For macOS, default: "com.apple.keylayout.ABC", aka: US
        -- For Linux, default: "keyboard-us" for Fcitx5 or "1" for Fcitx or "xkb:us::eng" for ibus
        -- You can use `im-select` or `fcitx5-remote -n` to get the IM's name you preferred
        default_im_select = "com.apple.keylayout.ABC",

        -- Can be binary's name or binary's full path,
        -- e.g. 'im-select' or '/usr/local/bin/im-select'
        -- For Windows/WSL, default: "im-select.exe"
        -- For macOS, default: "im-select"
        -- For Linux, default: "fcitx5-remote" or "fcitx-remote" or "ibus"
        default_command = "im-select",

        -- Restore the default input method state when the following events are triggered
        set_default_events = { "VimEnter", "FocusGained", "InsertLeave", "CmdlineLeave" },

        -- Restore the previous used input method state when the following events are triggered
        -- if you don't want to restore previous used im in Insert mode,
        -- e.g. deprecated `disable_auto_restore = 1`, just let it empty `set_previous_events = {}`
        set_previous_events = {},

        -- Show notification about how to install executable binary when binary is missing
        keep_quiet_on_no_binary = false,

        -- Async run `default_command` to switch IM or not
        async_switch_im = true,
      })
    end,
  },

  --===============================vim-tmux-navigate=================================
  {
    "alexghergh/nvim-tmux-navigation",

    cmd = {
      "NvimTmuxNavigateLeft",
      "NvimTmuxNavigateDown",
      "NvimTmuxNavigateUp",
      "NvimTmuxNavigateRight",
    },

    config = function()
      require("nvim-tmux-navigation").setup({
        disable_when_zoomed = false, -- defaults to false
      })
    end,
  },

  {
    "nvimdev/guard.nvim",
    -- dev = true,
    dependencies = {
        "nvimdev/guard-collection",
    },
    ft = { "c", "cpp", "rust", "lua", "go", "typescript", "javascript", "javascriptreact" },
    config = function()
      local ft = require("guard.filetype")
      ft("c"):fmt("clang-format")
      -- ft("cpp"):fmt("clang-format"):lint("clang-tidy")
      ft("cpp"):fmt("clang-format")
      ft("lua"):fmt("stylua")
      ft("go"):fmt("lsp"):append("golines")
      ft("rust"):fmt("rustfmt")

      for _, item in ipairs({ "typescript", "javascript", "typescriptreact", "javascriptreact" }) do
        ft(item):fmt("prettier")
      end

      require("guard").setup({
        -- the only option for the setup function
        fmt_on_save = true,
      })

      local exec_filetype = function(group)
        local api = vim.api
        group = type(group) == "string" and { group } or group
        local curbuf = api.nvim_get_current_buf()
        for _, g in ipairs(group) do
          api.nvim_exec_autocmds("FileType", { group = g, pattern = vim.bo[curbuf].filetype })
        end
      end

      exec_filetype("Guard")
    end,
  },

  --===================================trans=========================================
  -- {
  --   "JuanZoran/Trans.nvim",
  --   -- branch = 'expermantal',
  --   keys = {
  --   -- 可以换成其他你想映射的键
  --     { 'mm', mode = { 'n', 'x' }, '<Cmd>Translate<CR>', desc = ' Translate' },
  --     { 'mk', mode = { 'n', 'x' }, '<Cmd>TransPlay<CR>', desc = ' 自动发音' },
  --
  --     -- 目前这个功能的视窗还没有做好，可以在配置里将view.i改成hover
  --     { 'mi', '<Cmd>TranslateInput<CR>', desc = ' Translate From Input' },
  --   },
  --   dependencies = { 'kkharji/sqlite.lua', lazy = true },
  -- },
}
