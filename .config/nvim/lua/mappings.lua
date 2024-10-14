require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
map("n", "<C-t>", function()
  require("menu").open "default"
end, { desc = "Abrir Volt Menu" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
