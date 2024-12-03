return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon.setup()

		vim.keymap.set("n", "<leader>fa", function()
			harpoon:list():add()
		end)
		vim.keymap.set("n", "<leader>fe", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<leader>f1", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<leader>f2", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<leader>f3", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<leader>f4", function()
			harpoon:list():select(4)
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<leader>f9", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<leader>f8", function()
			harpoon:list():next()
		end)
	end,
}
