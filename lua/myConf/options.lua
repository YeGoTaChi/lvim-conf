local options = {
	shiftwidth = 4,											-- the number of spaces inserted for each indentation
	tabstop = 4,											-- insert 4 spaces for a tab
	expandtab = false,										-- dont convert tabs to spaces
  	termguicolors = true,									-- set term gui colors (most terminals support this)
	relativenumber = true,									-- Relative numbering !
	smartindent = true,										-- Smart indentation ?
	guifont = { "JetBrainsMono Nerd Font Mono", ":h20" },	-- the font used in graphical neovim applications
	showcmd = true											-- To show commands below ? (I use it to see nb of chars or lines)
}

-- Show Trailing spaces
vim.cmd([[
	set list listchars=tab:\ \ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨
]])

-- Just trying this :
lvim.transparent_window = false

vim.lsp.set_log_level("OFF")

if vim.g.neovide then
	-- Background blur
	vim.g.neovide_window_blurred = true
	vim.g.neovide_transparency = 0.8

	-- Floating
	vim.g.neovide_floating_blur_amount_x = 4.0
	vim.g.neovide_floating_blur_amount_y = 4.0
	vim.g.neovide_floating_shadow = true
	vim.g.neovide_floating_z_height = 10
	vim.g.neovide_light_angle_degrees = 90
	vim.g.neovide_light_radius = 20
end

lvim.builtin.terminal.direction = 'horizontal'
lvim.builtin.terminal.size = 15

for k, v in pairs(options) do
    vim.opt[k] = v
end

