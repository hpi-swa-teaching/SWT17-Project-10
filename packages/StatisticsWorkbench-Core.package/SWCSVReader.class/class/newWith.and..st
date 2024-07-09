instance creation
newWith: aDelimiter and: anEscapeChar

	|csvreader|
	csvreader := self new initialize.
	
	^ csvreader 
		delimiter: aDelimiter;
		escapeCharacter: anEscapeChar;
		yourself