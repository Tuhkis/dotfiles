local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

------------------------------ Themes ----------------------------------------

-- core.reload_module("colors.summer")
-- core.reload_module("colors.winter")
-- core.reload_module("colors.everforest")
-- core.reload_module("colors.tuhkis")
core.reload_module("colors.github")
-- core.reload_module("colors.github_dark")
-- core.reload_module("colors.vscode-dark")
-- core.reload_module("colors.monodark")

--------------------------- Key bindings -------------------------------------

-- key binding:
-- keymap.add { ["ctrl+escape"] = "core:quit" }

keymap.add({ ["ctrl+pageup"] = "root:switch-to-previous-tab" }, true)
keymap.add({ ["ctrl+pagedown"] = "root:switch-to-next-tab" }, true)

------------------------------- Fonts ----------------------------------------

-- customize fonts:
style.font = renderer.font.load(USERDIR .. "/fonts/Cantarell-VF.otf", 16 * SCALE, {antialiasing="subpixel", hinting="slight", smoothing=false})

-- style.code_font = renderer.font.load(USERDIR .. "/fonts/FiraCodeNerdFontMono-Regular.ttf", 15 * SCALE,
-- 	{antialiasing="subpixel", smoothing=false})


-- style.code_font = renderer.font.load(USERDIR .. "/fonts/victor-mono-semibold.ttf", 15 * SCALE,
-- 	{antialiasing="subpixel", hinting="slight", smoothing=false})
	
style.code_font = renderer.font.load(USERDIR .. "/fonts/randy-gg.ttf", 16.5 * SCALE,
	{antialiasing="subpixel", hinting="full", smoothing=false})
	
--
-- DATADIR is the location of the installed Lite XL Lua code, default color
-- schemes and fonts.
-- USERDIR is the location of the Lite XL configuration directory.
--
-- font names used by lite:
-- style.font          : user interface
-- style.big_font      : big text in welcome screen
-- style.icon_font     : icons
-- style.icon_big_font : toolbar icons
-- style.code_font     : code
--
-- the function to load the font accept a 3rd optional argument like:
--
-- {antialiasing="grayscale", hinting="full", bold=true, italic=true, underline=true, smoothing=true, strikethrough=true}
--
-- possible values are:
-- antialiasing: grayscale, subpixel
-- hinting: none, slight, full
-- bold: true, false
-- italic: true, false
-- underline: true, false
-- smoothing: true, false
-- strikethrough: true, false

-- Plugins

-- config.plugins.treeview = false

-- Setup LSP stuff.
local lspconfig = require("plugins.lsp.config")

local function add_lsp(l, s)
	local checkP = process.start { "sh", "-c", "whereis " .. l }
	while true do
		local rdbuf = checkP:read_stdout()
		if not (rdbuf == l .. ":") then
			s()
		end
		if not rdbuf then break end
	end
end

add_lsp("clangd", lspconfig.clangd.setup)
add_lsp("pyright-langserver", lspconfig.pyright.setup)

config.plugins.lsp.stop_unneeded_servers = true
config.plugins.lsp.mouse_hover = true
config.plugins.lsp.mouse_hover_delay = 300
config.plugins.lsp.more_yielding = true

-- Misc
config.ignore_files = "a^"

--[[ local ev = require("core.emptyview")
function ev.draw()
	-- This is scuffed death :skull:
	renderer.draw_rect(0, 0, 90000, 90000, style.background)
	renderer.draw_text(style.big_font, "Hi yall!", 0, 0, style.text)
end ]]--

