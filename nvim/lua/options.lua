vim.g.mapleader = " "

vim.opt.syntax = 'enable'
vim.opt.syntax = 'on'
vim.opt.filetype = 'on'
vim.opt.filetype.plugin = 'on'
vim.opt.filetype.indent = 'on'
vim.opt.mouse = ''
vim.opt.autowrite = true
vim.opt.hidden = true
-- vim.opt.autochdir = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.colorcolumn = '100'
vim.opt.showcmd = true
vim.opt.showfulltag = true
vim.o.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wildmenu = true
vim.opt.lazyredraw = true
vim.opt.showmatch = true
vim.opt.termguicolors = true
vim.opt.ruler = true
vim.opt.cmdheight = 1
vim.opt.scrolloff = 1
vim.opt.showmode = false
vim.opt.wrap = false
vim.opt.backspace = '2'
vim.opt.laststatus = 0
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.path = ".,**"
vim.opt.autoindent = true
vim.opt.timeoutlen = 3000

vim.opt.backupdir = "/nobackup/umacho64/.nvim/backup/"
vim.opt.directory = "/nobackup/umacho64/.nvim/swap/"
vim.opt.undodir = "/nobackup/umacho64/.nvim/undo/"
vim.opt.undofile = true

vim.opt.complete = {}
vim.opt.complete:append({"."})
vim.opt.complete:append({"w"})
vim.opt.complete:append({"b"})
vim.opt.complete:append({"u"})

vim.opt.completeopt = {}
vim.opt.completeopt:append({"menu"})
vim.opt.completeopt:append({"preview"})
vim.opt.completeopt:append({"noinsert"})
vim.opt.completeopt:append({"noselect"})
--[[
vim.opt.complete:remove({"t"})
vim.opt.complete:remove({"]"})
vim.opt.complete:remove({"i"})
--]]
vim.opt.formatoptions = {}
vim.opt.formatoptions:append({"tc"})
vim.opt.formatoptions:append({"r"})
vim.opt.formatoptions:append({"q"})
vim.opt.formatoptions:append({"n"})
vim.opt.formatoptions:append({"b"})

vim.opt.tags = "./tags;,tags;"

vim.opt.diffopt = {}
vim.opt.diffopt:append({"iwhite"})
vim.opt.diffopt:append({"filler"})
vim.opt.diffopt:append({"algorithm:patience"})
vim.opt.diffopt:append({"indent-heuristic"})

-- Gruvbox options
vim.g.gruvbox_contrast_light = 'soft'
vim.g.gruvbox_contrast_dark = 'hard'
vim.g.gruvbox_italic = true
-- Everforest options
vim.g.everforest_background = 'hard'
vim.g.everforest_better_performance = 1
vim.g.everforest_enable_italic = 1
vim.g.everforest_ui_contrast = 'high'

