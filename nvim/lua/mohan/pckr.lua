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
    { "blazkowolf/gruber-darker.nvim" };
    { 'sainnhe/everforest' };
    { 'nvim-lualine/lualine.nvim' };
}
