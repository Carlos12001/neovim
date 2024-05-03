-- 📂lua/📂configs/🌑theme_switcher.lua

local M = {}

local themes = {
  {
    name = "Nord (Dark)",
    setup = function()
      vim.g.nord_disable_background = true
      vim.g.nord_contrast = true
      vim.g.nord_italic = true
      require("nord").set()
      vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]
    end
  },
  {
    name = "Nord (Light)",
    setup = function()
      vim.o.background = "light"
      vim.g.nord_contrast = true
      vim.g.nord_italic = true
      require("nord").set()
      vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]
    end
  },
  {
    name = "Tokyonight",
    setup = function()
      require("tokyonight").set()
      vim.cmd[[colorscheme tokyonight]]
    end
  }
}

function M.switch_theme()
  local theme_names = {}
  for _, theme in ipairs(themes) do
    table.insert(theme_names, theme.name)
  end

  vim.ui.select(theme_names, {
    prompt = "Select a theme:",
    format_item = function(item)
      return item
    end,
  }, function(choice, idx)
    if choice then
      themes[idx].setup()
    end
  end)
end

return M
