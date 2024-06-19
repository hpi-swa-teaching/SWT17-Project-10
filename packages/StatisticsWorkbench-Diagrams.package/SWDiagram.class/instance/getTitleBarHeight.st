computing
getTitleBarHeight
	
	| window titleBarHeight |
	window := SystemWindow new.
	window openInWorld.
	titleBarHeight := window labelArea height.
	window delete.
	
	^ titleBarHeight