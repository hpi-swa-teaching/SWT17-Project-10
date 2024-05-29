chart-selection
chart: aNumber setSelected: aBool

	self chartSelection at: aNumber put: aBool.
	self changed: #chartSelection.