vim.g.mapleader = " "

vim.keymap.set("n", "<leader>qq", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "kk", "<Esc>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>N", ":rightb vs BufEnter<Enter>")
vim.keymap.set("n", "<leader>jj", "<C-W>j")
vim.keymap.set("n", "<leader>kk", "<C-W>k")
vim.keymap.set("n", "<leader>hh", "<C-W>h")
vim.keymap.set("n", "<leader>ll", "<C-W>l")

vim.keymap.set("n", "<leader>H", ":rightb vs BufEnter<Enter>:h<Enter><C-W>j:q<Enter>")

vim.keymap.set("n", "<leader>r", "*:%s//")
vim.keymap.set("v", "<leader>e", ":norm A")
vim.keymap.set("v", "<leader>w", ":norm I")

vim.keymap.set("n", "<A-p>", "<C-^>")

vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>")

vim.keymap.set("n", "<leader>maingo", "ipackage main"..
"<Enter><Enter>import(<Enter>\"advent/internal/pkg/reader\""..
"<Enter>\"fmt\"<Enter>)<Enter><Enter>"..
"func main() {<Enter>}<Esc>"..
"<S-o>data := reader.FileToArray(\"\")"..
"<Enter><Enter>for _, line := range data {<Enter>}<Esc>"..
"<S-o>fmt.Println(line)<Esc>{kA<Esc>hi")

vim.keymap.set("n", "<leader>errgo", "oif err != nil {<Enter>}<Esc>"..
"<S-o>panic(err)<Esc><S-]>")

vim.keymap.set("n", "<leader>html", "i<DOCTYPE html>"..
"<Enter><html lang=en><Enter><head><Enter><title></title>"..
"<Enter><meta charset=\"UTF-8\">"..
"<Enter><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"..
"<Enter></head><Enter><body><Enter></body><Enter></html><Esc>6k3wa")
