" Status line
if !exists('*fugitive#statusline')
  set statusline=%F\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}[L%l/%L,C%03v]
  set statusline+=%=
  set statusline+=%{fugitive#statusline()}
endif

cnoreabbrev g Git
cnoreabbrev gopen GBrowse

nnoremap <Leader>G :G<cr>
nnoremap <leader>ga :Git fetch --all -p<CR>
nnoremap <leader>gl :Git pull<CR>
nnoremap <leader>gpp :Git push<CR>
nnoremap <leader>gpo :Git push -u origin HEAD<CR>
