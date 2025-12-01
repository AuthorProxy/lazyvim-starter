-- lua/plugins/taplo.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      taplo = {
        filetypes = { "toml" },
        -- IMPORTANT: this is required for taplo LSP to work in non-git repositories
        root_dir = require("lspconfig.util").root_pattern("*.toml", ".git"),
      },
    },
  },
}
