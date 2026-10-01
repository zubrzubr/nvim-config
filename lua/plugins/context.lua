return {
	"nvim-treesitter/nvim-treesitter-context",
	event = { "BufReadPost", "BufNewFile" },
	opts = {
		max_lines = 3, -- at most 3 sticky lines (class > method > block)
		multiline_threshold = 1, -- collapse multi-line signatures to their first line
		trim_scope = "outer", -- when over the limit, drop the outermost scopes first
	},
	keys = {
		{
			"[x",
			function()
				require("treesitter-context").go_to_context(vim.v.count1)
			end,
			desc = "Jump to context (class/def line)",
		},
		{ "<leader>ut", "<cmd>TSContext toggle<cr>", desc = "Toggle sticky context" },
	},
}
