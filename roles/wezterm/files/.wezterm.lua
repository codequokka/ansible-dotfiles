local wezterm = require 'wezterm'
local act = wezterm.action

return {
    default_prog = { 'powershell.exe' },
    color_scheme = "tokyonight",
    -- color_scheme = 'NightOwl (Gogh)',
    window_background_opacity = 0.85,
    font = wezterm.font('MesloLGS NF', { weight = 'Regular', italic = false }),

    keys = {
        {
            key = ']',
            mods = 'CTRL',
            action = act.PasteFrom('PrimarySelection'),
        },
    },

    mouse_bindings = {
        {
            event = { Down = { streak = 1, button = 'Right' } },
            mods = 'NONE',
            action = act.PasteFrom('PrimarySelection'),
        },
        {
            event = { Up = { streak = 1, button = "Left" } },
            mods = "CTRL",
            action = wezterm.action.OpenLinkAtMouseCursor,
        },
    },

    quick_select_patterns = {
        -- '\\S+',
    },
}
