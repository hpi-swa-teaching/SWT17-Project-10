visualization
visualize: aSWData with: aSWChart

	| coordinateSystem chart |
	chart := aSWChart create.
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
		ifFalse: [chart data: aSWData].
		
	(chart needsCoordinateSystem)
		ifTrue: [self coordinateSystem diagram: self]
		ifFalse: [self bounds: chart bounds].

	self createIMGExportBtn.
	self update