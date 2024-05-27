local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

if vim.g.neovide then

	local change_scale_factor = function(delta)
		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
	end
	vim.keymap.set("n", "<C-=>", function()
		change_scale_factor(1.25)
	end)
	vim.keymap.set("n", "<C-->", function()
		change_scale_factor(1/1.25)
	end)

	-- Clipboard
	vim.keymap.set({"n", "v", "i"}, "<D-v>", "\"*p", opts);
	vim.keymap.set({"n", "v", "i"}, "<D-c>", "\"*y", opts);
	vim.keymap.set({"n", "v", "i"}, "<D-x>", "\"*x", opts);
end

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

lvim.builtin.which_key.mappings["S"] = {
	"<cmd>SymbolsOutline<CR>", "Show Symbols"
}
