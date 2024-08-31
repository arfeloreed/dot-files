-- vim.cmd("let g:netrw_liststyle = 3") -- for using tree forlder structure in netrw

local opt = vim.opt

opt.cursorline = true -- highlight entire current line
-- vim.opt.guicursor = "" -- on insert cursor is still in its fat mode
vim.opt.nu = true -- show current line number
vim.opt.relativenumber = true -- show relative line numbers in respect to current

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
vim.opt.smartindent = true

vim.opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
-- vim.opt.hlsearch = false -- highlight search word
vim.opt.incsearch = true -- type :h incsearch

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
vim.opt.termguicolors = true
-- opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register for copy/paste

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- ruler guide
vim.opt.colorcolumn = "100"

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false
