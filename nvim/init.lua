vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

--local map = vim.api.nvim_set_keymap
--local opts = { noremap = true, silent = true }
--
--map('i', '{', '{}<Esc>ha', opts)
--map('i', '(', '()<Esc>ha', opts)
--map('i', '[', '[]<Esc>ha', opts)
--map('i', '"', '""<Esc>ha', opts)
--map('i', "'", "''<Esc>ha", opts)
--map('i', '`', '``<Esc>ha', opts)

require("config.lazy")
