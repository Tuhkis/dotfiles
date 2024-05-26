local config = howl.config
local theme = howl.ui.theme
local env = howl.sys.env

config.save_config_on_exit = true
config.font = 'Iosevka Nerd Font'
config.font_size = 15
config.cursor_blink_interval = 0
config.popup_menu_accept_key = 'tab'

theme.register('mytheme', howl.io.File(env.HOME .. '/.howl/mytheme.lua'))
