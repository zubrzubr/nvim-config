return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false, -- load at startup so `nvim .` can open the tree
  keys = {
    { "<leader>e", "<cmd>Neotree toggle reveal<cr>", desc = "File tree" },
  },
  opts = {
    filesystem = {
      hijack_netrw_behavior = "open_current", -- `nvim .` opens the tree in the window
      follow_current_file = { enabled = true }, -- highlight the open file in the tree
      filtered_items = {
        visible = true, -- show hidden files, dimmed
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
    window = { width = 32 },
  },
}
