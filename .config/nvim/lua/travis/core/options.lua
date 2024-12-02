vim.opt.clipboard = "unnamedplus"

vim.o.number = true
vim.o.relativenumber = true

vim.o.autoindent = true
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

vim.opt.termguicolors = true

vim.o.hidden = true

vim.o.foldcolumn = "1"

vim.o.colorcolumn = "90"

-- Enable filetype plugins
vim.cmd('filetype plugin on')

-- Enable syntax highlighting
vim.opt.syntax = 'on'


-- Automatically load view when opening file
vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*",
	callback = function()
		if vim.fn.expand("%") ~= "" then
			vim.cmd("silent! loadview")
		end
	end,
})
