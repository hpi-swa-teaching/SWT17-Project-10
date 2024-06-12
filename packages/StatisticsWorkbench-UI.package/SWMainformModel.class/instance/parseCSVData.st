event-handling
parseCSVData

	| csvReader |
	csvReader := SWCSVReader newWith: self delimiter and: self escapeCharacter.
	self	namedColumns: (csvReader getNamedColumns: self stream);
	 	parsedFile: self stream name