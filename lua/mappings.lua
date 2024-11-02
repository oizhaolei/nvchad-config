require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>fs", "<cmd>w<CR>", { desc = "general save file" })

map("n", "<leader>jc", ":HopChar2<cr>", { silent = true })
map("n", "<leader>jj", ":HopWord<cr>", { silent = true })
map("n", "<leader>jl", ":HopLine<cr>", { silent = true })
map("n", "<leader>jw", ":HopWord<cr>", { silent = true })

map("n", "<leader>ws", "<cmd>split<CR>", { desc = "splitting the window horizontally" })
map("n", "<leader>wv", "<cmd>vsplit<CR>", { desc = "splitting the window vertically" })

map("n", "<leader>q", "<cmd>q<CR>", { desc = "quit nvim" })
map("n", "<leader>Q", "<cmd>qa<CR>", { desc = "quit nvim" })

map("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', { desc = "Toggle Spectre" })
map(
  "n",
  "<leader>sw",
  '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
  { desc = "Search current word" }
)
map("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', { desc = "Search current word" })
map(
  "n",
  "<leader>sp",
  '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
  { desc = "Search on current file" }
)

-- new terminals
map("n", "<C-\\>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

map("t", "<C-\\>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })
