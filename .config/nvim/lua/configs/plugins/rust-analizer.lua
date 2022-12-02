local status, rust_analyzer = pcall(require, "rust-tools")
if not status then
	return
end

rust_analyzer.setup({
	server = {
		on_attach = function(_, bufnr)
			-- Hover actions
			vim.keymap.set("n", "<C-space>", rust_analyzer.hover_actions.hover_actions, { buffer = bufnr })
			-- Code action groups
			vim.keymap.set("n", "<Leader>a", rust_analyzer.code_action_group.code_action_group, { buffer = bufnr })
		end,
	},
})
