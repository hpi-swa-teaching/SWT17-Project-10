csv-file
setNamedColumns: aText 
	
	aText isEmpty
		ifTrue: [^ self]
		ifFalse: [self namedColumns: aText asString]