-- map leaders
vim.g.mapleader = " "
vim.g.user_emmet_leader_key = ","

-- back to netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- terminal
vim.keymap.set("n", "<leader>tr", ":terminal<CR>a")

-- move line down/up
vim.keymap.set("n", "∆", ":m +1<CR>")
vim.keymap.set("n", "˚", ":m -2<CR>")

-- move multiple lines down/up
vim.keymap.set("v", "∆", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "˚", ":m '<-2<CR>gv=gv")

-- increment/decrement in visual block
vim.keymap.set("v", "<C-a>", "<C-a>gv")
vim.keymap.set("v", "<C-x>", "<C-x>gv")

-- indent/de-indent in visual mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- auto-pair
vim.keymap.set("i", "\"", "\"\"<left>")
vim.keymap.set("i", "\'", "\'\'<left>")
vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "{", "{}<left>")
--vim.keymap.set("i", "<", "<><left>")
vim.keymap.set("i", "{<CR>", "{<CR>}<ESC>O")

-- replace word under cursor
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<left><left><left>")

-- because VISUAL BLOCK mode...
vim.keymap.set("i", "<C-c>", "<ESC>")

-- end and beginning of line
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")
vim.keymap.set("v", "H", "^")
vim.keymap.set("v", "L", "$")

-- undotree and harpoon conflict
--vim.keymap.set("n", "<C-m>", "<C-w>")

-- centering when moving page down/up
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- [experimental] deleting
vim.keymap.set("i", "<C-d>", "<Del>")
vim.keymap.set("i", "<C-h>", "<BS>")
--vim.keymap.set("n", "<C-h>", "i<BS><right><ESC>")
--vim.keymap.set("n", "<C-k>", "d$a <Del><ESC>")

-- navigating in insert mode
vim.keymap.set("i", "<C-b>", "<left>")
vim.keymap.set("i", "<C-f>", "<right>")

-- go back and forth between definitions
vim.keymap.set("n", "gb", "<C-^>")

