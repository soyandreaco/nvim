local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)

vim.g.mapleader = " "

keymap("n", "<Leader>w", ":w<CR>", opts)
keymap("n", "<Leader>W", ":wq<CR>", opts)
keymap("n", "<Leader>q", ":q<CR>", opts)
keymap("n", "<Leader>Q", ":q!<CR>", opts)
keymap("n", "<Leader>tt", ":t.<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<Leader>pv", ":Vex<CR>", opts)
keymap("n", "<Leader>ph", ":Sex<CR>", opts)

-- keymap("n", "<Leader>pf", ":Files<CR>", opts)

--- Copy full file
keymap("n", "<Leader>Y", 'gg"+yG', opts)

-- Emmet shorcuts
vim.g.user_emmet_mode = "n"
vim.g.user_emmet_leader_key = ","

-- Telescope Using Lua functions
keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
keymap("n", "<leader>fr", "<cmd>lua require('telescope.builtin').registers()<cr>", opts)
keymap("n", "<leader>ftt", "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)
-- With Treesitter
keymap("n", "<leader>ts", "<cmd>lua require('telescope.builtin').treesitter()<cr>", opts)
