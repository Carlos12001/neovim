-- 📂lua/configs/🌑colorscheme.lua

vim.g.nord_disable_background = true
vim.g.nord_italic = true
vim.g.nord_contrast = true

-- Load the colorscheme
require('nord').set()

vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]
