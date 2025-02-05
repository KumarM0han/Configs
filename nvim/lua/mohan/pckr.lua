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
		run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' 
	};
	{
		'nvim-telescope/telescope.nvim', brach = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	};
 	{ 'mbbill/undotree' };
    { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' };
    { 'L3MON4D3/LuaSnip' };
    { 'neovim/nvim-lspconfig' };
    { 'hrsh7th/cmp-nvim-lsp' };
    { 'hrsh7th/nvim-cmp' };
    { 'hrsh7th/cmp-buffer' };
    { 'rose-pine/neovim' };
    { 'morhetz/gruvbox' },
    { 'nvim-lualine/lualine.nvim' };
}
