local status, neoTree = pcall(require, "neo-tree")
if not status then
	print("Neo-tree is not installed")
	return
end

neoTree.setup({
  opts = {
    filesystem = {
      filtered_items = {
        --visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".github",
          ".gitignore",
          "package-lock.json",
        },
        never_show = { ".git" },
      },
    },
  },
})