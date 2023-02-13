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
        cursor_bg = '#FF69B4',
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
        -- "Lxgw WenKai Mono Latin", 
        -- "LXGW WenKai Mono",
        -- {family = "Liga MonacoB", weight = 'Regular', italic = false},
        {family = "Liga Lxgw WenKai Mono Latin", weight = 'Bold', italic = false},
        -- {family = "Lxgw WenKai Mono Latin", weight = 'Bold', italic = false},
        {family = "LXGW WenKai Mono", weight = 'Bold', italic = false},
        {family = "FiraCode Nerd Font", weight = 'Bold', italic = false },
    }),
    font_size = 14.0,

    default_prog = { 'fish' },
    -- default_cwd = "/some/path",
    launch_menu = {

    },

    -- leader = { key = "b", mods = "CTRL" },
    set_environment_variables = {},

    -- Tab bar appearance
    -- colors = {
    --     tab_bar = {

    --         -- The color of the strip that goes along the top of the window
    --         background = "#282828",

    --         -- The active tab is the one that has focus in the window
    --         active_tab = {
    --             -- The color of the background area for the tab
    --             bg_color = "#18131e",
    --             -- The color of the text for the tab
    --             fg_color = "#ff65fd",

    --             intensity = "Normal",
    --             underline = "None",
    --             italic = false,
    --             strikethrough = false,
    --         },

    --         -- Inactive tabs are the tabs that do not have focus
    --         inactive_tab = {
    --             bg_color = "#282828",
    --             fg_color = "#d19afc",
    --         },
    --         inactive_tab_hover = {
    --             bg_color = "#202020",
    --             fg_color = "#ff65fd",
    --         },

    --         new_tab = {
    --             bg_color = "#282828",
    --             fg_color = "#d19afc",
    --         },
    --         new_tab_hover = {
    --             bg_color = "#18131e",
    --             fg_color = "#ff65fd",
    --         },
    --     },
    -- },

    -- set default theme to dracula official conf
    -- colors = dracula,
    tab_bar_at_bottom = true,
    use_fancy_tab_bar = true
}

return config
