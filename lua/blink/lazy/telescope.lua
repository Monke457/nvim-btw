vim.keymap.set('n', '<leader>ff', function()
	require('telescope.builtin').find_files({});
end)
vim.keymap.set('n', '<C-p>', function()
	require('telescope.builtin').git_files({});
end)
vim.keymap.set('n', '<leader>sf', function()
	require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") });
end)

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' }
}
