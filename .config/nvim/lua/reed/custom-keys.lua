-- shorten function name
local key = vim.keymap.set
-- silent keymap option
local opts = { silent = true }

-- remap space as leader key
key("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- leader + pv to exit and return to previous buffer
key("n", "<leader>z", vim.cmd.Ex)

-- CTRL + s to save
key("n", "<C-s>", [[:w<CR>]])
-- leader + q to quit the buffer and nvim without saving
key("n", "<leader>q", [[:q!<CR>]])

-- for commenting
-- leader + / for comment
key("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
key("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)
