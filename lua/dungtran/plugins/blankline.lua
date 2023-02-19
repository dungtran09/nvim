local status, blankline = pcall(require, "indent_blankline")
if not status then
	return
end

blankline.setup ({
    -- for example, context is off by default, use this to turn it on
    show_current_context = false,
    show_current_context_start = false,
})

-- blankline
local g = vim.g
g.indentLine_enabled = 1
g.indent_blankline_char = "▏"
