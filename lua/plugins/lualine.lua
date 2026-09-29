return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  opts = {
    options = {
      theme = "auto",        -- picks up colors from the colorscheme
      globalstatus = true,   -- one statusline for all splits
    },
  },
}
