if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'hoob3rt/lualine.nvim'
  Plug 'sheerun/vim-polyglot'

  " Tree
  Plug 'scrooloose/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

  "Snippets
  Plug 'honza/vim-snippets'
  Plug 'natebosch/dartlang-snippets'
  Plug 'SirVer/ultisnips'

  " Term
  Plug 'voldikss/vim-floaterm'

  "Icons
  Plug 'ryanoasis/vim-devicons'
  
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'yggdroot/indentline'
  Plug 'scrooloose/nerdcommenter'

  " Flutter
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'thosakwe/vim-flutter'
  Plug 'natebosch/vim-lsc'
  Plug 'natebosch/vim-lsc-dart'

  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'neovim/nvim-lspconfig'
  Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim51' }
  Plug 'folke/lsp-colors.nvim'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'APZelos/blamer.nvim'
  Plug 'tpope/vim-repeat'
  Plug 'windwp/nvim-autopairs'
endif

"Git

Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

call plug#end()

