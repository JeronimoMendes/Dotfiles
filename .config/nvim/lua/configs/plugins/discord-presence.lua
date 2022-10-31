local setup, presence = pcall(require, "presence")
if not setup then
	return
end

presence.setup({
	blacklist = { "~/Work/Jungle/*" }, -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
})
