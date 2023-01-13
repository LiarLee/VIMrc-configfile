return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'rstacruz/vim-closer'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'eandrju/cellular-automaton.nvim' 

end)
