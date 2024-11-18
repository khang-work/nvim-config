require "nvchad.mappings"

-- Add custom key mappings here.

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
