require("configs.plugins-setup")

require("configs.core.settings")
require("configs.core.mappings")
require("configs.core.colorscheme")
require("configs.core.alpha-nvim")
require("configs.core.wilder-menu")

require("configs.plugins.statusline")
require("configs.plugins.bufferline")
-- require("configs.plugins.treesitter-nvim")
require("configs.plugins.comment")
require("configs.plugins.togglerterm")
require("configs.plugins.nvim-cmp")
require("configs.plugins.gitsings")
require("configs.plugins.neo-tree")

require("configs.plugins.lsp.mason")
require("configs.plugins.lsp.lspconfig")
require("configs.plugins.lsp.null-ls")
require("configs.plugins.lsp.lspsaga")

require("colorizer").setup()
require("nvim-autopairs").setup()
