
"let g:fzf_preview_window = ['right:hidden', 'ctrl-/']
"map <leader>ff :call LookFileInCode()<CR>
"function! LookFileInCode()
"    let curr = expand("%:p")
"    " number 8 can be changed based on at what index "code" comes in list
"    let pth = "/". join(split(curr, "/")[0:8], '/')
"   
"    command! -bang ProjectFiles call fzf#vim#files(pth, <bang>0)
"    :ProjectFiles
"endfunction
"
"nmap <leader>ft :Tags<CR>
"nmap <leader>fw :Windows<CR>
"nmap <leader>fb :Buffers<CR>

noremap <leader>r :Rg!<CR>
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'fd -e cpp -e h -e xml | xargs rg -i --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

function! s:list_cmd()
  let base = fnamemodify(expand('%'), ':h:.:S')
  return base == '.' ? 'fd --type file --follow' : printf('fd --type file --follow | proximity-sort %s', shellescape(expand('%')))
endfunction

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, {'source': s:list_cmd(),
  \                               'options': '--tiebreak=index'}, <bang>0)
map <C-p> :Files<CR>


if executable('rust-analyzer')
  au User lsp_setup call lsp#register_server({
        \   'name': 'Rust Language Server',
        \   'cmd': {server_info->['rust-analyzer']},
        \   'whitelist': ['rust'],
        \   'initialization_options': {
        \     'cargo': {
        \       'buildScripts': {
        \         'enable': v:true,
        \       },
        \     },
        \     'procMacro': {
        \       'enable': v:true,
        \     },
        \   },
        \     'checkOnSave' : v:true,
        \     'check' : {
        \     'enable' : v:true,
        \     'command' : 'clippy',
        \     'features' : 'all',
        \     },
        \ })
endif

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype' ] ],
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename'
      \ },
      \ 'colorscheme' : 'jellybeans',
      \ }
function! LightlineFilename()
  return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction

let g:ayu_italic_comment = 1
let g:ayu_sign_contrast = 1
let g:ayu_extended_palette = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_detect_modified=1
let g:airline_section_x = ""
let g:airline_section_y = ""
let g:airline_section_error = ""
let g:airline_section_warning = ""

let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline_symbols.colnr = ' C:'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_symbols.readonly = ''
let g:airline_symbols.dirty='⚡'

let g:rooter_patterns = ['=code']
"let g:rooter_change_directory_for_non_project_files = ''
let g:rooter_change_directory_for_non_project_files = 'current'
