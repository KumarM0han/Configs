local ignore_undo_for_ftypes = { "lib" }
local function is_ignore_ftype(ft)
  for _, allowed in ipairs(ignore_undo_for_ftypes) do
    if ft == allowed then
      return true
    end
  end
  return false
end

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle);
vim.g.undotree_WindowLayout = 4

-- Disable undofile for specific patterns
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = {'*.lib'},
    callback = function()
        vim.opt_local.undofile = false
    end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = ignore_undo_for_ftypes,
  callback = function()
      vim.opt.undofile = false
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  callback = function()
    local ft = vim.bo.filetype
    if is_ignore_ftype(ft) then
        vim.opt.undofile = false
    else
        vim.opt.undofile = true
    end
  end,
})
