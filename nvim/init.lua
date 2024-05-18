-- This is lua configuration
-- Incompatible with vimscript

require('options')
require('commands')

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
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        'akinsho/bufferline.nvim', version = "*"
    },
    {
        "https://github.com/morhetz/gruvbox", 
        priority = 1000
    },
    {
        "https://github.com/sainnhe/everforest", 
        priority = 1000
    },
    {
        "https://github.com/airblade/vim-rooter",
        priority = 1000
    },
    {
        "https://github.com/junegunn/fzf",
    },
    --[[
    {
        "https://github.com/junegunn/fzf.vim",
    },
    --]]
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
    {
        "https://github.com/bfrg/vim-cpp-modern",
    },
    {
        "https://github.com/jiangmiao/auto-pairs",
    },
})

vim.o.background = "dark" 
vim.cmd("colorscheme everforest")

--require("status")
--require("tab")
require('plugin_config')
require('keybindings')

-- lualine
require('lualine').setup{
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {
      'filename',
      function()
        return vim.fn['nvim_treesitter#statusline'](180)
      end},
    --lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_x = { {'searchcount', maxcount = 999}, 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
  },
  inactive_sections = {},
  --[[
  tabline = {
      lualine_a = {
          {
              'tabs',
              tab_max_length = 40,
              mode = 2,
              use_mode_colors = true, -- false?
              show_modified_status = true,
          }
      },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
  },--]]
  options = {
      globalstatus = true,
      icons_enabled = false,
      section_separators = { left = '', right = '' },
      --section_separators = { left = '', right = '' },
      --component_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' },
  }
}

-- bufferline
require('bufferline').setup{
    options =  {
        mode = 'tabs',
        numbers = 'ordinal',
    },
}
