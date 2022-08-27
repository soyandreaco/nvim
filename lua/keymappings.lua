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

-- Bufferline
keymap("n", "<Leader>uu", ":BufferLineCycleNext", opts)
keymap("n", "<Leader>oo", ":BufferLineCyclePrev", opts)

--- Copy full file
keymap("n", "<Leader>Y", 'gg"+yG', opts)

-- Emmet shorcuts
vim.g.user_emmet_mode = "n"
vim.g.user_emmet_leader_key = ","

-- Neo-tree
keymap('n', '<C-n>', ':Neotree toggle<CR>', opts) -- open/close
