return {
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = { "basedpyright", "ruff", "lua_ls" },
    },
    config = function(_, opts)
      -- basedpyright is very strict by default; "standard" is a sane middle ground
      vim.lsp.config("basedpyright", {
        settings = {
          basedpyright = { analysis = { typeCheckingMode = "standard" } },
        },
      })
      -- both ruff and basedpyright provide hover; keep only basedpyright's
      vim.lsp.config("ruff", {
        on_attach = function(client)
          client.server_capabilities.hoverProvider = false
        end,
      })

      require("mason-lspconfig").setup(opts)

      -- show diagnostics inline at the end of the line
      vim.diagnostic.config({
        virtual_text = true,
        severity_sort = true,
        float = { border = "rounded" },
      })

      -- keymaps only apply in buffers where an LSP client is attached
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local map = function(keys, fn, desc)
            vim.keymap.set("n", keys, fn, { buffer = args.buf, desc = desc })
          end
          map("gd", vim.lsp.buf.definition, "Go to definition")
          map("<leader>cr", vim.lsp.buf.rename, "Rename")
          map("<leader>ca", vim.lsp.buf.code_action, "Code action")
          map("<leader>cd", vim.diagnostic.open_float, "Line diagnostics")
        end,
      })
    end,
  },

  -- makes lua_ls aware of the Neovim API when editing your config
  { "folke/lazydev.nvim", ft = "lua", opts = {} },
}
