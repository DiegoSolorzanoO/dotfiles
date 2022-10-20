vim.cmd("autocmd!")

local home = os.getenv("HOME")
if not home then
    home = os.getenv("UserProfile")
end

vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25-Cursor,r-cr-o:hor20"
vim.wo.number = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.inccommand = 'split'
vim.opt.errorbells = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.wrap = false
vim.opt.backup = false
vim.opt.undodir = home .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 10
vim.opt.wildignore:append("*/node_modules/*")
vim.opt.cmdheight = 1
vim.g.mapleader = " "

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})
