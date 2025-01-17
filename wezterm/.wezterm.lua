-- Pull in the wezterm API
local wezterm = require("wezterm")

-- Create a configuration builder
local config = wezterm.config_builder()

-- Automatically reload the config when changes are detected
config.automatically_reload_config = true

-- Font settings
config.font = wezterm.font("Maple Mono NF") -- Set font to Maple Mono NF
config.font_size = 12 -- Set font size to 12

-- Window settings
config.enable_tab_bar = false -- Disable the tab bar
config.window_decorations = "NONE" -- Remove window decorations
config.window_close_confirmation = "NeverPrompt" -- Disable close confirmation
config.window_background_opacity = 0.95 -- Set window background opacity to 90%
config.enable_scroll_bar = false -- Disable the scroll bar
config.adjust_window_size_when_changing_font_size = false -- Prevent resizing when changing font size
config.exit_behavior = "Close" -- Close immediately on exit
config.initial_rows = 38 -- Set initial window rows
config.initial_cols = 128 -- Set initial window columns
config.window_padding = {
	left = 4, -- Padding on the left side
	right = 0, -- Padding on the right side
	top = 4, -- Padding on the top
	bottom = 0, -- Padding on the bottom
}

-- Keybindings
config.keys = {
	{ key = "w", mods = "CTRL", action = wezterm.action.CloseCurrentTab({ confirm = true }) }, -- Close the current tab
	{ key = "|", mods = "CTRL|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) }, -- Split pane horizontally
	{ key = "j", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") }, -- Move to the left pane
	{ key = "l", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") }, -- Move to the right pane
	{ key = "v", mods = "CTRL", action = wezterm.action.PasteFrom("Clipboard") }, -- Paste from clipboard
}

-- Colorscheme settings
config.colors = {
	foreground = "#F3EED9", -- Foreground color
	background = "#272727", -- Background color
	cursor_bg = "#EA8386", -- Cursor background color
	cursor_border = "#EA8386", -- Cursor border color
	cursor_fg = "#011423", -- Cursor foreground color
	selection_bg = "#FDF3F3", -- Selection background color
	selection_fg = "#272727", -- Selection foreground color
	ansi = { -- ANSI colors
		"#8EC9D3",
		"#CDAEEC",
		"#EA8386",
		"#FFE491",
		"#BCD398",
		"#CDAEEC",
		"#96DBD3",
		"#FFBB8C",
	},
	brights = { -- Bright colors
		"#CBE6EB",
		"#E8D9F6",
		"#F1ACAE",
		"#FFF3CC",
		"#E0EBCF",
		"#E8D9F6",
		"#CEEEEB",
		"#FFDFCA",
	},
}

-- Mouse bindings
config.mouse_bindings = {
	{
		event = { Drag = { streak = 1, button = "Left" } },
		mods = "SUPER",
		action = wezterm.action.StartWindowDrag, -- Drag window with SUPER + left mouse
	},
	{
		event = { Drag = { streak = 1, button = "Left" } },
		mods = "CTRL|SHIFT",
		action = wezterm.action.StartWindowDrag, -- Drag window with CTRL + SHIFT + left mouse
	},
}

-- Return the configuration
return config
