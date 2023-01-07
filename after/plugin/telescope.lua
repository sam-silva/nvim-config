local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>p', function () 
	builtin.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }}) end, {})
-- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)