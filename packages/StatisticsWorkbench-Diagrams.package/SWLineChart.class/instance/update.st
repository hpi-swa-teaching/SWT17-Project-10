updating
update
	
	self applyTheme: self diagram colorTheme.
	self diagram updateCoordinateSystem.
	self vertices: self createVertices.
	self lineMorph setVertices: self vertices asArray.
	self lineMorph borderColor: self lineColor.
	self addDatapointsToLine
