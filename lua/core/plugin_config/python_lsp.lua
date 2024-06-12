require("mason").setup {}
-- require("mason-lspconfig").setup { ensure_installed = { 
--         "html",
--         "cssls",
--         "tailwindcss",
--         "svelte",
--         "lua_ls",
--         "pyright", 
-- }, }
--

-- require 'nvim-lspconfig'.setup {}
require 'lspconfig'.pyright.setup {}



-- require("mason-tool-installer").setup({
--       ensure_installed = {
--         "prettier", -- prettier formatter
--         "stylua", -- lua formatter
--         "isort", -- python formatter
--         "black", -- python formatter
--         "pylint",
--         "eslint_d",
--       },
--     })
