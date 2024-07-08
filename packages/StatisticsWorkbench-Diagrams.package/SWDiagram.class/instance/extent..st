geometry
extent: aPoint
	|width labelHeight|
	width := 0.
	labelHeight := 0.
	(self charts anySatisfy: [:aChart | aChart class = SWBarChart]) ifTrue: [
		labelHeight := (self charts collect: [:aChart | aChart maxBottomCaptionHeight]) max].
	self submorphsDo: [:each | each class = SWKey ifTrue: [width := each submorphs last extent x]].
	super extent: aPoint.
	self resizeCharts.
	self updateHPILogo.
	(self hasLegend)
		ifTrue:[self updateLegend.self updateLegend].
	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem extent: aPoint - (width @ (labelHeight))].
	(self hasChart)
		ifTrue: [self updateCharts]
