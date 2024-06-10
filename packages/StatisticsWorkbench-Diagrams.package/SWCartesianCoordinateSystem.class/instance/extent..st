geometry
extent: aPoint

	super extent: aPoint.

	(self xAxis notNil and: [self yAxis notNil])
			ifTrue: [self update]