-- Pull in wezterm API
local wezterm = require 'wezterm'

-- holds the config
local config = wezterm.config_builder()

-- apply config below
config.color_scheme = 'Catppuccin Macchiato'
config.font = wezterm.font 'Fira Code'

return config
