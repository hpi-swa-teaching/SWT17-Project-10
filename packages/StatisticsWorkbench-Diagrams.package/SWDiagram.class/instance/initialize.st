initialization
initialize

	super initialize.
	self 
		color: MenuMorph menuColor; 
		charts: OrderedCollection new;
		applyColorTheme: SWDefaultTheme new.