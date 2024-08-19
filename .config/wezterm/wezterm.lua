-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.colors = {
	-- Primary colors
	foreground = "#B2C1CC",
	background = "#1B2228",

	-- Normal colors
	ansi = {
		"#0D0D0D", -- black
		"#F07580", -- red
		"#80F075", -- green
		"#F0E575", -- yellow
		"#75BDF0", -- blue
		"#A875F0", -- magenta
		"#75F0E6", -- cyan
		"#F2F2F2", -- white
	},

	-- Bright colors
	brights = {
		"#0D0D0D", -- black
		"#F07580", -- red
		"#80F075", -- green
		"#F0E575", -- yellow
		"#75BDF0", -- blue
		"#A875F0", -- magenta
		"#75F0E6", -- cyan
		"#F2F2F2", -- white
	},

	-- Cursor colors
	cursor_bg = "#FF007C",
	cursor_fg = "#0D0D0D",
	cursor_border = "#FF007C",

	-- Selection colors
	selection_fg = "#0D0D0D",
	selection_bg = "#FF007C",

	-- Indexed colors
	indexed = {
		[93] = "#A875F0",
		[198] = "#FF007C",
	},
}

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 16

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.75
config.macos_window_background_blur = 30

-- and finally, return the configuration to wezterm
return config
