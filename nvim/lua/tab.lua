-- Colorschemes
-- Gruvbox 
-- setup palette dictionary
pallete_gruvbox = {}
pallete_gruvbox.dark0_hard  = '#1d2021'
pallete_gruvbox.dark0       = '#282828'
pallete_gruvbox.dark0_soft  = '#32302f'
pallete_gruvbox.dark1       = '#3c3836'
pallete_gruvbox.dark2       = '#504945'
pallete_gruvbox.dark3       = '#665c54'
pallete_gruvbox.dark4       = '#7c6f64'
pallete_gruvbox.dark4_256   = '#7c6f64'

pallete_gruvbox.gray_245    = '#928374'
pallete_gruvbox.gray_244    = '#928374'

pallete_gruvbox.light0_hard = '#f9f5d7'
pallete_gruvbox.light0      = '#fbf1c7'
pallete_gruvbox.light0_soft = '#f2e5bc'
pallete_gruvbox.light1      = '#ebdbb2'
pallete_gruvbox.light2      = '#d5c4a1'
pallete_gruvbox.light3      = '#bdae93'
pallete_gruvbox.light4      = '#a89984'
pallete_gruvbox.light4_256  = '#a89984'

pallete_gruvbox.bright_red     = '#fb4934'
pallete_gruvbox.bright_green   = '#b8bb26'
pallete_gruvbox.bright_yellow  = '#fabd2f'
pallete_gruvbox.bright_blue    = '#83a598'
pallete_gruvbox.bright_purple  = '#d3869b'
pallete_gruvbox.bright_aqua    = '#8ec07c'
pallete_gruvbox.bright_orange  = '#fe8019'

pallete_gruvbox.neutral_red    = '#cc241d'
pallete_gruvbox.neutral_green  = '#98971a'
pallete_gruvbox.neutral_yellow = '#d79921'
pallete_gruvbox.neutral_blue   = '#458588'
pallete_gruvbox.neutral_purple = '#b16286'
pallete_gruvbox.neutral_aqua   = '#689d6a'
pallete_gruvbox.neutral_orange = '#d65d0e'

pallete_gruvbox.faded_red      = '#9d0006'
pallete_gruvbox.faded_green    = '#79740e'
pallete_gruvbox.faded_yellow   = '#b57614'
pallete_gruvbox.faded_blue     = '#076678'
pallete_gruvbox.faded_purple   = '#8f3f71'
pallete_gruvbox.faded_aqua     = '#427b58'
pallete_gruvbox.faded_orange   = '#af3a03'

if vim.o.background == 'dark' then
    mbg0 = pallete_gruvbox.dark0
    if vim.g.gruvbox_contrast_dark == 'soft' then
        mbg0 = pallete_gruvbox.dark0_soft
    else
        mgb0 = pallete_gruvbox.dark0_hard
    end
    mbg1  = pallete_gruvbox.dark1
    mbg2  = pallete_gruvbox.dark2
    mbg3  = pallete_gruvbox.dark3
    mbg4  = pallete_gruvbox.dark4

    mgray = pallete_gruvbox.gray_245

    mfg0 = pallete_gruvbox.light0
    mfg1 = pallete_gruvbox.light1
    mfg2 = pallete_gruvbox.light2
    mfg3 = pallete_gruvbox.light3
    mfg4 = pallete_gruvbox.light4

    mfg4_256 = pallete_gruvbox.light4_256

    mred    = pallete_gruvbox.bright_red
    mgreen  = pallete_gruvbox.bright_green
    myellow = pallete_gruvbox.bright_yellow
    mblue   = pallete_gruvbox.bright_blue
    mpurple = pallete_gruvbox.bright_purple
    maqua   = pallete_gruvbox.bright_aqua
    morange = pallete_gruvbox.bright_orange
elseif vim.o.background == 'light' then
    mbg0 = pallete_gruvbox.light0
    if vim.g.gruvbox_contrast_light == 'soft' then
        mbg0 = pallete_gruvbox.light0_soft
    else
        mgb0 = pallete_gruvbox.light0_hard
    end

  mbg1  = pallete_gruvbox.light1
  mbg2  = pallete_gruvbox.light2
  mbg3  = pallete_gruvbox.light3
  mbg4  = pallete_gruvbox.light4

  mgray = pallete_gruvbox.gray_244

  mfg0 = pallete_gruvbox.dark0
  mfg1 = pallete_gruvbox.dark1
  mfg2 = pallete_gruvbox.dark2
  mfg3 = pallete_gruvbox.dark3
  mfg4 = pallete_gruvbox.dark4

  mfg4_256 = pallete_gruvbox.dark4_256

  mred    = pallete_gruvbox.faded_red
  mgreen  = pallete_gruvbox.faded_green
  myellow = pallete_gruvbox.faded_yellow
  mblue   = pallete_gruvbox.faded_blue
  mpurple = pallete_gruvbox.faded_purple
  maqua   = pallete_gruvbox.faded_aqua
  morange = pallete_gruvbox.faded_orange
end

--vim.api.nvim_set_hl(0, 'TabLineSel', { bg = mgray, fg = mbg1 } )
--vim.api.nvim_set_hl(0, 'TabLineFill', { bg = mbg1, fg = mbg4 } )
