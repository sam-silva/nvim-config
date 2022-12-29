vim.cmd [[packadd packer.nvim]]
local M = {}

function M.plugins(use)
  use ("wbthomason/packer.nvim")
  -- theme
  use ("folke/tokyonight.nvim")

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    config = function() 
      require("config.tree").setup()
    end
  }

   -- Treesitter
   use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
        require("config.treesitter").setup()
    end,
 }

  -- Copilot
  use 'github/copilot.vim'


   -- Better icons
  use {
    "kyazdani42/nvim-web-devicons",
    module = "nvim-web-devicons",
    config = function()
        require("nvim-web-devicons").setup { default = true }
    end,
  }

  --indent
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require('config.indent').setup()
    end
  }

    -- Better Comment
    use {
      "numToStr/Comment.nvim",
      keys = { "gc", "gcc", "gbc" },
      config = function()
          require("Comment").setup {}
      end,
  }

  use {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter",
    module = "nvim-gps",
    config = function()
        require("nvim-gps").setup()
    end,
  }

   -- Status line
   use {
    "nvim-lualine/lualine.nvim",
    event = "VimEnter",
    config = function()
        require("config.statusline").setup()
    end,
    requires = { "nvim-web-devicons" },
  }

  use {
    'neoclide/coc.nvim',
    branch = 'release',
    config = function()
        require("config.coc").setup()
    end
  }
  
end

return M.plugins