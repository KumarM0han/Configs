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

set background=light
let g:gruvbox_contrast_light = 'light'
let g:everforest_background = 'soft'

"\ 'colorscheme' : 'everforest'
"\ 'colorscheme': 'gruvbox_alt',
let g:lightline = {
\ 'colorscheme' : 'gruvbox',
\ 'active' : {
\ 'left' : [
\           ['mode', 'paste'], 
\           ['readonly', 'filename', 'modified'],
\           ],
\ 'right' : [
\               ['lineinfo'],
\               ['percent'],
\               ['fileformat', 'filetype'],
\           ],
\   },
\}

let g:gruvbox_italic = 1
let g:everforest_better_performance = 1
let g:everforest_enable_italic = 1
"let g:everforest_transparent_background = 2
let g:everforest_ui_contrast = 'high'
colorscheme gruvbox

"let g:airline_theme = 'everforest'

"
" To update lightline while nvim is running, use following commands:
" call lightline#init()
" call lightline#colorscheme()
" call lightline#update()
