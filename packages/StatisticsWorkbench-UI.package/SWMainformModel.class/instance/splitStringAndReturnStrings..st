event-handling
splitStringAndReturnStrings: aString

    | stringArray  |
	stringArray := aString findTokens: ','.
	stringArray := stringArray collect: [ :each | each withBlanksTrimmed ].
	
    ^ stringArray
