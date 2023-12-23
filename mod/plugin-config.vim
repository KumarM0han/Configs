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

let g:fzf_preview_window = ['right:hidden', 'ctrl-/']
map <leader>ff :call LookFileInCode()<CR>
function! LookFileInCode()
    let curr = expand("%:p")
    " number 8 can be changed based on at what index "code" comes in list
    let pth = "/". join(split(curr, "/")[0:8], '/')
   
    command! -bang ProjectFiles call fzf#vim#files(pth, <bang>0)
    :ProjectFiles
endfunction

nmap <leader>ft :Tags<CR>
nmap <leader>fw :Windows<CR>
nmap <leader>fb :Buffers<CR>

if executable('rust-analyzer')
  au User lsp_setup call lsp#register_server({
        \   'name': 'Rust Language Server',
        \   'cmd': {server_info->['rust-analyzer']},
        \   'whitelist': ['rust'],
        \ })
endif
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
        \ })
endif
