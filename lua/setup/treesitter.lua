require("nvim-treesitter").setup({
    ensure_installed = {
        "c",
        "cpp",
		"lua",
        "vim",
        "help",
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

    -- Install parsers synchronously (only applied to `ensure_installed`)
    -- Install parsers synchronously (only applied to `ensure_installed`)
     sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = {
        enable = true,
    },

    context_commentstring = {
        enable = true,
    }

})
