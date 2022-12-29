local nnoremap = require("keymap.utils").nnoremap

nnoremap("<leader>p", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>f", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")