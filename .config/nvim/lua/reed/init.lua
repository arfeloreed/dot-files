require("reed.custom-keys")
require("reed.settings")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- color scheme
    { "rose-pine/neovim", name = "rose-pine" },

    -- file finder
    "nvim-lua/plenary.nvim",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    { 'nvim-telescope/telescope.nvim', tag = '0.1.5' },

    -- for commenting
    {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
        },
    lazy = false,
    },
    'JoosepAlviste/nvim-ts-context-commentstring',
})

print("Hello from Reed")
