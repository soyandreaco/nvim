
require("nvim-treesitter").setup({
   ensure_installed = { "c", 
						"lua", 
						"vim", 
						"python", 
						"javascript", 
						"css",
						"html",
						"typescript",
						"vue",
						"markdown",
						"java"
					  },
   highlight = {
	 enable = true,
   },

   indent = {
	 enable=true,
   }

})
