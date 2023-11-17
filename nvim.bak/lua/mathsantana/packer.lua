vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')

  use({
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { {'nvim-lua/plenary.nvim'} }
  })

  use({
    'nvimtools/none-ls.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  })

  use({ 'rose-pine/neovim', as = 'rose-pine' })

  use({
   'nvim-treesitter/nvim-treesitter',
   run = function()
     local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
     ts_update()
   end,
    })

  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('tpope/vim-commentary')
  use({"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end})

  use({
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  })

end)

