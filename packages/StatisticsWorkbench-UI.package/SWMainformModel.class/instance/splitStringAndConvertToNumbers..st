event-handling
splitStringAndConvertToNumbers: aString

	| numberStrings numbers |
	numberStrings := aString findTokens: ','.
	numbers := numberStrings collect: [ :each | each withBlanksTrimmed asNumber ].
	
	^ numbers
