instance creation
createLabel: aString forDimension: aNumber

	| textMorph degrees |
	degrees := (self degreesFromDimension: aNumber) asInteger.
	textMorph := self createLabel: aString.
	
	self
		placeLabel: textMorph by: degrees on: aNumber;
		adjust: textMorph to: self diagram;
		placeLabel: textMorph by: degrees on: aNumber