as yet unclassified
createDataPoint: aSWVector

	| dataPoint |
	
	dataPoint := SWDataPoint create: aSWVector at: (self coordinateSystem positionFor: aSWVector asPoint) size: (self scaledBubbleSize: (aSWVector third)).
	dataPoint color: (self pointColor alpha: 0.7).
	
	(aSWVector third > (self threshold)) ifTrue: [dataPoint height: 0. dataPoint width: 0].
	
	^ dataPoint
