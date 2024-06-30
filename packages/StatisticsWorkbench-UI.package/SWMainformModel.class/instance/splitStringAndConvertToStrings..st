event-handling
splitStringAndConvertToStrings: aString

	| stringCollection |
	
	stringCollection := aString findTokens: ','.
	stringCollection := stringCollection collect: [ :each | each withBlanksTrimmed ].
	^ stringCollection
