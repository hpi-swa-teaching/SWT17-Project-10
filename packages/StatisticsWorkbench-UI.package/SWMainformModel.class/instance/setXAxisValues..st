csv-file
setXAxisValues: aText 
	
	aText isEmpty
		ifTrue: [^ self]
		ifFalse: [self xAxis: aText asString]