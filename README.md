# Neovim Config

This is my neovim config.

## Install Package Manager Lazy

```bash
git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable ~/.local/share/nvim/lazy/lazy.nvim
```

## Structure

```bash
~/.config/nvim
├── init.lua
├── lazy-lock.json
├── lua
│   ├── configs
│   │   └── colorscheme.lua
│   ├── maps.lua
│   ├── plugins.lua
│   └── settings.lua
└── README.md
```

