return {
  "saghen/blink.cmp",
  version = "1.*", -- release tag downloads a prebuilt binary, no Rust needed
  event = "InsertEnter",
  opts = {
    -- "super-tab": Tab accepts, <C-n>/<C-p> or <C-j>/<C-k> navigate, <C-space> open menu
    keymap = {
      preset = "super-tab",
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
    },
    completion = {
      documentation = { auto_show = true }, -- show docs next to the menu
    },
    signature = { enabled = true }, -- function signature while typing args
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
}
