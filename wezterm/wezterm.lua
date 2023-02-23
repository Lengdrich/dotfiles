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
    -- color_scheme = "Fahrenheit",
    -- color_scheme = "Gruvbox Dark",
    -- color_scheme = "Blue Matrix",
    -- color_scheme = "Pandora",
    -- color_scheme = "Grape",
    color_scheme = "Firewatch",
    -- color_scheme = "Duotone Dark",
    -- color_scheme = "Sakura",
    -- color_scheme = "lovelace",

    colors = {
        cursor_bg = '#ffc0cb',
        -- Overrides the text color when the current cell is occupied by the cursor
        cursor_fg = 'black',
    },

    enable_scroll_bar = true,
    exit_behavior = "Close",

    -- tab_bar_at_bottom = true,
    inactive_pane_hsb = {
        hue = 1.0,
        saturation = 1.0,
        brightness = 1.0,
    },

    -- font = wezterm.font('Lxgw Wenkai Mono Latin', {weight = 'Bold', italic = false}),
    font = wezterm.font_with_fallback({
        { family = "Liga Lxgw WenKai Mono Latin", weight = 'Bold' },
        'LXGW WenKai Mono',
        'FiraCode Nerd Font',
    }),
    font_size = 14.0,
    font_rules = {
      {
        italic = true,
        intensity = "Normal",
        font = wezterm.font({
          family = 'Maple Mono',
          style = 'Italic',
        }),
      },
    },

    -- default_cursor_style = 'BlinkingBlock',

    default_prog = { 'fish' },
    -- default_cwd = "/some/path",
    launch_menu = {

    },

    set_environment_variables = {},

    -- set default theme to dracula official conf
    -- colors = dracula,
    tab_bar_at_bottom = true,
    use_fancy_tab_bar = true
}

return config
