accessing
dataName
	
	(dataName isNil)
		ifTrue: [^ '']
		ifFalse: [^ dataName]
