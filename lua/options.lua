local opt = vim.opt

opt.autoindent		= true  			-- Start new lines correctly indented
opt.clipboard 		= "unnamed"
opt.cursorline		= true
opt.encoding 		= "utf-8" 			-- Set default encoding to UTF-8
opt.hlsearch		= true				-- Highlight all search matches
opt.mouse		= nvi				-- Allow mouse everywhere except in command line mode	
opt.number	 	= true 				-- Show line numbers
opt.numberwidth		= 4				    -- establece el ancho de columna del número
opt.relativenumber 	= true 				-- Show numbers relative to cursor position
opt.shiftwidth 		= 2 				-- Indent space
opt.showcmd		= true
opt.showmatch		= true

--opt.cmdheight		= 2 				-- More space in the command line
opt.showmode 		= false 			-- ya no necesitamos ver cosas como -- INSERTAR --
opt.syntax		= "enable"
opt.sw			= 2

opt.tabstop 		= 4 				-- Number of spaces tabs count
opt.scrolloff		= 8					-- replace zz

