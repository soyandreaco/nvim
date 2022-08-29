require("nvim-treesitter").setup({
    ensure_installed = {
        "c",
		"lua",
        "vim",
        "python",
        "javascript",
        "css",
        "html",
        "typescript",
        "vue",
        "markdown",
        "java",
        "regex",
        "rust",
        "sql",
        "bash",
        "json"
    },

    highlight = {
        enable = true,
    },

    indent = {
        enable=true,
    },

    context_commentstring = {
        enable = true,
    }

})
