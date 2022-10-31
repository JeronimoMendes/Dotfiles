local setup, workspaces = pcall(require, "workspaces")
if not setup then
	return
end

workspaces.setup({
	-- hook to load session
	hooks = {
		open = function()
			-- load session
			require("sessions").load("./session.nvim", { silent = true })

			-- open telescope find file
			require("telescope.builtin").find_files()
		end,
	},
})
