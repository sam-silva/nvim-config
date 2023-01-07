local M = {}
function M.setup() 
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    preserve_window_proportions = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        {key = "h", action = "collapse_all"}
      },
    },
  },
  renderer = {
    group_empty = true,
  },
})
end

return M