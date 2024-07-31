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

-- window management
-- key("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
-- key("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
-- key("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- key("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- key("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- key("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- key("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- key("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- key("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
