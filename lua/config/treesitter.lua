local M = {}

function M.setup()
  require("nvim-treesitter.configs").setup {
    -- One of "all", "maintained" (parsers with maintainers), or a list of languages
    ensure_installed = {
        'lua', 
        'php', 
        'typescript', 
        'javascript', 
        'jsdoc',
        'json',
        'json5',
        'jsonnet',
        'jsonc',
        'html',
        'css',
        'bash',
        'python',
        'go',
        'rust',
        'c',
        'cpp',
        'phpdoc',
        'regex',
        'scss',
        'sql',
        'yaml',
        'toml',
        'vim',
        'vue',
        'svelte'
    },

    -- Install languages synchronously (only applied to `ensure_installed`)
    sync_install = false,

    highlight = {
      -- `false` will disable the whole extension
      enable = true,
    },
  }
end

return M