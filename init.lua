-- 🌑 init.lua

-- General settings
require("settings")
-- Key mappings
require("maps")

-- Lazy.nvim initialization
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

-- Load plugins with Lazy.nvim
require("lazy").setup(require("plugins"))

-- Load the colorscheme
require("configs.colorscheme")
