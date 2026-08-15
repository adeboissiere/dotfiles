return {
  capabilities = {
    textDocument = {
      diagnostic = false,
    },
    workspace = {
      didChangeWatchedFiles = {
        dynamicRegistration = false,
      },
    },
  },
  before_init = function(params, config)
    if not params.rootUri or params.rootUri == vim.NIL then
      return
    end

    local python = vim.uri_to_fname(tostring(params.rootUri)) .. "/.venv/bin/python"

    if vim.uv.fs_stat(python) then
      config.settings = config.settings or {}
      config.settings.python = config.settings.python or {}
      config.settings.python.pythonPath = python
    end
  end,
}
