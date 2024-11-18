local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports" },
    python = { "ruff_organize_imports", "ruff_format" },
    c = { "clang-format" },
  },

  format_on_save = {
    -- These options will be passed to conform.format().
    timeout_ms = 2000,
    lsp_fallback = false,
  },
}

require("conform").formatters.clang_format = {
  prepend_args = { "--style=file", "-i" },
}

return options
