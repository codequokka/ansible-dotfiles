-- Enable neovim runtime filetype.lua
vim.g.do_filetype_lua = 1

vim.filetype.add({
	-- filename = {
	-- 	Brewfile = 'ruby',
	-- 	justfile = 'just',
	-- 	Justfile = 'just',
	-- 	Tmuxfile = 'tmux',
	-- 	['go.sum'] = 'go',
	-- 	['yarn.lock'] = 'yaml',
	-- 	['.buckconfig'] = 'toml',
	-- 	['.flowconfig'] = 'ini',
	-- 	['.tern-project'] = 'json',
	-- 	['.jsbeautifyrc'] = 'json',
	-- 	['.jscsrc'] = 'json',
	-- 	['.watchmanconfig'] = 'json',
	-- },
	pattern = {
		-- ['.*%.js%.map'] = 'json',
		-- ['.*%.postman_collection'] = 'json',
		-- ['Jenkinsfile.*'] = 'groovy',
		-- ['%.kube/config'] = 'yaml',
		-- ['%.config/git/users/.*'] = 'gitconfig',
		-- ['.*/templates/.*%.yaml'] = 'helm',
		-- ['.*/templates/.*%.yml'] = 'helm',
		-- ['.*/templates/.*%.tpl'] = 'helm',
		['.*/playbooks/.*%.yaml'] = 'yaml.ansible',
		['.*/playbooks/.*%.yml'] = 'yaml.ansible',
		['.*/roles/.*%.yaml'] = 'yaml.ansible',
		['.*/roles/.*%.yml'] = 'yaml.ansible',
		['.*/inventory/.*%.ini'] = 'ansible_hosts',
	},
})

-- Neovide
local g = vim.g

g.neovide_refresh_rate=75
g.neovide_transparency=0.9
g.neovide_cursor_animation_length=0.05
g.neovide_cursor_trail_length=0.01
g.neovide_cursor_vfx_mode = "pixiedust"
g.neovide_remember_dimensions = true;
-- g.neovide_cursor_vfx_particle_phase=1.5
-- g.neovide_cursor_vfx_particle_curl=1.0
g.neovide_scroll_animation_length = 0.2
-- g.neovide_profiler = true;
