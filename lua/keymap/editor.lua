local nnoremap = require("keymap.utils").nnoremap
local vnoremap = require("keymap.utils").vnoremap 
local inoremap = require("keymap.utils").inoremap

-- Better escape using jk in insert and terminal mode
inoremap("jk", "<ESC>")
inoremap("kj", "<ESC>")

-- Easier split navigations
nnoremap("<C-h>", "<C-W><C-H>")
nnoremap("<C-j>", "<C-W><C-J>")
nnoremap("<C-k>", "<C-W><C-K>")
nnoremap("<C-l>", "<C-W><C-L>")