initialization
initialize

	super initialize.
	self
		seriesCount: 0;
		charts: OrderedCollection new;
		applyColorTheme: SWDefaultTheme new;
		disableBordersOnFocus;
		stacked: false;
		normalized: false.