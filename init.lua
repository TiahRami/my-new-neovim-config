require("plugins")
require("options")
require("lsp")
require("keybindings-config")
require("nvim-tree-config")
require("lualine-config")
require("bufferline-config")
require("treesitter-config")
require("autopairs-config")
require("whichkey-config")
require("telescope-config")

vim.cmd("colorscheme iceberg")

--Make the terminal transparent
vim.cmd("hi! Normal ctermbg=NONE guibg=NONE ")
vim.cmd("hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE")


