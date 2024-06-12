require("lazy").setup({
  "nvim-tree/nvim-web-devicons",
  "nvim-treesitter/nvim-treesitter",
  "nvim-tree/nvim-tree.lua",
  'Mofiqul/vscode.nvim',
  'nvim-lualine/lualine.nvim',
  "nvim-lua/plenary.nvim",   
  'BurntSushi/ripgrep', -- Telescope grep
  'sharkdp/fd', -- Finder
  {'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim', { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },}},
  {  "folke/which-key.nvim", event = "VeryLazy",  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {}},
--
    'hrsh7th/nvim-cmp' 
  , 'hrsh7th/cmp-nvim-lsp'
    , 'hrsh7th/cmp-nvim-lua'
    , 'hrsh7th/cmp-nvim-lsp-signature-help'
    , 'hrsh7th/cmp-vsnip'                             
    , 'hrsh7th/cmp-path'                              
    , 'hrsh7th/cmp-buffer'                            
    , 'hrsh7th/vim-vsnip',   
{
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
},
 'neovim/nvim-lspconfig',
 'williamboman/mason.nvim',
 'williamboman/mason-lspconfig.nvim',

})
