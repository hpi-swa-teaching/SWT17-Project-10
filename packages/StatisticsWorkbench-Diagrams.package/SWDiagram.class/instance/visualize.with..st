visualization
visualize: aSWData with: aChart

	| coordinateSystem |	
	(aChart needsCoordinateSystem and: [self hasCoordinateSystem not])
		ifTrue: [
			coordinateSystem := aChart requiredCoordinateSystem create.
			coordinateSystem diagram: self.
			self add: coordinateSystem].

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