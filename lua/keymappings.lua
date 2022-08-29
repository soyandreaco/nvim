local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)

vim.g.mapleader = " "

keymap("n", "<Leader>w", ":w<CR>", opts)
keymap("n", "<Leader>W", ":wq<CR>", opts)
keymap("n", "<Leader>q", ":Bdelete<CR>", opts)
keymap("n", "<Leader>Q", ":q!<CR>", opts)
keymap("n", "<Leader>tt", ":t.<CR>", opts)

-- Bufferline
keymap("n", "<Leader>uu", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<Leader>oo", ":BufferLineCyclePrev<CR>", opts)

--- Copy full file
keymap("n", "<Leader>Y", 'gg"+yG', opts)

-- Emmet shorcuts
vim.g.user_emmet_mode = "n"
vim.g.user_emmet_leader_key = ","

-- Neo-tree
keymap('n', '<C-n>', ':Neotree toggle<CR>', opts) -- open/close

-- Telescope
keymap("n", "<C-F>", ":Telescope live_grep<CR>", opts)
keymap("n", "<C-P>", ":Telescope find_files<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


-- -- Revisar
-- -- Move text up and down
-- keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
-- keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
--
-- -- Insert --
-- -- Press jk fast to exit insert mode 
-- keymap("i", "jk", "<ESC>", opts)
--
-- -- Visual --
-- -- Stay in indent mode
-- keymap("v", "<", "<gv", opts)
-- keymap("v", ">", ">gv", opts)
--
-- -- Move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- keymap("v", "p", '"_dP', opts)
--
-- -- Visual Block --
-- -- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
