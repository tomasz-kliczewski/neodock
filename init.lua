-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("plugins")
require("options")
require("keymaps")

-- VSCODe
local c = require('vscode.colors').get_colors()
require('vscode').setup({
    -- style = 'light'
    -- transparent = true,
    italic_comments = true,
    -- underline_links = true,
    -- Disable nvim-tree background color
    -- disable_nvimtree_bg = true,
})
require('vscode').load()
-- load the theme without affecting devicon colors.
vim.cmd.colorscheme "vscode"

-- lualine

require('lualine').setup {
  options = {        
    -- fmt = string.lower,
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

-- nvim-tree 

require('nvim-tree').setup {
    sort_by = "case_sensitive",
    view = {
        -- adaptive_size = false,
        width = 30,
        -- mappings = {  list = {{ key = "u", action = "dir_up" }, }, },
    },
    renderer = {
        group_empty = true,
        icons = {
            git_placement = "after",
        --     glyphs = {
        --         git = {
        --             unstaged = "-",
        --             staged = "s",
        --             untracked = "u",
        --             renamed = "r",
        --             deleted = "d",
        --             ignored = "i",
        --         },
        --     },
        },
    },
    filters = {
        dotfiles = false,
    },
    git = {
        ignore = false,
    },
}

local cmp = require("cmp")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-o>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  }),
})

require("mason").setup {}
require("mason-lspconfig").setup { ensure_installed = { "pyright", }, }
require 'lspconfig'.pyright.setup {}
