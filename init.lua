vim.o.number = true
vim.o.laststatus = 3
vim.o.autoread = true
vim.o.winborder = "bold"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.termguicolors = true
vim.opt.clipboard:append({ "unnamed", "unnamedplus" })

vim.cmd("nnoremap q: <nop>")
vim.cmd("nnoremap Q <nop>")
vim.cmd("vnoremap q: <nop>")
vim.cmd("vnoremap Q <nop>")
vim.cmd('nnoremap x "_x')
vim.cmd('nnoremap d "_d')
vim.cmd('nnoremap D "_D')
vim.cmd('vnoremap d "_d')
vim.cmd("let g:loaded_node_provider = 0")
vim.cmd("let g:loaded_python3_provider = 0")
vim.cmd("let g:loaded_ruby_provider = 0")
vim.cmd("let g:loaded_perl_provider = 0")

require("initialize")
