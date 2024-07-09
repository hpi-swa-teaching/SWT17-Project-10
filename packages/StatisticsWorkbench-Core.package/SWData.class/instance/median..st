math functions
median: aDimension

	| index |
	index := ((self size + 1) / 2) asInteger.

	^ (self selectDimension: aDimension) sort at: index
