local nvlsp = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

-- Load defaults i.e lua_lsp.
nvlsp.defaults()

-- Set up other lsps.
local servers = {
  clangd = {},
  pyright = {},
  gopls = {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
      gopls = {
        completeUnimported = true,
        usePlaceholders = true,
        analyses = {
          unusedparams = true,
        },
      },
    },
  },
}

for name, opts in pairs(servers) do
  opts.on_init = nvlsp.on_init
  opts.on_attach = nvlsp.on_attach
  opts.capabilities = nvlsp.capabilities

  lspconfig[name].setup(opts)
end
