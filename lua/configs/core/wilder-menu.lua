local status, wilder = pcall(require,"wilder")
if not status then
  return
end

wilder.setup({modes = {':', '/', '?'}})

wilder.set_option('pipeline', {
  wilder.branch(
    wilder.python_file_finder_pipeline({
      file_command = {'find', '.', '-type', 'f', '-printf', '%P\n'},
      dir_command = {'find', '.', '-type', 'd', '-printf', '%P\n'},
      filters = {'fuzzy_filter', 'difflib_sorter'},
    }),
    wilder.cmdline_pipeline(),
    wilder.python_search_pipeline()
  ),
})

wilder.set_option('renderer', wilder.popupmenu_renderer({
  -- highlighter applies highlighting to the candidates
  highlighter = wilder.basic_highlighter(),
  left = {' ', wilder.popupmenu_devicons()},
  right = {' ', wilder.popupmenu_scrollbar()},
}))
