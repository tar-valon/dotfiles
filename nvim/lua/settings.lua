vim.opt.number = true

vim.opt.relativenumber = true

vim.opt.mouse = 'a' -- allow the mouse to be used in neovim

vim.opt.ignorecase = true  -- ignore case in search patterns 

vim.opt.smartcase = true -- smart case

vim.opt.hlsearch = true -- highlight all matches on previous search pattern

vim.opt.wrap = true

vim.opt.breakindent = true

vim.opt.autoindent = true

vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation

vim.opt.expandtab = true -- convert tabs to spaces

vim.opt.tabstop = 2 -- insert 2 spaces for a tab

vim.opt.termguicolors = true -- set term gui colors (most terminals support this)

vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard

vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
    
vim.opt.completeopt = { "menuone", "noselect" }
    
vim.opt.updatetime = 100 -- faster completion
    
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
  
