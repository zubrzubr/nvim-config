return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,  -- to load before other plugins
  config = function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("gruvbox")
  end,
}
