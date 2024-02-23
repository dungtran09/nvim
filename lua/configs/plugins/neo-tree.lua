local status, neoTree = pcall(require, "neo-tree")
if not status then
	print("Neo-tree is not installed")
	return
end

neoTree.setup({
	filesystem = {
		filtered_items = {
			visible = false,
			hide_dotfiles = true,
			hide_gitignored = true,
			hide_by_name = {
				".github",
				".gitignore",
				"package-lock.json",
			},
			never_show = { ".git" },
			always_show = {
				"node_modules",
			},
		},
	},
})
