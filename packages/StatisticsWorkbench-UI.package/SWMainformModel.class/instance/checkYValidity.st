event-handling
checkYValidity

	| sizes firstSize |
	sizes := self parsedYData collect: [:each | each size].
	firstSize := sizes first.
	^ sizes allSatisfy: [:size | size = firstSize]