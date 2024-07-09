computing
abbreviationForNumber: aNumber

	| magnitude |
	magnitude := self computeMagnitude: aNumber.
	(magnitude < 1 or: [magnitude > self class defaultAbbreviations size])
		ifTrue: [^ ''].
		
	^ (self class defaultAbbreviations at: magnitude) asString