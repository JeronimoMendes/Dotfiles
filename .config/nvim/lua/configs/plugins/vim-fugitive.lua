local setup, vim_fugitive = pcall(require, "vim-fugitive")
if not setup then
	return
end

vim_fugitive.setup({
	diff_opts = {
		internal = true,
	},
})
