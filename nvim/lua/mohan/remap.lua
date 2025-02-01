vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- greates remaps
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set('n', ';', ':')
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '<Leader><Leader>', '<C-^>')
vim.keymap.set('n', '<C-Right>', vim.cmd.tabn)
vim.keymap.set('n', '<C-Left>', vim.cmd.tabp)
-- vim.keymap.set('n', '<BS>', vim.cmd.noh)

