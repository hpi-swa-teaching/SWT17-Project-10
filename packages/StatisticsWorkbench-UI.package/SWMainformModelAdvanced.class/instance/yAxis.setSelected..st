yAxis-selection
yAxis: aNumber setSelected: aBool

	self build at: aNumber put: aBool.
	self changed: #yAxisSelected.