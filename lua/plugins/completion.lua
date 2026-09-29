return {
  "saghen/blink.cmp",
  version = "1.*", -- release tag downloads a prebuilt binary, no Rust needed
  event = "InsertEnter",
  opts = {
    -- "default": <C-y> accept, <C-n>/<C-p> navigate, <C-space> open menu
    -- alternatives: "enter" (Enter accepts) or "super-tab" (Tab accepts)
    keymap = { preset = "default" },
    completion = {
      documentation = { auto_show = true }, -- show docs next to the menu
    },
    signature = { enabled = true }, -- function signature while typing args
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
}
