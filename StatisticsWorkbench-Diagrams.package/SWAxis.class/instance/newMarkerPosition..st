as yet unclassified
newMarkerPosition: aIndex
	self orientation = #horizontal
		ifTrue: [	^ self startPoint + (aIndex * self stepInterval * self normedMarkerLength @ 0)]
		ifFalse: [^ self startPoint + (0 @ (-1 * aIndex * self stepInterval * self normedMarkerLength))].