return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'vim-airline/vim-airline'
  use 'morhetz/gruvbox'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)



