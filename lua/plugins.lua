require("lazy").setup({
	"nvim-tree/nvim-web-devicons",
	"nvim-treesitter/nvim-treesitter",
	"nvim-tree/nvim-tree.lua",
	-- 'Mofiqul/vscode.nvim',
'p00f/alabaster.nvim',
	'nvim-lualine/lualine.nvim',
	"nvim-lua/plenary.nvim",
	'BurntSushi/ripgrep', -- Telescope grep
	'sharkdp/fd',  -- Finder
	{
		'nvim-telescope/telescope.nvim',
		event = 'VimEnter',
		branch = '0.1.x',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{ -- If encountering errors, see telescope-fzf-native README for installation instructions
				'nvim-telescope/telescope-fzf-native.nvim',

				-- `build` is used to run some command when the plugin is installed/updated.
				-- This is only run then, not every time Neovim starts up.
				build = 'make',

				-- `cond` is a condition used to determine whether this plugin should be
				-- installed and loaded.
				cond = function()
					return vim.fn.executable 'make' == 1
				end,
			},
			{ 'nvim-telescope/telescope-ui-select.nvim' },

			-- Useful for getting pretty icons, but requires a Nerd Font.
			{ 'nvim-tree/nvim-web-devicons',            enabled = vim.g.have_nerd_font },
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {}
	},
	--
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-nvim-lua',
	'hrsh7th/cmp-nvim-lsp-signature-help',
	'hrsh7th/cmp-vsnip',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/vim-vsnip',
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp"
	},
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',

	{ -- LSP Configuration & Plugins
		'neovim/nvim-lspconfig',
		dependencies = {
			-- Automatically install LSPs and related tools to stdpath for Neovim
			{ 'williamboman/mason.nvim', config = true }, -- NOTE: Must be loaded before dependants
			'williamboman/mason-lspconfig.nvim',
			'WhoIsSethDaniel/mason-tool-installer.nvim',

			-- Useful status updates for LSP.
			-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
			{ 'j-hui/fidget.nvim',       opts = {} },

			-- `neodev` configures Lua LSP for your Neovim config, runtime and plugins
			-- used for completion, annotations and signatures of Neovim apis
			-- { 'folke/neodev.nvim',       opts = {} },
		},
	}
})
