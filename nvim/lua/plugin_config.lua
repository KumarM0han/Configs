vim.g.rooter_patterns = { "pa" }
vim.g.rooter_change_directory_for_non_project_files = 'current'
-- when using fzf.vim
--vim.g.fzf_vim = { preview_window = "hidden" }

--[[
function list_cmd()
    local fpath = vim.fn.fnamemodify(vim.fn.expand "%", ":h:.:S")
    return "fd --type file --follow"
end
--]]

-- Disable function highlighting (affects both C and C++ files)
vim.g.cpp_function_highlight = 1

-- Enable highlighting of C++11 attributes
vim.g.cpp_attributes_highlight = 1

-- Highlight struct/class member variables (affects both C and C++ files)
vim.g.cpp_member_highlight = 1

-- Put all standard C and C++ keywords under Vim's highlight group 'Statement'
-- (affects both C and C++ files)
vim.g.cpp_simple_highlight = 1
