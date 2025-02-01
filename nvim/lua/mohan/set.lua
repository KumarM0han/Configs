vim.opt.guicursor = ""

vim.opt.wildmenu = true
vim.opt.tags = "./tags;,tags;"

vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

local function UndoFileLocation(Path)
	dir = Path or "~/.vim_undotree"

	if not vim.loop.fs_stat(dir) then
		os.execute("mkdir -p " .. dir)
	end
end
vim.opt.undodir = UndoFileLocation()
vim.opt.undofile = true
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

