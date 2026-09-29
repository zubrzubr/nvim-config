return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = { { [[<C-\>]], desc = "Toggle terminal" } },
  opts = {
    open_mapping = [[<C-\>]], -- works in normal, insert and terminal mode
    direction = "float",
    float_opts = { border = "rounded" },
  },
}
