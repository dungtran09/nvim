local status, bufferline = pcall(require, "bufferline")
if not status then
	print("Bufferline is not installed")
	return
end

bufferline.setup({
	options = {
		show_close_icon = false,
		offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 0 } },
		left_trunc_marker = "",
		right_trunc_marker = "",
		max_name_length = 14,
		max_prefix_length = 13,
		tab_size = 20,
		show_tab_indicators = true,
		enforce_regular_tabs = false,
		view = "multiwindow",
		show_buffer_close_icons = true,
		separator_style = "thin",
	},
	highlights = {
		fill = { bg = "#282828" },
	},
})
