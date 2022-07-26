function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- tree
map("n", "<leader>v", ":NvimTreeToggle<CR>")

-- null-ls
map("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>")
