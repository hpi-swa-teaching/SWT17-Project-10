updating
update

	self updateCharts.

	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem update].
	(self hasLegend)
		ifTrue: [self updateLegend]