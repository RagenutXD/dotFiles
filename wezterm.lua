local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- font setings
config.line_height = 1
config.font = wezterm.font("Hermit", {style="Normal", weight="Regular"})

config.font_size = 14

-- colors
config.colors = {
	cursor_bg = "white",
	cursor_border = "white",
}

-- appearance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 20,
	right = 20,
	top = 20,
	bottom =20,
}
config.window_background_opacity = 0.7

-- misc
config.max_fps = 120
config.prefer_egl = true


return config
