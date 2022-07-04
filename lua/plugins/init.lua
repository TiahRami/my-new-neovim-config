local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

--Packer autosource files
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync 
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end
--Packer Floating window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return require('packer').startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/popup.nvim"

  -----other plugins
  use {
  'lewis6991/gitsigns.nvim',
      tag = 'release' -- To use the latest release
  }
  use "moll/vim-bbye"

  --treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = 'TSUpdate' }
  use { 'windwp/nvim-ts-autotag' }
  use { 'p00f/nvim-ts-rainbow' }
  use {
	  'windwp/nvim-autopairs',
    config = function() require("nvim-autopairs").setup {} end
  }
  --comment
  use "numToStr/Comment.nvim"
  use "JoosepAlviste/nvim-ts-context-commentstring"

  --cmp--lsp
  use "neovim/nvim-lspconfig"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/vim-vsnip"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lua"
  use "williamboman/nvim-lsp-installer"
  

  --null-ls
  use { "jose-elias-alvarez/null-ls.nvim"}
  
  --colorscheme
  use "lunarvim/darkplus.nvim"
  use 'kvrohit/substrata.nvim'
  use "folke/tokyonight.nvim"
  use "gruvbox-community/gruvbox"
  use({
	"catppuccin/nvim",
	as = "catppuccin"
  })
  --lspkind for icon on autocompletion
  use "onsails/lspkind.nvim"

  --lualine
  use { 'nvim-lualine/lualine.nvim'}
  use "kyazdani42/nvim-web-devicons"
  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  --Nvimtree
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- whichkey
  use {'folke/which-key.nvim'}

  --telescope
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --toggleterm
  use "akinsho/toggleterm.nvim"
end)
