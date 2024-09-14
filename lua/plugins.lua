-- 📂lua/🌑plugins.lua

return {

  -- Add your own plugin here

  -- Color scheme: Tokyonight
   {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
  },
  -- Color scheme: Nord Theme
  {
    "shaunsingh/nord.nvim",
    lazy = true,
    priority = 1000,
  },
  -- Markdown Preview
  {
    "iamcco/markdown-preview.nvim",
    cmd = { 
      "MarkdownPreviewToggle", 
      "MarkdownPreview", 
      "MarkdownPreviewStop" 
    },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },


  -- Neo Tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = false, -- Don't close NeoTree if it's the last window
        persist = true, -- Enable persistence across sessions and tabs
        -- other configurations...
      })
    end,
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function() require("configs.telescope")() end,
  },

  -- Mason
  -- {
  -- "williamboman/mason.nvim",
  -- build = ":MasonUpdate", -- Updates Mason packages on installation
  -- config = function()
  --   require("mason").setup()
  -- end,
  -- },
  
  -- Nvim Treesitter
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter-textobjects",
  --   },
  --   build = ":TSUpdate",
  --   config = function()
  --     require("configs.nvim-treesitter").setup()
  --   end,
  -- },


  -- Config for Lazy
  {"folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {"folke/neoconf.nvim", cmd = "Neoconf"},
  {"folke/neodev.nvim"},
}
