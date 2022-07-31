--only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --random dependencies
  use 'nvim-lua/plenary.nvim'

  --color schemes
  use 'folke/tokyonight.nvim'

  --telescope
  use { 
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  --toggle term to open up new terminal windows in the nvim window
  use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
    require("toggleterm").setup()
  end}

  --lsp ui window thingy
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      local saga = require("lspsaga")

      saga.init_lsp_saga({
        -- your configuration
      })
    end,
  })

  --lsp
  use 'neovim/nvim-lspconfig'

  --airline
  use 'vim-airline/vim-airline' 

  --git-gutter
  use 'airblade/vim-gitgutter'

  --fugitive
  use 'tpope/vim-fugitive'

  --surroudn
  use 'tpope/vim-surround'
end)
