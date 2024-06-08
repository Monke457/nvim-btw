vim.g.mapleader = " "

vim.keymap.set("n", "<leader>qq", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "kk", "<Esc>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>r", "*:%s//")
vim.keymap.set("v", "<leader>e", ":norm A")
vim.keymap.set("v", "<leader>w", ":norm I")
