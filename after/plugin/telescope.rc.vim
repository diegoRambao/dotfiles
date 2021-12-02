if !exists('g:loaded_telescope') | finish | endif

nnoremap  <Leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <Leader>ffg <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap  <Leader>fs <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap  <Leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap  <Leader>gc <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap  <Leader>gs <cmd>lua require('telescope.builtin').git_status()<cr>
nnoremap  <Leader>gb <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap  <Leader> ;b <cmd>lua require('telescope.builtin').file_browser()<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup()
EOF


