creation
createDataPoint: aSWVector

	| dataPoint |
	dataPoint := SWDataPoint create: aSWVector at: (self coordinateSystem positionFor: aSWVector asPoint).
	dataPoint color: self pointColor.

	^ dataPoint
