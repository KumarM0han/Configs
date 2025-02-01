-- Reserve a space in the gutter
-- This will avoid an annoying layout shift in the screen
vim.opt.signcolumn = 'yes'

-- Add cmp_nvim_lsp capabilities settings to lspconfig
-- This should be executed before you configure any language server
local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

-- This is where you enable features that only work
-- if there is a language server active in the file
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.lsp.inlay_hint.enable(true)
    vim.api.nvim_set_keymap(
    'n', '<Leader>d', ':lua vim.diagnostic.open_float()<CR>', 
    { noremap = true, silent = true }
    )
    local telescope = require('telescope.builtin')

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gD', telescope.lsp_definitions)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gtd', telescope.lsp_type_definitions)
    vim.keymap.set('n', 'gI', telescope.lsp_incoming_calls)
    vim.keymap.set('n', 'gO', telescope.lsp_outgoing_calls)
    vim.keymap.set('n', 'gr', telescope.lsp_references)
    vim.keymap.set('n', 'gR', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

    vim.keymap.set('n', '<F12>', vim.cmd.ClangdSwitchSourceHeader)
  end,
})

require('lspconfig').clangd.setup({})

local cmp = require('cmp')
cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'}
  },
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
      ['<CR>'] = cmp.mapping.confirm({select = true}),
  }),
})
