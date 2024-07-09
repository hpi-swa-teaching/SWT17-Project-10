accessing
dimensionIndex: aDimension

	| index |
	(aDimension isSymbol)
		ifTrue: [index := self indexOfAxis: aDimension]
		ifFalse: [index := aDimension].
	(self dimensions < index or: [index < 1])
		ifTrue: [SWInvalidDimensionError signal: 'Passed dimension is invalid.'].

	^ index
