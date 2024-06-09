initialization
initialize

	super initialize.
	self
		charts: OrderedCollection new;
		applyColorTheme: SWDefaultTheme new;
		disableBordersOnFocus