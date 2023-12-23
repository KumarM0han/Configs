autocmd! bufreadpost *.lib set syntax=off 

""" Need this for proper functioning of C-Arrow and A-Arrow as vim keybindings in tmux
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

function! ToggleMouse()
    if (&mouse == "a")
        set mouse=
    else
        set mouse=a
    endif
endfunction

function! ToggleNumber()
    if(&number == 1)
        set norelativenumber
        set nonumber
    else
        set number
        "set nonumber
        set relativenumber
    endif
endfunction

function! FindAllTabs()
	:redir @a
	:silent tabs
	:redir END
	:let found=0
	:if expand('%:p') =~ '\.cpp' && found==0
		:let temp = expand('%:p:t:r') . ".h
		:for i in split(@a,'\n')
			:for ii in split(i,' \+')
				:let match = matchstr(ii, temp)
 				:if len(match) > 1 && found==0
					:tabfirst
					:for tt in range(1,a-1)	
    						:tabn
					endfor
					:let found=1
  			 	endif
				:let a = ii
			endfor
		endfor
		:if found==0
			:let found=1
			:tabe %:p:r.h
		endif
	 elseif found==0 &&  expand('%:p') =~ '\.h'
		:let temp = expand('%:p:t:r') . ".cpp
		:for i in split(@a,'\n')
			:for ii in split(i,' \+')
				:let match = matchstr(ii, temp)
 				:if len(match) > 1 && found==0
					:tabfirst
					:for tt in range(1,a-1)	
    						:tabn
					endfor
					:let found=1
  			 	endif
				:let a = ii
			endfor
		endfor
		:if found==0
			:let found = 1
			:tabe %:p:r.cpp
		endif
     	endif
endfunction
