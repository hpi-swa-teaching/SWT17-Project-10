visualization
visualize: aSWData with: aChart 
	
	(aChart needsCoordinateSystem and: [self hasCoordinateSystem not])
		ifTrue: [self add: aChart requiredCoordinateSystem create].

	(aChart needsLegend and: [self hasLegend not])
		ifTrue: [self createLegend].
	
	self add: aChart.
	aChart diagram: self.
	aChart data: aSWData.
		
	(aChart needsCoordinateSystem)
		ifTrue: [self coordinateSystem diagram: self]
		ifFalse: [self bounds: aChart bounds].

	self createIMGExportBtn.
	self update