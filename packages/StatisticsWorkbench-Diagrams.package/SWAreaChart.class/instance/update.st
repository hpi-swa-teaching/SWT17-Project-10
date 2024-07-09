as yet unclassified
update
	
	self applyTheme: self diagram colorTheme.
	self diagram updateCoordinateSystem.
	self vertices: self createVertices.
	self lineMorph
		setVertices: self vertices asArray;
		borderColor: Color black;
		color: self lineColor.
	self addDatapointsToLine
