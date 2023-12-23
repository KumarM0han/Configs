"load options
source ~/.config/nvim/mod/options.vim

"load start up commands and functions
source ~/.config/nvim/mod/autocommands.vim

"load shortcuts
source ~/.config/nvim/mod/keybindings.vim

"load plugins
source ~/.config/nvim/mod/plugins.vim

"config plusings
source ~/.config/nvim/mod/plugin-config.vim
"set laststatus=2
"hi StatusLine ctermfg=Black ctermbg=Black
"hi StatusLine ctermfg=DarkGray ctermbg=Black
"hi TabLineFill ctermfg=Black ctermbg=Black
"hi TabLine ctermfg=Grey ctermbg=Black
"hi TabLineSel ctermfg=White ctermbg=DarkGray
"hi TabLineSel ctermfg=White ctermbg=LightGray

"hi Normal ctermbg=NONE

"let g:ayucolor="light/mirage/dark"
let g:ayucolor="light"
set background=dark
let g:everforest_background = 'hard'
let g:everforest_better_performance = 1
let g:airline_theme = 'everforest'
colorscheme everforest
