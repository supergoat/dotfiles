return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"kotlin_language_server",
					"jdtls",
					"rust_analyzer",
					"tailwindcss",
					"gopls",
					"buf_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.ts_ls.setup({ capabilities = capabilities })
			lspconfig.kotlin_language_server.setup({ capabilities = capabilities })
			lspconfig.tailwindcss.setup({ capabilities = capabilities })
			lspconfig.gopls.setup({ capabilities = capabilities })
			lspconfig.buf_ls.setup({ capabilities = capabilities })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", "<cmd>Telescope lsp_definitions<CR>", {})
			vim.keymap.set("n", "<leader>gr", "<cmd>Telescope lsp_references<CR>", {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename" })
		end,
	},
}
