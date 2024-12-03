return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			local actions = require("telescope.actions")
			local action_state = require("telescope.actions.state")

			require("telescope").setup({
				pickers = {
					git_status = {
						mappings = {
							i = {
								["<C-D>"] = function(prompt_bufnr)
									actions.select_default(prompt_bufnr)
									local file = action_state.get_selected_entry().value -- Get the selected file
									vim.cmd("edit " .. file) -- Open the selected file
									vim.cmd("Gvdiffsplit") -- Run gvdiffsplit
								end,
							},
							n = {
								["<C-D>"] = function(prompt_bufnr)
									actions.select_default(prompt_bufnr)
									local file = action_state.get_selected_entry().value -- Get the selected file
									vim.cmd("edit " .. file) -- Open the selected file
									vim.cmd("Gvdiffsplit") -- Run gvdiffsplit
								end,
							},
						},
					},
				},
			})
			vim.keymap.set("n", "<leader>ff", function()
				builtin.find_files({
					find_command = { "fd" },
				})
			end)
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fs", builtin.grep_string, {})
			vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
			vim.keymap.set("n", "<leader>fb", function()
				builtin.buffers({
					initial_mode = "normal", -- Start Telescope in normal mode
				})
			end, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				{
					extensions = {
						["ui-select"] = {
							require("telescope.themes").get_dropdown({}),
						},
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
