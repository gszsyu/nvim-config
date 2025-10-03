vim.o.number = true
vim.o.laststatus = 3
vim.o.autoread = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.termguicolors = true
vim.opt.clipboard:append({ "unnamed", "unnamedplus" })

vim.cmd('nnoremap x "_x')
vim.cmd('nnoremap d "_d')
vim.cmd('nnoremap D "_D')
vim.cmd('vnoremap d "_d')
