return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    indent = { char = "│" },
    scope = {
      enabled = true, -- highlight the indent guide of the current block
      show_start = false,
      show_end = false,
    },
  },
}
