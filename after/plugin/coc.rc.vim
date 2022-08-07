" Para habilitar prettier debe colocar true la propiedad prettier.enable

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
noremap <Leader>gs :CocSearch
xmap <Leader>a  <Plug>(coc-codeaction-selected)
nmap <Leader>a  <Plug>(coc-codeaction-selected)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

let g:coc_user_config = {
        \ "angular.trace.server": v:true,
        \ "suggest.enablePreview": v:true,
        \ "prettier.disableSuccessMessage": v:true,
        \ "prettier.enable" : v:true,
        \ "suggest.maxPreviewWidth": 100,
        \ "diagnostic.checkCurrentLine": v:true,
        \ "diagnostic.maxWindowHeight": 20,
        \ "diagnostic.errorSign": "✖",
        \ "diagnostic.warningSign": "⚠",
        \ "diagnostic.infoSign": "●",
        \ "diagnostic.hintSign": "○",
        \ "coc.preferences.formatOnSaveFiletypes": ["typescript", "javascript", "javascript.jsx", "typescript.tsx", "typescriptreact", "javascriptreact", "elm", "html", "less"],
        \ 'eslint.filetypes': ["javascript", "javascriptreact", "typescript", "typescriptreact"],
        \ 'languageserver': {
        \ "elmLS": {
        \     "command": "elm-language-server",
        \     "filetypes": ["elm"],
        \     "rootPatterns": ["elm.json"],
        \     "trace.server": "verbose",
        \     "initializationOptions": {
        \       "elmPath": "elm",
        \       "elmFormatPath": "elm-format",
        \       "elmTestPath": "elm-test",
        \       "elmAnalyseTrigger": "change"
        \     }
        \   }
        \ }
        \ }


" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')
