local map = vim.api.nvim_set_keymap

-- lazygit
map('n', '<leader>lg', '<cmd>LazyGit<cr>', { noremap = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", noremap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", noremap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", noremap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", noremap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move Lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- buffers
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- save file
map( "i", "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
map( "x", "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
map( "n", "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
map( "s", "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- quit
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

-- windows
map("n", "<leader>ww", "<C-W>p", { desc = "Other window", noremap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete window", noremap = true })
map("n", "<leader>w-", "<C-W>s", { desc = "Split window below", noremap = true })
map("n", "<leader>w|", "<C-W>v", { desc = "Split window right", noremap = true })
map("n", "<leader>-", "<C-W>s", { desc = "Split window below", noremap = true })
map("n", "<leader>|", "<C-W>v", { desc = "Split window right", noremap = true })

-- tabs
map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
