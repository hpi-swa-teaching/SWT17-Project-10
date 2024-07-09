CSV parsing
fromCSVStream: aStream
	
	| csvreader namedColumns |
	csvreader := SWCSVReader new.
	namedColumns := csvreader getNamedColumns: aStream.
	(namedColumns isEmpty) ifTrue: [^ self create].
		
	^ self fromNamedColumns: namedColumns xValues: 'X' yValues: 'Y'
