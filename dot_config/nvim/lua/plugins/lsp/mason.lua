return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "cssls",
      "html",
      "emmet_language_server",
      "lua_ls",
      "rust_analyzer",
      "svelte",
      "tailwindcss",
      "ts_ls",
      "terraformls",
      "rust_analyzer",
      "jdtls",
      "gopls",
      "buf_ls",
      "pyright",
    }
  },
  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = {
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      }
    },
    "neovim/nvim-lspconfig",
  },
}
