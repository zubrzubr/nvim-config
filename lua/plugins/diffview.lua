return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  keys = {
    { "<leader>gv", "<cmd>DiffviewOpen<cr>", desc = "Diff view (uncommitted)" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "Current file history" },
    { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "Repo history" },
    { "<leader>gq", "<cmd>DiffviewClose<cr>", desc = "Close diff view" },
  },
  opts = {},
}
