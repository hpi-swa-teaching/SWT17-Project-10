instance creation
fromNamedColumns: aDictionary xAxis: aString yAxis: anotherString categorizedBy: anotherString2 
	
	| dataPartitions |
	(aDictionary keys contains: [:each | each = anotherString2])
		ifFalse: [SWInvalidArgumentError signal: 'Wrong category-column-name'].
	dataPartitions := self split: aDictionary by: anotherString2.
	
	^ dataPartitions associations
		collect: [: dataPart | self
				fromDataPartition: dataPart
				xAxis: aString
				yAxis: anotherString]