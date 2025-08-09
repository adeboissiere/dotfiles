return {
  cmd = { "svelteserver", "--stdio" },
  filetypes = { "svelte" },
  root_markers = { "package.json", "svelte.config.js", ".git" },
  settings = {
    svelte = {
      plugin = {
        css = {
          enabled = true
        },
        html = {
          enable = true
        },
        typescript = {
          enable = true
        }
      }
    }
  }
}
