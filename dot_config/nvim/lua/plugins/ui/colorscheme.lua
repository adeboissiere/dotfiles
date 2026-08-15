return {
  -- "catppuccin/nvim",
  -- name = "catppuccin",
  -- priority = 1000,
  -- config = function()
  --   require("catppuccin").setup({
  --     flavour = "frappe",
  --     transparent_background = true,
  --   })
  --   vim.cmd.colorscheme("catppuccin")
  -- end
  -- "scottmckendry/cyberdream.nvim",
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   require("cyberdream").setup({
  --     transparent = true,
  --   })
  --   vim.cmd.colorscheme("cyberdream")
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {}, -- end
  config = function()
    require("tokyonight").setup({
      transparent = true,
    })
    vim.cmd.colorscheme("tokyonight-storm")
  end
}
