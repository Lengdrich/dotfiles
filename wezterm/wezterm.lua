-- Wezterm configuration
-- powered by aquawius
-- this is version 4

-- version 1: initial config
-- version 2: wsl support
-- version 3: update theme to purple style
-- version 4: fix bug "git log" with "terminal is not fully functional" 
--            tracert: term set to "" is not a compatible term for git
-- version 5: update theme to dracula official

local wezterm = require("wezterm");
-- local dracula = require('dracula');

local config = {
  -- check_for_updates = true,
  -- color_scheme = "Dracula(Gogh)",
  -- color_scheme = "Fahrenheit",
  -- color_scheme = "Gruvbox Dark",
  -- color_scheme = "Blue Matrix",
  -- color_scheme = "Pandora",
  -- color_scheme = "Grape",
  -- color_scheme = "Firewatch",
  color_scheme = 'Solarized (dark) (terminal.sexy)',
  -- color_scheme = "Duotone Dark",
  -- color_scheme = "Sakura",
  -- color_scheme = "lovelace",

  colors = {
    cursor_bg = '#ffc0cb',
    -- Overrides the text color when the current cell is occupied by the cursor
    cursor_fg = 'black',
  },

  window_padding = {
    left = 5,
    right = 5,
    top = 15,
    bottom = 0,
  },

  enable_scroll_bar = true,
  exit_behavior = "Close",

  inactive_pane_hsb = {
    hue = 1.0,
    saturation = 1.0,
    brightness = 1.0,
  },

  font = wezterm.font_with_fallback({
    -- 'Rec Mono Custom',
    'Monego',
    -- 'Liga MonacoB',
    -- { family = "Liga Lxgw WenKai Mono Latin", weight = 'Bold' },
    { family = 'LXGW WenKai Mono', weight = 'Bold'},
    'FiraCode Nerd Font',
  }),

  font_size = 12.0,

  -- font_rules = {
  --   {
  --     italic = true,
  --     intensity = "Normal",
  --     font = wezterm.font({
  --       family = 'Maple Mono',
  --       style = 'Italic',
  --     }),
  --   },
  -- },

  default_prog = { 'fish' },
  -- default_cwd = "/some/path",
  launch_menu = {

  },

  set_environment_variables = {},

  tab_bar_at_bottom = true,
  use_fancy_tab_bar = true,
}

return config
