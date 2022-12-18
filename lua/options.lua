local opt = vim.opt

opt.termguicolors	= true
opt.clipboard 		= "unnamedplus"
opt.cursorline		= true
opt.encoding 		= "utf-8" 			-- Set default encoding to UTF-8
opt.mouse			= "a"
opt.number	 		= true 				-- Show line numbers
opt.numberwidth		= 4				    -- establece el ancho de columna del número
opt.relativenumber 	= true 				-- Show numbers relative to cursor position
opt.showcmd			= true
opt.showmatch		= true

--opt.cmdheight		= 2 				-- More space in the command line
opt.showmode 		= false 			-- ya no necesitamos ver cosas como -- INSERTAR --
opt.syntax			= "enable"
opt.sw				= 2

opt.tabstop 		= 4 				-- Number of spaces tabs count
opt.softtabstop		= 4
opt.shiftwidth		= 4
opt.expandtab		= true
opt.scrolloff		= 8					-- replace zz

opt.smartindent		= true
opt.autoindent		= true  			-- Start new lines correctly indented

-- Search
opt.hlsearch		= false				-- Highlight all search matches
opt.incsearch		= true

opt.swapfile        = false             -- Create swapfile
opt.termguicolors   = true

