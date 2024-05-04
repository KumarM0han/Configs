vim.api.nvim_create_autocmd({"BufEnter"}, {
    pattern = {"*.lib"},
    command = "set syntax=off"
})

vim.api.nvim_create_autocmd({"BufLeave"}, {
    pattern = {"*.lib"},
    command = "set syntax=on"
})

function ToggleMouse()
    if (vim.opt.mouse == "a") then
        vim.opt.mouse = ""
    else
        vim.opt.mouse = "a"
    end
end

function ToggleNumber()
    if (vim.opt.number == true) then
        vim.opt.relativenumber = false
        vim.opt.number = false
    else
        vim.opt.relativenumber = true
        vim.opt.number = true
    end
end

-- add function for switching header/source
