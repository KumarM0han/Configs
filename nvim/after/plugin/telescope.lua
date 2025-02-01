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
      layout_strategy = 'horizontal',
      layout_config = { width = 100, preview_width = 0 },
  },
}

require('telescope').load_extension('fzf')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>gg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
--vim.keymap.set('n', '<leader>th', builtin.help_tags, { desc = 'Telescope help tags' })
