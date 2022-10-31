local setup, theme = pcall(require, "github-theme")
if not setup then
	return
end

theme.setup({
	theme_style = "dimmed",
})
