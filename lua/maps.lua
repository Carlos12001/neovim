-- 📂lua/🌑maps.lua
vim.g.mapleader = " " -- Espacio como líder del mapa
vim.g.maplocalleader = "\\" -- Barra invertida como líder local del mapa

-- Neotree key bindings
vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>Neotree<CR>', { noremap = true, silent = true })

-- Atajo de teclado para cambiar el tema
-- vim.api.nvim_set_keymap("n", 
--                         "<Leader>kt", 
--                         "<cmd>lua require('configs.theme_switcher').switch_theme()<CR>", 
--                         { noremap = true, silent = true }
--                       )
