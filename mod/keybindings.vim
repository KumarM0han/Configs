""" function call binds
nmap <leader>m :call ToggleMouse() <CR>
nmap <F12> :silent! call FindAllTabs() <CR>
nnoremap <leader>0 :call ToggleNumber() <CR>

nnoremap <leader>1 :set relativenumber!<CR>

nmap . :
nmap <C-]> <C-w>g]
nmap <C-t> <C-w>T<CR>
nmap <leader>w :set wrap!<CR>
map <leader>i :echo expand("%:p")<CR>

nmap <c-c> "0y
vmap <c-c> "0y
inoremap <c-v> <c-r>0
cnoremap <c-v> <c-r>0
nnoremap j gj
nnoremap k gk

nnoremap B ^
nnoremap E $

nmap <BS> :noh<CR>
nmap <leader>s :source ~/.config/nvim/init.vim<CR>

noremap <leader>b :buffers<CR>:buffer 
noremap <leader>p :bp<CR>
noremap <leader>n :bn<CR>

nmap s <S-*><CR>
"nmap e $

" you can also use <leader> <num> to switch to tab
nmap <C-Right> :tabn<CR>
nmap <C-Left> :tabp<CR>

"move page
"nmap <leader><Down> <C-f><CR>
"nmap <leader><Up> <C-b><CR>

"split window nav
"nmap <A-Down> <C-w><Down><CR>
"nmap <A-Right> <C-w><Right><CR>
"nmap <A-Left> <C-w><Left><CR>
"nmap <A-Up> <C-w><Up><CR>
""" Turn on below keybinds for split window nav when using tmux/vscode terminal
nnoremap <leader><Down> <C-w><Down><CR>
nnoremap <leader><Up> <C-w><Up><CR>
nnoremap <leader><Right> <C-w><Right><CR>
nnoremap <leader><Left> <C-w><Left><CR>


"move split windows
nmap <leader>h <C-w>K<CR>
nmap <leader>v <C-w>H<CR>

" No arrow keys --- force yourself to use the home row
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> :tabp<CR> 
"nnoremap <right> :tabn<CR> 
"
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
"nnoremap <left> :tabp<CR> 
"nnoremap <right> :tabn<CR> 

""" Custom Function """
"open correcponding .h file

"move split windows
nmap <leader>h <C-w>K<CR>
nmap <leader>v <C-w>H<CR>

" Go to tab by number
" gt -> move to next tab
" gT -> move to prev tab
" <num>gt -> exec gt <num> times
" <num>gT -> exec gT <num> times
"noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
"noremap <leader>0 :tablast<cr>

" Go to last active tab

au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
