formatting
shortenNumber: aNumber

	| digitCount |
	digitCount := self digitCount: aNumber.
	(self class defaultDigitCountRange rangeIncludes: digitCount)
		ifTrue: [^ self formatShortenedNumber: aNumber].
		
	^ aNumber asString