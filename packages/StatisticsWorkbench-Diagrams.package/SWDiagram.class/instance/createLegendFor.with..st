visualization
createLegendFor: aChart with: aSWData

	self seriesCount: self seriesCount + 1.
	(aSWData dataName)
		ifNil: [aSWData dataName: 'Series ', self seriesCount].
	(aChart needsLegend and: [self hasLegend not])
		ifTrue: [self insertLegend].