return {
  "rebelot/kanagawa.nvim",
  priority = 1000,  -- to load before other plugins
  config = function()
    vim.cmd.colorscheme("kanagawa-dragon")
  end,
}
