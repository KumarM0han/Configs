syntax on 
filetype plugin indent on 
set nocp 
set nowrap
set mouse=
set autowrite
set hidden
set autochdir
set hlsearch
set incsearch
set ignorecase
set colorcolumn=100
set showcmd 
set number
set relativenumber
set cursorline
set wildmenu
set lazyredraw
set showmatch
set termguicolors
set ruler
set cmdheight=1
set scrolloff=2
set noshowmode
set backspace=2 " Backspace over newlines

set tabstop=4
set shiftwidth=4
set expandtab
set path+=**
set autoindent 
highlight Comment ctermfg=green

let mapleader=" "
set timeoutlen=3000

set backupdir=/nobackup/umacho64/.nvim/backup//
set directory=/nobackup/umacho64/.nvim/swap//
set undodir=/nobackup/umacho64/.nvim/undo//
set undofile

set complete+=.
set complete+=w
set complete+=b
set complete+=u
set complete-=t
set complete-=i
"imap <c-x><c-k> <plug>(fzf-complete-word)
"imap <c-x><c-l> <plug>(fzf-complete-line)

" Wrapping options
set formatoptions=tc " wrap text and comments using textwidth
set formatoptions+=r " continue comments when pressing ENTER in I mode
set formatoptions+=q " enable formatting of comments with gq
set formatoptions+=n " detect lists for formatting
set formatoptions+=b " auto-wrap in insert mode, and do not wrap old long lines

" Search results centered please
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz


set tags=./tags;,tags;

"function! UpdateTags()
"  execute ":!/usr/bin/ctags -R --languages=C++ --c++-kinds=+p --fields=+iaS --extra=+q ./"
"  echohl StatusLine | echo "C/C++ tag updated" | echohl None
"endfunction
"nnoremap <F4> :call UpdateTags()

"set foldmethod=syntax
"se foldlevel=0
"set foldnestmax=1


set diffopt+=iwhite " No whitespace in vimdiff
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic
au TextYankPost * silent! lua vim.highlight.on_yank() " Highlight yank

" Jump to last edit position on opening file
if has("autocmd")
  " https://stackoverflow.com/questions/31449496/vim-ignore-specifc-file-in-autocommand
  au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
