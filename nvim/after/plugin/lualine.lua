require('lualine').setup{
  sections = {
    lualine_a = {'mode'},
    -- lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {
	    'filename',
    },
    lualine_x = { {'searchcount', maxcount = 200}, 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {},
  options = {
      globalstatus = true,
      icons_enabled = true,
      section_separators = { left = '', right = '' },
      --section_separators = { left = '', right = '' },
      --component_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' },
  }
}
