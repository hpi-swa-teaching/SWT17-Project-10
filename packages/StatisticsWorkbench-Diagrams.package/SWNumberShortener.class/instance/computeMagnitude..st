computing
computeMagnitude: aNumber
	"Magnitude starting at 0 (< 1000) and increasing by 1 for every 10^3"
	
	| digitCount |
	digitCount := aNumber asInteger printString size.

	^ digitCount - 1 // 3