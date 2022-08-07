if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()


if has("nvim")

  Plug 'nvim-lualine/lualine.nvim'
  " Tree
  Plug 'scrooloose/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


  " Syntax highlight for .ts
  Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }

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

  " Commenting text
  Plug 'tpope/vim-commentary'

  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'morhetz/gruvbox'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'APZelos/blamer.nvim'
  Plug 'tpope/vim-repeat'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'windwp/nvim-autopairs'
endif

"Git

Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

call plug#end()

