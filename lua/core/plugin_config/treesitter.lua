require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all"
  ensure_installed = { 
	"rust",
	"lua",
	"python",
	"json",
        "javascript",
        "typescript",
        "yaml",
        "html",
        "css",
        "svelte",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "c",},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
       incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      }}
