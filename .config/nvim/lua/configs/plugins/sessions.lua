local setup, sessions = pcall(require, "sessions")
if not setup then
	return
end

sessions.setup({
	events = { "BufWinEnter", "BufReadPost", "BufNewFile", "TabEnter", "VimEnter", "VimLeavePre" },
})
