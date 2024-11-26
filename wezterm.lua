local wezterm = require("wezterm")
local mux = wezterm.mux

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.font = wezterm.font({
    family = "JetBrainsMono Nerd Font",
    weight = 600,
})

config.enable_tab_bar = false
config.font_size = 14.0
config.text_background_opacity = 1.0
config.audible_bell = "Disabled"
config.color_scheme = 'GruvboxDarkHard'
		
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}


return config
