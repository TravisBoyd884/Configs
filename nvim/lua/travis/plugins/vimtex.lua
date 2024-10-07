return {
	"lervag/vimtex",
	config = function()
		vim.g.vimtex_view_method = "general"
		vim.g.vimtex_view_general_viewer = "tmux-mupdf"
		vim.g.vimtex_compiler_method = "latexmk"
		vim.g.tex_flavor = "lattex"
		-- vim.g.vimtex_quickfix_mode = 0
		vim.opt.conceallevel = 1
		vim.g.tex_conceal = "abdmg"
	end,
}
