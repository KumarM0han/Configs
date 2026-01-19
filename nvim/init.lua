vim.o.shell = "/bin/bash"

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set('n', 'n', 'nzz', { silent = true })
vim.keymap.set('n', 'N', 'Nzz', { silent = true })
vim.keymap.set('n', '*', '*zz', { silent = true })
vim.keymap.set('n', '#', '#zz', { silent = true })
vim.keymap.set('n', 'g*', 'g*zz', { silent = true })

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

vim.keymap.set('n', '<Leader><Down>', '<C-w><Down><CR>')
vim.keymap.set('n', '<Leader><Up>', '<C-w><Up><CR>')
vim.keymap.set('n', '<Leader><Right>', '<C-w><Right><CR>')
vim.keymap.set('n', '<Leader><Left>', '<C-w><Left><CR>')

vim.keymap.set('n', '<Leader>i', ':echo expand("%:p")<CR>')
vim.keymap.set('n', '<Leader>w', ':set wrap!<CR>')
vim.keymap.set('n', '<BS>', ':noh<CR>', {silent = true})


vim.opt.guicursor = ""
vim.opt.wildmenu = true
vim.opt.tags = "./tags;,tags;"

vim.opt.mouse = 'nvi'
vim.opt.nu = false
vim.opt.rnu = false

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
vim.opt.undodir = UndoFileLocation()
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
vim.opt.showmode = true

vim.g.zig_fmt_autosave = false
vim.g.rustfmt_autosave = 0

vim.g.gruvbox_transparent_bg = false;
vim.g.gruvbox_contrast_dark = 'hard';
vim.g.gruvbox_contrast_light = 'soft';
vim.g.everforest_enable_italic = true;

vim.opt.termguicolors = true
vim.opt.laststatus = 2

-- if using lualine
--vim.opt.shortmess:append("S")


local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end
bootstrap_pckr()

require('pckr').add{
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S . -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' 
    };
    {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    };
    { 'mbbill/undotree' };
    { 'morhetz/gruvbox' },
    { 'projekt0n/github-nvim-theme' };
    { 'stevearc/conform.nvim' };
    { "blazkowolf/gruber-darker.nvim" };
    { 'L3MON4D3/LuaSnip' };
    { 'hrsh7th/nvim-cmp' };
    { 'hrsh7th/cmp-nvim-lsp' };
    { 'hrsh7th/cmp-buffer' };
    { 'hrsh7th/cmp-path' };
    { 'neovim/nvim-lspconfig' };
    { "catppuccin/nvim" };
    { "EdenEast/nightfox.nvim" };
    { "whizikxd/naysayer-colors.nvim" };
}

require("conform").setup({
  formatters_by_ft = {
    python = { "isort", "black" },
    rust = { "rustfmt", lsp_format = "fallback" },
    cpp = { "clang-format" },
  },
})

vim.keymap.set("v", "gf", function()
  require("conform").format({
    async = true,
    lsp_fallback = false,
  })
end, { desc = "Format current file or selection with conform" })

local builtin = require('telescope.builtin')
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  },
  defaults = {
      layout_strategy = 'bottom_pane',
  }
}

require('telescope').load_extension('fzf')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle);
vim.g.undotree_WindowLayout = 4

--[[
--vim.opt.signcolumn = 'yes'
function AutoFormatSelection() 
	vim.lsp.buf.format({
		async = false,
		range = {
			["start"] = vim.api.nvim_buf_get_mark(0, "<"),
			["end"] = vim.api.nvim_buf_get_mark(0, ">"),
		}
	})
end

-- This is where you enable features that only work
-- if there is a language server active in the file
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}
    
    vim.lsp.inlay_hint.enable(false)
    vim.opt.smartindent = false
    vim.opt.smarttab = false
    vim.diagnostic.config({
        --virtual_text = true,
        virtual_lines = true,
    })

    -- disable semantic coloring
    --for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
    --    vim.api.nvim_set_hl(0, group, {})
    --end

    vim.api.nvim_set_keymap(
    'n', '<Leader>d', ':lua vim.diagnostic.open_float()<CR>', 
    { noremap = true, silent = true }
    )
    local telescope = require('telescope.builtin')
    
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', telescope.lsp_definitions)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gtd', telescope.lsp_type_definitions)
    vim.keymap.set('n', 'go', '<cmd> lua vim.diagnostic.open_float()<cr>');
    vim.keymap.set('n', 'gr', telescope.lsp_references)
    vim.keymap.set('n', 'gR', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set('v', 'gf', '<cmd>lua AutoFormatSelection()<cr>', opts)
    vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<cr><Esc>', opts)

    vim.keymap.set('n', '<F12>', "<cmd>vim.cmd.ClangdSwitchSourceHeader<cr>")
  end,
})

vim.lsp.enable('clangd')

local cmp = require('cmp')
cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'}
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  preselect = 'item',
  completion = {
    completeopt = 'menu,noinsert,preview'
  },
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<Tab>'] = cmp.mapping(function(fallback)
      local luasnip = require('luasnip')
      local col = vim.fn.col('.') - 1

      if cmp.visible() then
        cmp.select_next_item({behavior = 'select'})
      elseif luasnip.expand_or_locally_jumpable() then
        luasnip.expand_or_jump()
      elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        fallback()
      else
        cmp.complete()
      end
    end, {'i', 's'}),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      local luasnip = require('luasnip')

      if cmp.visible() then
        cmp.select_prev_item({behavior = 'select'})
      elseif luasnip.locally_jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {'i', 's'}),
  }),
})
--]]

vim.opt.termguicolors = true

vim.o.background = "dark"
if vim.o.background == 'dark' then
    vim.g.everforest_background = 'hard'
    vim.cmd [[colorscheme naysayer]]
else
    vim.g.everforest_background = 'soft'
    vim.cmd [[colorscheme dayfox]]
end

