testing
testBoundsThreshold

	| oldBounds |
	oldBounds := self coordinateSystem boundsThreshold.
	self coordinateSystem boundsThreshold: oldBounds + SWCartesianCoordinateSystem defaultBoundsThreshold.
	self deny: oldBounds = self coordinateSystem boundsThreshold
