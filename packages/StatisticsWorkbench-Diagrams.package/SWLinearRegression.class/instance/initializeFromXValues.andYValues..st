initialization
initializeFromXValues: xValues andYValues: yValues
	
	| lowerX higherX |
	self slope: (self calculateSlopeFromXValues: xValues andYValues: yValues).
	self intersect: (self calculateIntersectFromXValues: xValues andYValues: yValues).

	lowerX := xValues min.
	higherX := xValues max.
	
	self plotrange: (lowerX to: higherX).