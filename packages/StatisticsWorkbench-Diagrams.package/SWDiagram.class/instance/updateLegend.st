updating
updateLegend

	self legend topLeft: self topRight.
	self legend key topRight: self topRight.
	self removeLegend.
	(self hasChart)
		ifTrue: [self legend drawKeyFor: self collectKeyData]