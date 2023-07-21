local style = require("core.style")
local common = require("core.common")

style.background = { common.color "#000000"}
style.background2 = { common.color "#000000"}
style.background3 = { common.color "#000000"}
style.text = { common.color "#ffffff"}
style.caret = { common.color "#aaaaaa"}
style.accent = { common.color "#aaaaaa"}
style.dim = { common.color "#aaaaaa"}
style.divider = { common.color "#000000"}
style.selection = { common.color "#101010"}
style.line_number = {common.color "#909090"}
style.line_number2 = {common.color "#ffffff"}
style.line_highlight = {common.color "#080808"}
style.scrollbar = { common.color "#111111"}
style.scrollbar2 = { common.color "#404040"}

style.syntax["normal"] = { common.color "#90d020"}
style.syntax["symbol"] = { common.color "#a0e0ff"}
style.syntax["comment"] = {common.color "#606060"}
style.syntax["keyword"] = {common.color "#a6a5ff"}
style.syntax["keyword2"] = {common.color "#a4a3fa"}
style.syntax["number"] = {common.color "#d666d6"}
style.syntax["literal"] = {common.color "#7FBBB3"}
style.syntax["string"] = {common.color "#ffff89"}
style.syntax["operator"] = {common.color "#d666d6"}
style.syntax["function"] = {common.color "#aaaa50"}

return style

