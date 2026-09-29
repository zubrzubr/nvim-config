return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    on_attach = function(bufnr)
      local gs = require("gitsigns")
      local map = function(keys, fn, desc)
        vim.keymap.set("n", keys, fn, { buffer = bufnr, desc = desc })
      end
      map("]h", function() gs.nav_hunk("next") end, "Next hunk")
      map("[h", function() gs.nav_hunk("prev") end, "Prev hunk")
      map("<leader>gp", gs.preview_hunk, "Preview hunk")
      map("<leader>gs", gs.stage_hunk, "Stage hunk")
      map("<leader>gr", gs.reset_hunk, "Reset hunk")
      map("<leader>gb", gs.blame_line, "Blame line")
      map("<leader>gd", gs.diffthis, "Diff file")
    end,
  },
}
