geometry
extent: aPoint
	|width|
	width := 0.
	self submorphsDo: [:each | each class = SWKey ifTrue: [width := each submorphs last extent x]].
	super extent: aPoint.
	self resizeCharts.
	self updateHPILogo.
	(self hasLegend)
		ifTrue:[self updateLegend.self updateLegend].
	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem extent: aPoint - (width @ 20)].
	(self hasChart)
		ifTrue: [self updateCharts]
