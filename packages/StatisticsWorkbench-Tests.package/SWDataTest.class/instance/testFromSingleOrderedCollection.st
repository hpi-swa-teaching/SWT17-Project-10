testing
testFromSingleOrderedCollection

	| seededData expectedData |
	seededData := SWDataStub createSeeded5.
	expectedData := SWDataUnlabeled fromYValues: {5 . 10 . 30 . 100}.
	expectedData setAllDimensionNames: #('Time' 'Value').
	
	self assert: expectedData equals: seededData
