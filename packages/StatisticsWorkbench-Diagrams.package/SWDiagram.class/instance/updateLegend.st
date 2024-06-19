updating
updateLegend

	self legend topLeft: self topRight.
	self legend key topLeft: self topRight.
	self removeLegend.
	(self hasChart) ifTrue: [
		self legend drawKeyFor: self collectKeyData
	]