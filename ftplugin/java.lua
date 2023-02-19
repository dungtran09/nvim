local config = {
	cmd = { "/home/vihlih-qt/.local/bin/jdtls" },
	root_dir = vim.fs.dirname(vim.fs.find({ ".gradlew", ".git", "mvnw" }, { upward = true })[1]),
}
require("jdtls").start_or_attach(config)
