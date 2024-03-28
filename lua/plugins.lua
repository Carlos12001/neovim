-- 📂lua/🌑plugins.lua

return {

  -- Add your own plugin here

  -- Color scheme: tokyonight
   {
    "folke/tokyonight.nvim",
    priority = 1000,
    lazy = true,
    opts = { style = "moon" },
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
    }
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function() require("configs.telescope")() end,
  },


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