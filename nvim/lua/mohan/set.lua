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
vim.opt.undodir = UndoFileLocation("/nobackup/umacho64/.nvim/undodir/")
vim.opt.undofile = true
vim.opt.backup = false

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.cursorline = true

vim.opt.scrolloff = 2
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"

vim.g.mapleader = " "

vim.opt.diffopt = {}
vim.opt.diffopt:append({"iwhite"})
vim.opt.diffopt:append({"filler"})
vim.opt.diffopt:append({"algorithm:patience"})
vim.opt.diffopt:append({"indent-heuristic"})

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.showmode = false
vim.g.zig_fmt_autosave = false
