as yet unclassified
update
	
	self applyTheme: self diagram colorTheme.
	self diagram updateCoordinateSystem.
	self vertices: self createVertices.
	self lineMorph setVertices: self vertices asArray.
	self updateDataName.
	self lineMorph borderColor: Color black.
	self lineMorph color: self lineColor.
	self addDatapointsToLine
