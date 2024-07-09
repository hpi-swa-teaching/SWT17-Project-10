converting
asPoint

	(self dimensions < 2)
		ifTrue: [SWInvalidDimensionError signal: 'Vector must have at least two dimensions in order to convert it to a point!'].

	^ self first @ self second
