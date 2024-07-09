CSV parsing
fromCSVStream: aStream delimeter: delimeterCharacter escapeWith: escapeCharacter xAxis: aString yAxis: anotherString
	
	| csvreader namedColumns |
	csvreader := SWCSVReader newWith: delimeterCharacter and: escapeCharacter.
	namedColumns := csvreader getNamedColumns: aStream.
	(namedColumns isEmpty) ifTrue: [^ self create].
	
	^ self fromNamedColumns: namedColumns xValues: aString yValues: anotherString

