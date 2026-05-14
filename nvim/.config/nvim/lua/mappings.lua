require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>ga", function()
  require("nvchad.term").toggle({
    pos = "float",
    id = "'geminiAgent",
    cmd = "gemini"
  })
end, { desc = "Gemini Agent" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
