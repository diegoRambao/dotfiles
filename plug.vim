if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()


if has("nvim")

  Plug 'nvim-lualine/lualine.nvim'
  " Tree
  Plug 'scrooloose/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

  "Temas
  "Plug 'joshdick/onedark.vim'
  Plug 'sainnhe/sonokai'
  Plug 'olimorris/onedarkpro.nvim'

  "Coc
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

  Plug 'norcalli/nvim-colorizer.lua'
  "LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'tpope/vim-surround'

  "Icons
  Plug 'ryanoasis/vim-devicons'
  
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'

  Plug 'yggdroot/indentline'
  Plug 'scrooloose/nerdcommenter'

  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  " Flutter
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'thosakwe/vim-flutter'

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

  " Smart replace, abbreviations, convert case
  Plug 'tpope/vim-abolish'


  " Colores en mensajes diagnosticosio
  Plug 'folke/lsp-colors.nvim'

  "Scrolling smoth
  Plug 'karb94/neoscroll.nvim'

endif

"Git

Plug 'tpope/vim-fugitive'
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

" Diff view git
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'

call plug#end()

