vim.g.mapleader = " "
vim.g.maplocalleader = ' '
local keymap = vim.keymap -- for conciseness

-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("i", "<C-q>", "<ESC>:q<CR>", { desc = "Quit buffer" }) 
keymap.set("n", "<C-q>", ":q<CR>", { desc = "Quit buffer" }) 
keymap.set("i", "<C-s>", "<ESC>:w<CR>", { desc = "Save" }) -- increment
keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save" }) -- increment
keymap.set("n", "<leader>", ":NvimTreeToggle<CR>", { desc = "Toggle nvim-tree file manager" }) -- increment
keymap.set("n", "<CR>", "i", { desc = "Enter insert mode" }) -- increment
