-- 📂lua/🌑maps.lua
vim.g.mapleader = " " -- Espacio como líder del mapa
vim.g.maplocalleader = "\\" -- Barra invertida como líder local del mapa

-- Neotree key bindings
vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>Neotree<CR>', { noremap = true, silent = true })
