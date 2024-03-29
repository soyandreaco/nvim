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
keymap("n", "<Leader>m", ":Ex<CR>", opts)


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
--keymap("n", "<Leader>tp", ":Telescope live_grep<CR>", opts)
--keymap("n", "<Leader>tf", ":Telescope find_files<CR>", opts)
--keymap("n", "<Leader>tb", ":Telescope buffers<CR>", opts)
--keymap("n", "<Leader>tg", ":Telescope git_status<CR>", opts)
--keymap("n", "<Leader>ty", ":Telescope command_history<CR>", opts)
--keymap("n", "<Leader>th", ":Telescope help_tags<CR>", opts)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>tf', builtin.find_files, {})
vim.keymap.set('n', '<leader>tr', builtin.live_grep, {})
vim.keymap.set('n', '<leader>tb', builtin.buffers, {})
vim.keymap.set('n', '<leader>th', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})

--vim.keymap.set('n', '<leader>ts', builtin.grep_string, {})
vim.keymap.set('n', '<leader>ts', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)


-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)


-- Mover
-- Normal
keymap("n", "<C-k>", ":m .-2<CR>==", opts)
keymap("n", "<C-j>", ":m .+1<CR>==", opts)
-- Visual
keymap("v", "<C-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "<C-j>", ":m '>+1<CR>gv=gv", opts)
-- Insert
keymap("i", "<C-j>", "<ESC>:m .+1<CR>==gi", opts)
keymap("i", "<C-k>", "<ESC>:m .-2<CR>==gi", opts)



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
