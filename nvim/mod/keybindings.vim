""" function call binds
nmap <leader>m :call ToggleMouse() <CR>
nmap <F12> :silent! call FindAllTabs() <CR>
nnoremap <leader>0 :call ToggleNumber() <CR>

nnoremap <leader>1 :set relativenumber!<CR>

nnoremap ; :
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

map B ^
map E $

nmap <BS> :noh<CR>
nmap <leader>s :source ~/.config/nvim/init.vim<CR>

nmap <leader>; :Buffers<CR>
"noremap <leader>b :buffers<CR>:buffer 
"noremap <leader>p :bp<CR>
"noremap <leader>n :bn<CR>
nnoremap <leader><leader> <c-^>

"nmap s <S-*><CR>
"nmap e $

" you can also use <leader> <num> to switch to tab
"nmap <C-Right> :tabn<CR>
"nmap <C-Left> :tabp<CR>
nmap <C-Right> <nop>
nmap <C-Left> <nop>

"move page
nmap f <C-f><CR>
nmap b <C-b><CR>

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

"nmap <A-S-Right> :tabm +1<CR>
"nmap <A-S-Left>  :tabm -1<CR>

"move split windows
nmap <leader>h <C-w>K<CR>
nmap <leader>v <C-w>H<CR>

" No arrow keys --- force yourself to use the home row
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> :tabp<CR> 
"nnoremap <right> :tabn<CR> 

nnoremap . <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> :tabp<CR> 
nnoremap <right> :tabn<CR> 

vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

"move split windows
nmap <leader>h <C-w>K<CR>
nmap <leader>v <C-w>H<CR>

" Go to tab by number
" gt -> move to next tab
" gT -> move to prev tab
" <num>gt -> exec gt <num> times
" <num>gT -> exec gT <num> times

" Go to last active tab
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
