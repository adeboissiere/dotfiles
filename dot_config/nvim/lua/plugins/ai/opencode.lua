return {
  "nickjvandyke/opencode.nvim",
  version = "*", -- Latest stable release
  config = function()
    ---@type opencode.Opts
    vim.g.opencode_opts = {
      -- Your configuration, if any; goto definition on the type for details
    }

    vim.o.autoread = true -- Required for `vim.g.opencode_opts.events.reload`

    -- Recommended/example keymaps
    vim.keymap.set({ "x" }, "<leader>as", function() require("opencode").ask("@this: ") end,
      { desc = "Ask OpenCode with selection" })
    vim.keymap.set({ "n" }, "<leader>as", function() require("opencode").ask("@buffer: ") end,
      { desc = "Ask OpenCode with buffer" })
    vim.keymap.set({ "n", "x" }, "<C-x>", function() require("opencode").select() end, { desc = "Select OpenCode…" })
  end,
}
