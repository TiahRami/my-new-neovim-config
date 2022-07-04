require "plugins"
require "options"
require "lsp"
require "keybindings-config"
require "nvim-tree-config"
require "lualine-config"
--require "bufferline-config"
require "treesitter-config"
require "autopairs-config"
require "whichkey-config"
require "telescope-config"
require "comment-config"
require "gitsigns-config"
require "toggleterm-config"
require "color-config"

-- Lua
-- vim.g.tokyonight_style = "night"
--vim.cmd[[colorscheme gruvbox]]
-- vim.cmd("colorscheme substrata")
-- vim.o.background = "dark" -- or "light" for light mode

-- Lua
vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha
vim.cmd[[colorscheme catppuccin]]

--Make the terminal transparent
vim.cmd("hi! Normal ctermbg=NONE guibg=NONE ")
vim.cmd("hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE")
