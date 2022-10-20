local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use('wbthomason/packer.nvim')
  use('folke/tokyonight.nvim')

  -- Statusline
  use('nvim-lualine/lualine.nvim')

  -- Common Utilities
  use('nvim-lua/plenary.nvim')

  -- vscode-like pictograms
  use('onsails/lspkind-nvim')

  -- Completion
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/nvim-cmp')

  -- LSPs Syntax Checks
  use('neovim/nvim-lspconfig')

  -- Formatting
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim') -- Prettier plugin for Neovim's built-in LSP client
  use('editorconfig/editorconfig-vim')

  -- Mason LSP manager
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')

  -- LSP UIs
  use('glepnir/lspsaga.nvim')

  -- Snippets
  use('L3MON4D3/LuaSnip')

  use('nvim-treesitter/nvim-treesitter', {
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  })

  -- File Icons
  use('kyazdani42/nvim-web-devicons')

  use('nvim-telescope/telescope.nvim')
  use('nvim-telescope/telescope-file-browser.nvim')

  -- Auto tags
  use('windwp/nvim-ts-autotag')
  use('windwp/nvim-autopairs')

  -- Git Management
  use('lewis6991/gitsigns.nvim')
  use('sindrets/diffview.nvim')

  -- Indent Lines
  use('lukas-reineke/indent-blankline.nvim')

  -- Comments
  use('terrortylor/nvim-comment')

  -- Rust
  use('rust-lang/rust.vim')

  -- Float term
  use('voldikss/vim-floaterm')
end)

