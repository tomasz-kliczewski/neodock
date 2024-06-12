vim.g.mapleader = " "
vim.g.maplocalleader = ' '
local keymap = vim.keymap -- for conciseness

-- Windows controls
-- keymap.set("i", "<C-q>", "<ESC>:q<CR>", { desc = "Quit buffer" }) 
-- keymap.set("n", "<C-q>", ":q<CR>", { desc = "Quit buffer" }) 
-- keymap.set("i", "<C-s>", "<ESC>:w<CR>", { desc = "Save" }) -- 
-- keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save" }) -- increment
--
-- keymap.set("n", "<CR>", "i", { desc = "Enter insert mode" }) -- incremen
-- -- leader section
keymap.set("n", "<leader>x", ":NvimTreeToggle<CR>", { desc = "Toggle nvim-tree file manager" }) -- increment

  -- telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {desc="T find files in workdir"})
keymap.set('n', '<leader>fg', builtin.live_grep, {desc="T live grep"})
keymap.set('n', '<leader>fb', builtin.buffers, {desc = "T buffers"})
-- keymap.set('n', '<leader>fh', builtin.treesitter, {desc = "T treesitter"})
keymap.set('n', '<leader>fh', builtin.help_tags, {desc="T tags"})

