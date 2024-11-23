-- Options
vim.g.mapleader = " "
vim.opt.syntax = 'enable'
vim.opt.syntax = 'on'
vim.opt.mouse = ''
vim.opt.hidden = true
--vim.opt.autochdir = true
vim.opt.colorcolumn = '100'
vim.opt.laststatus = 0
vim.o.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.ruler = true
vim.opt.wrap = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.backupdir = "~/.cache/my_nvim_swaps/"
vim.opt.directory = "~/.cache/my_nvim_swaps/"
vim.opt.undodir = "~/.cache/my_nvim_swaps/"
vim.opt.undofile = true

-- Keybinds
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
vim.keymap.set('n', '<Leader>h', '<C-w>K<CR>')
vim.keymap.set('n', '<Leader>v', '<C-w>H<CR>')
vim.keymap.set('n', '<BS>', ':noh<CR>')
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

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "ibhagwan/fzf-lua",
        config = function()
            require("fzf-lua").setup({
                'skim',
                preview_opts = 'hidden',
                fzf_buffers_jump = 1,
            })
        end
    },
})

-- fzf-lua extension configuration
--vim.keymap.set('n', '<Leader>t', "<cmd>lua require('fzf-lua').tabs()<CR>", {silent = true})
--vim.keymap.set('n', '<Leader>r', "<cmd>lua require('fzf-lua').registers()<CR>", {silent = true})
--vim.keymap.set('n', '<Leader>m', "<cmd>lua require('fzf-lua').marks()<CR>", {silent = true})
--vim.keymap.set('n', '<Leader>j', "<cmd>lua require('fzf-lua').jumps()<CR>", {silent = true})
--
--vim.keymap.set('n', '<Leader>b', "<cmd>lua require('fzf-lua').buffers()<CR>", {silent = true})
--vim.keymap.set('n', '<C-p>', "<cmd>lua require('fzf-lua').files()<CR>", {silent = true})
--
