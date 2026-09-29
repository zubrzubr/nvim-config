return {
  "ibhagwan/fzf-lua",
  cmd = "FzfLua",
  keys = {
    { "<leader><space>", "<cmd>FzfLua files<cr>", desc = "Find files" },
    { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Files" },
    { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Grep in project" },
    { "<leader>fw", "<cmd>FzfLua grep_cword<cr>", desc = "Grep word under cursor" },
    { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Open buffers" },
    { "<leader>fr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent files" },
    { "<leader>fh", "<cmd>FzfLua helptags<cr>", desc = "Help" },
    { "<leader>f.", "<cmd>FzfLua resume<cr>", desc = "Resume last search" },
  },
  opts = {},
}
