csv-file
setYAxisValues: aText 
	
	aText isEmpty
		ifTrue: [^ self]
		ifFalse: [self yAxis: aText asString]