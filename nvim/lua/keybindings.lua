vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'n', 'Nzz')
vim.keymap.set('n', '*', '*zz')
vim.keymap.set('n', '#', '#zz')
vim.keymap.set('n', 'g*', 'g*zz')

vim.keymap.set('n', ';', ':')

vim.keymap.set('n', '<Leader>w', ':set wrap!<CR>')
vim.keymap.set('n', '<Leader>i', ':echo expand("%:p")<CR>')

vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '<Leader><Leader>', '<C-^>')
vim.keymap.set('n', '<C-Right>', ':tabn<CR>')
vim.keymap.set('n', '<C-Left>', ':tabp<CR>')
vim.keymap.set('n', '<Leader><Down>', '<C-w><Down><CR>')
vim.keymap.set('n', '<Leader><Up>', '<C-w><Up><CR>')
vim.keymap.set('n', '<Leader><Right>', '<C-w><Right><CR>')
vim.keymap.set('n', '<Leader><Left>', '<C-w><Left><CR>')
vim.keymap.set('n', '<C-]>', '<C-w>g]')
vim.keymap.set('n', '<C-t>', '<C-w>T<CR>')
vim.keymap.set('n', '<Leader>h', '<C-w>K<CR>')
vim.keymap.set('n', '<Leader>v', '<C-w>H<CR>')

vim.keymap.set('n', '.', '')

vim.keymap.set('n', '<BS>', ':noh<CR>')

vim.keymap.set('n', '<Leader>b', "<cmd>lua require('fzf-lua').buffers()<CR>", {silent = true})
vim.keymap.set('n', '<Leader>t', "<cmd>lua require('fzf-lua').tabs()<CR>", {silent = true})
vim.keymap.set('n', '<Leader>r', "<cmd>lua require('fzf-lua').registers()<CR>", {silent = true})
vim.keymap.set('n', '<Leader>m', "<cmd>lua require('fzf-lua').marks()<CR>", {silent = true})
vim.keymap.set('n', '<Leader>j', "<cmd>lua require('fzf-lua').jumps()<CR>", {silent = true})
vim.keymap.set('n', '<C-p>', "<cmd>lua require('fzf-lua').files()<CR>", {silent = true})

vim.keymap.set('n', '<Leader>0', function() 
    if vim.o.number == true then
        vim.o.number = false
        vim.o.relativenumber = false
    elseif vim.o.number == false then
        vim.o.number = true
        vim.o.relativenumber = true
    else
        print("Undef")
    end
end
)

vim.keymap.set('n', '<F12>', function() 
    local filepath = vim.api.nvim_buf_get_name(0)
    local find_dot = string.find(filepath, "%.")
    if find_dot then
        local filename = string.sub(filepath, 1, find_dot)
        local ext = string.sub(filepath, find_dot+1)
        if ext == "h" then
            ext = "cpp"
        elseif ext == "cpp" then
            ext = "h"
        elseif ext == "c" then
            ext = "h"
        else
            print ("not c/cpp/h file")
            return
        end
        vim.cmd({cmd = 'edit', args = {string.format("%s%s", filename, ext)}, bang = true})
    end
end)
