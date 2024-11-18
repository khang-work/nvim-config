# Introduction

This is my Neovim configuration to work with these languages:
- Lua
- Go
- Python
- C

# Setup on Windows

1. Install Nerd Font: [Nerd Font Fira Code zip bundle](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip)
1. Configure Windows Terminal:
   1. Create a new profile
   1. Change font to Fira Code font
   1. Change font size to 10
   1. Hide scrollbar
   1. Set padding to 0
1. Remove previous Neovim configurations and caches
   ```ps
   rm -Force $ENV:USERPROFILE\AppData\Local\nvim
   rm -Force $ENV:USERPROFILE\AppData\Local\nvim-data
   ```
1. Install Git: [Git for Windows](https://git-scm.com/downloads/win)
1. Install Neovim: [Neovim v0.10.2](https://github.com/neovim/neovim/releases/tag/v0.10.2)
1. Install TDM-GCC compiler: [TDM-GCC 10.3.0](https://jmeubank.github.io/tdm-gcc/articles/2021-05/10.3.0-release)
1. Install Go: [Go 1.22.6](https://go.dev/dl/go1.22.6.windows-amd64.msi)
1. Install Python: [Python 3.11.9](https://www.python.org/downloads/release/python-3119/)
1. Install Ripgrep: [Ripgrep 14.1.1](https://github.com/BurntSushi/ripgrep/releases/tag/14.1.1)
1. Install NodeJS: [NodeJS 22.11.0](https://nodejs.org/dist/v22.11.0/node-v22.11.0-x64.msi)
1. Clone the configuration to nvim config directory:
   ```
   git clone https://github.com/khang-enstack/nvim-config $ENV:USERPROFILE\AppData\Local\nvim
   nvim
   ```
1. In nvim, execute `:MasonInstallAll` to install all listed lsps and formatters.

# Keybindings to Memorize

- Toggle nvim-tree: `<C-n>`
- Focus nvim-tree: `<leader> + e`
- Toggle horizontal terminal: `<A-h>`
- Toggle comment: `<leader> + /`
- LSP hover: `K`
- LSP rename: `<leader> ra`
- LSP references: `gr`
- LSP definition: `gd`
- Go back from lsp definition: `<C-t>`
- Find files: `<leader> + ff`
- Find buffers: `<leader> + fb`
- Go to next buffer: `<TAB>`
- Go to previous buffer: `<S-TAB>`
- Close buffer: `<leader> + x`

In nvim-tree pane:
- Create a new file: `a`
- Delete a file: `d`
- Open a file: `<ENTER>`

# FAQs

## What is the `<leader>` key in this config?

Space

## How to remove nvim installation on Windows?

You can use the same installer that you use to install nvim.
Running the installer again will prompt a Remove option.

# Credits

This configuration is based of [NvChad starter](https://github.com/NvChad/starter/tree/d0c602f5f155d4d1261609219e9b8a61e936d681).

