vim.opt.guicursor = ""
vim.opt.wildmenu = true
vim.opt.tags = "./tags;,tags;"

vim.opt.mouse = 'nvi'
vim.opt.nu = false
vim.opt.rnu = true
vim.o.background = "dark"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.complete = { ".", "w", "b", "u", "U", "" }
vim.opt.smartindent = true
vim.opt.wrap = false

local function UndoFileLocation(Path)
	dir = Path or "~/.vim_undotree"

	if not vim.loop.fs_stat(dir) then
		os.execute("mkdir -p " .. dir)
	end
end
vim.opt.undodir = UndoFileLocation("~/.nvim_undodir")
vim.opt.undofile = true
vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.cursorline = true

vim.opt.scrolloff = 2
-- for gutter
vim.opt.signcolumn = "no"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"

vim.g.mapleader = " "

vim.opt.diffopt = {}
vim.opt.diffopt:append({"vertical"})
vim.opt.diffopt:append({"filler"})
vim.opt.diffopt:append({"closeoff"})
vim.opt.diffopt:append({"indent-heuristic"})

vim.linebreak = true

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.showmode = false

vim.g.zig_fmt_autosave = false
vim.g.rustfmt_autosave = 0

vim.g.gruvbox_transparent_bg = false;
vim.g.gruvbox_contrast_dark = 'hard';
vim.g.gruvbox_contrast_light = 'soft';
vim.g.everforest_enable_italic = true;

if vim.o.background == 'dark' then
    vim.g.everforest_background = 'hard'
    vim.cmd [[colorscheme gruber-darker]]
else
    vim.g.everforest_background = 'soft'
    vim.cmd [[colorscheme everforest]]
end

vim.opt.termguicolors = true
vim.opt.laststatus = 2
vim.opt.shortmess:append("S")
