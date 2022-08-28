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
set linespace=5
set relativenumber

"let g:rainbow_active = 1
let g:yats_host_keyword = 1
let NERDTreeShowHidden=1

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

"let g:tokyonight_style = "night"
let g:gruvbox_material_foreground="original"
let g:gruvbox_material_background="hard"

colorscheme tokyonight


let g:gruvbox_contrast_dark='hard'
let g:dart_format_on_save = 1

let NERDTreeQuitOnOpen=1
let g:NERDTreeWinSize=60

let g:rainbow_active = 1

lua require('neoscroll').setup()
autocmd FileType scss setl iskeyword+=@-@

autocmd User visual_multi_mappings  imap <buffer><expr> <CR> pumvisible() ? "\<C-Y>" : "\<Plug>(VM-I-Return)" 

" Enable Flutter menu
autocmd FileType dart :call FlutterMenu()
" Some of these key choices were arbitrary;
" it's just an example.
nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>
