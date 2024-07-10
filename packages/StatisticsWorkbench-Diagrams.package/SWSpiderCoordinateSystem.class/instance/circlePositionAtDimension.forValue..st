geometry
circlePositionAtDimension: aNumber forValue: aValue
	
	| radius radiants |
	radius := (self radius / self class defaultMaximumAxisValue) * aValue.
	radiants := (self degreesFromDimension: aNumber) degreesToRadians.
	
	^ (radiants cos * radius @ (radiants sin * radius)) + self center asIntegerPoint