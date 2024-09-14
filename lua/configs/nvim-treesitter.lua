-- 📂lua/📂configs/🌑nvim-treesitter.lua

local M = {}

function M.setup()
  require("nvim-treesitter.configs").setup({
    ensure_installed = {
      -- Lista de lenguajes que utilizas
      "lua",
      "vim",
      "bash",
      "python",
      "javascript",
      "html",
      "css",
      "json",
      "toml",
      "yaml",
      "markdown",
      "markdown_inline",
      "rust",
      "go",
      "dockerfile",
      "c",
      "cpp",
      "cmake",
      "make",
      "cuda",
    },
    highlight = {
      enable = true,              -- Habilita el resaltado de sintaxis
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true,              -- Habilita la indentación basada en Treesitter
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          -- Define tus atajos de teclado para textobjects aquí
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        },
      },
    },
    -- Puedes agregar más configuraciones si lo deseas
  })
end

return M
