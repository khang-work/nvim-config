return {
  {
    "stevearc/conform.nvim",
    -- format_on_save already does the job; uncomment this will cause unwanted timeout notifications.
    -- event = "BufWritePre", -- Format on save.
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "c",
        "go",
        "python",
      },
    },
  },
}
