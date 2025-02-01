vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle);

vim.g.undotree_WindowLayout = 4


-- Disable undofile for specific patterns
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = {'*.lib'},
    callback = function()
        vim.opt_local.undofile = false
    end
})

