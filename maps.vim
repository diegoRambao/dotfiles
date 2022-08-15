" Description: Keymaps

let mapleader=" "


nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>source %<CR>

nnoremap <Leader>e :e $MYVIMRC<CR>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>wn :noa w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wv :vsp<CR>
nnoremap <Leader>wh :sp<CR>

map <Leader>nt :NERDTreeFind<CR>
map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR>
map <Leader>b :Buffers<CR>
noremap <leader>tv :botright vnew <Bar> :terminal<cr>
noremap <leader>th :botright new <Bar> :terminal<cr>

:imap ii <Esc>

" Tabs navigation
nnoremap <Leader>j :wincmd j <CR>
nnoremap <Leader>h :wincmd h <CR>
nnoremap <Leader>k :wincmd k <CR>
nnoremap <Leader>l :wincmd l <CR>


vmap <leader>fp  <Plug>(coc-format-selected)
nmap <leader>fp  <Plug>(coc-format-selected)

nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

vnoremap > >gv
vnoremap < <gv
