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

let g:everforest_background = 'soft'
let g:everforest_better_performance = 1
let g:lightline = {
	\ 'colorscheme' : 'everforest',
	\ }

colorscheme everforest
