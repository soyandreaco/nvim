vim.opt.termguicolors = true

require("bufferline").setup{
    options = {
        numbers = "buffer_id",
        max_name_length = 18,
    }
}
