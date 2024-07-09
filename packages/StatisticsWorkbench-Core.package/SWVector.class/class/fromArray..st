instance creation
fromArray: anArray

	| vector |
	(anArray size = 0)
		ifTrue: [SWInvalidDimensionError signal: 'Vector must have at least 1 dimension!'].
	vector := SWVector withAll: anArray.

	^ vector
