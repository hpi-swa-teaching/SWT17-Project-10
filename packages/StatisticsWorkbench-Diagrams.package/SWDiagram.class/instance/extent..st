geometry
extent: aPoint

	|width labelHeight barCharts|
	width := 0.
	labelHeight := 0.
	barCharts := self charts select: [:aChart | aChart class = SWBarChart].
	(barCharts size > 0) 
		ifTrue: [labelHeight := (barCharts collect: [:aChart | aChart maxBottomCaptionHeight]) max].
	self submorphsDo: [:each | each class = SWKey ifTrue: [width := each submorphs last extent x]].
	super extent: aPoint.
	self resizeCharts.
	self updateHPILogo.
	(self hasLegend)
		ifTrue:[self updateLegend.self updateLegend].
	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem extent: aPoint - (width @ labelHeight)].
	(self hasChart)
		ifTrue: [self updateCharts]