--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("plugins")
require("options")
require("keymaps")

local c = require('vscode.colors').get_colors()
require('vscode').setup({
    italic_comments = true,
})
require('vscode').load()
vim.cmd.colorscheme "vscode"


require('lualine').setup {
  options = {        
    icons_enabled = true,
    theme = 'vscode',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}


require('nvim-tree').setup {
    sort_by = "case_sensitive",
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
        icons = {
            git_placement = "after",
        },
    },
    filters = {
        dotfiles = false,
    },
    git = {
        ignore = false,
    },
}
-- nvim-treesitter

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


-- nvim-cmp

local cmp = require("cmp")
require("luasnip.loaders.from_vscode").lazy_load()
--
cmp.setup({
  mapping = cmp.mapping.preset.insert({
      -- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
      -- ['<C-o>'] = cmp.mapping.complete(),
      -- ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  sources = {
    { name = 'path' },                              -- file paths
    { name = 'nvim_lsp'},                           -- from language server
    { name = 'nvim_lsp_signature_help'},            -- display function signatures with current parameter emphasized
    -- { name = 'nvim_lua', keyword_length = 2},       -- complete neovim's Lua runtime API such vim.lsp.*
    { name = 'buffer', keyword_length = 2 },        -- source current buffer
    { name = 'vsnip', keyword_length = 2 },         -- nvim-cmp source for vim-vsnip 
    { name = 'calc'},                               -- source for math calculation
    -- { name = 'luasnip' },

  },
})
--
require("mason").setup {}
require("mason-lspconfig").setup { ensure_installed = { "pyright", }, }
require 'lspconfig'.pyright.setup {}
