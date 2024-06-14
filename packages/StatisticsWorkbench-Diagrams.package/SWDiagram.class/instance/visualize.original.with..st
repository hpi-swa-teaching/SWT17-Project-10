visualization
visualize: aSWData original: aSWOriginalData with: aSWChart 

	| coordinateSystem chart |
	(self dataCollection) ifNil: [self dataCollection: (OrderedCollection with: aSWData)].
	chart := aSWChart create.
	self seriesCount: self seriesCount + 1.
	(aSWData dataName)
		ifNil: [aSWData dataName: 'Series ', self seriesCount].
	(chart needsCoordinateSystem and: [self hasCoordinateSystem not])
		ifTrue: [
			coordinateSystem := chart requiredCoordinateSystem create.
			coordinateSystem diagram: self.
			self add: coordinateSystem].

	(chart needsLegend and: [self hasLegend not])
		ifTrue: [self createLegend].
	
	self add: chart.
	chart diagram: self.
	(chart isKindOf: SWSpiderChart)
		ifTrue: [chart data: (self transformToSpiderData: aSWData)]
		ifFalse: [chart data: aSWData. chart originalData: aSWOriginalData].
		
	(chart needsCoordinateSystem)
		ifTrue: [self coordinateSystem diagram: self]
		ifFalse: [self bounds: chart bounds].
		
	(self normalized)
		ifTrue: [chart dataSuffix: '%'.
	self coordinateSystem percentageBased: true.
	self coordinateSystem yAxis markerSuffix: '%'.].

	self createIMGExportBtn.
	self update