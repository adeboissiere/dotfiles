return {
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = {
      "html",
      "css",
      "scss",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "svelte",
    },
    root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
  }
