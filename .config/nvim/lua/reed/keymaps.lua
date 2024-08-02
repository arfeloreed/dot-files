-- shorten function name
local key = vim.keymap.set
-- silent keymap option
local opts = { silent = true }

-- remap space as leader key
key("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

key("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
-- leader + z to exit and return to previous buffer
key("n", "<leader>z", vim.cmd.Ex, { desc = "Ex map. Exit buffer and go back to cwd" })

-- CTRL + s to save
key("n", "<C-s>", [[:w<CR>]])
-- leader + q to quit the buffer and nvim without saving
key("n", "<leader>q", [[:q!<CR>]], { desc = "Quit nvim without saving." })

-- for commenting
-- leader + / for comment
key("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
key("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- moving lines
key("v", "J", ":m '>+1<CR>gv=gv") -- move the line/s down
key("v", "K", ":m '<-2<CR>gv=gv") -- move the line/s up
key("n", "<C-d>", "<C-d>zz") -- move half-screen down
key("n", "<C-u>", "<C-u>zz") -- move half-screen up
-- centers the cursor during navigation on search
key("n", "n", "nzzzv")
key("n", "N", "Nzzzv")
key("x", "<leader>p", [["_dP]], { desc = "paste v.2" }) -- paste v.2
key("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace string pattern" }) -- replace string pattern under the cursor

-- window management
key("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
key("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
key("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
key("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

key("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
key("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
key("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
key("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
key("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
