return {
  "stevearc/oil.nvim",
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      float = {
        preview_split = "right",
      },
      keymaps = {
        ["<leader>ff"] = "actions.preview",
        ["<Esc>"] = { callback = "actions.close", mode = "n" },
      },
    })
    vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
  end,
}
