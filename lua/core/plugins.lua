require("lazy").setup({
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "nvim-treesitter/nvim-treesitter",
  'Mofiqul/vscode.nvim',
 'nvim-lualine/lualine.nvim',
"nvim-lua/plenary.nvim",
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim', { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },}
    },
  {
  "folke/which-key.nvim", event = "VeryLazy",  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {}
},

 --  "L3MON4D3/LuaSnip",
 --       'hrsh7th/nvim-cmp', 
 --
 --    -- LSP completion source:
 --     'hrsh7th/cmp-nvim-lsp',
 --
 --    -- ful completion sources:
 --     'hrsh7th/cmp-nvim-lua',
 --     'hrsh7th/cmp-nvim-lsp-signature-help',
 --     'hrsh7th/cmp-vsnip',                             
 --     'hrsh7th/cmp-path',                              
 --     'hrsh7th/cmp-buffer',                            
 --     'hrsh7th/vim-vsnip',
 'neovim/nvim-lspconfig',
 'williamboman/mason.nvim',
 -- -- 'williamboman/mason-lspconfig.nvim',
  -- "WhoIsSethDaniel/mason-tool-installer.nvim",
})
