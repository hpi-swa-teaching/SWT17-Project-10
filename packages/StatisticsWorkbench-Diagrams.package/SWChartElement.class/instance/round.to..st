accessing
round: aNumber to: aBaseNumber

	| result |
	result := aNumber roundTo: aBaseNumber.
	(result truncated = result) ifTrue: [result := result truncated].
	
	^result