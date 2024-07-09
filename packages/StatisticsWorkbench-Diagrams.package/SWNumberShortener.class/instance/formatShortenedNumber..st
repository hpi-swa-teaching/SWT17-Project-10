formatting
formatShortenedNumber: aNumber

	| abbreviation digitCount fractionalPart integerPart numberString powerOfTen |
	numberString := aNumber asInteger printString.
	digitCount := self digitCount: aNumber.
	abbreviation := self abbreviationForNumber: aNumber.
	powerOfTen := self powerOfTenForNumber: aNumber.
	
	integerPart := numberString copyFrom: 1 to: (digitCount - powerOfTen).
	fractionalPart := numberString copyFrom: (digitCount - powerOfTen + 1) to: (digitCount - powerOfTen + 1).
	
	^ integerPart, '.', fractionalPart, ' ', abbreviation