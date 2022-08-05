set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=UTF-8
set showmatch
set termguicolors
set sw=2
set laststatus=2
set noshowmode
set nowrap
set background=dark
set noshowmode
set hlsearch
set incsearch
set ignorecase
set smartcase
set path+=**
set wildignore+=*/node_modules/*e
set tabstop=4
set shiftwidth=4
set expandtab
set formatoptions+=r
syntax enable
set termguicolors
set winblend=0
set wildoptions=pum
set pumblend=5
set background=dark

runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif

runtime ./maps.vim
"}}}

colorscheme gruvbox 

let g:dart_format_on_save = 1
