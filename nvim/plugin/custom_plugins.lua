--[[
-- Need this for proper functioning of C-Arrow and A-Arrow as vim keybindings in tmux
-- Might not need in nvim when using lua
if &term =~ '^screen'
│ │ -- tmux will send xterm-style keys when its xterm-keys option is on
│ │ execute "set <xUp>=\e[1;*A"
│ │ execute "set <xDown>=\e[1;*B"
│ │ execute "set <xRight>=\e[1;*C"
│ │ execute "set <xLeft>=\e[1;*D"
endif
--]]
