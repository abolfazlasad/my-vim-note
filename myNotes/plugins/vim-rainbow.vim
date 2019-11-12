for enable globally
	let g:rainbow_active = 1 
loading it for specific file types
	au FileType c,cpp call rainbow#load() 
:RainbowToggle  -- you can use it to toggle this plugin.
:RainbowLoad	-- you can use it to load/reload plugin.
