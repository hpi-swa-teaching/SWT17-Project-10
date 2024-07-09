testing
testFromSingleOrderedCollectionWithLabels

	| seededData expectedData |
	seededData := SWDataStub createSeeded6.
	expectedData := SWDataLabeled fromYValues: {1 . 1 . 3 . 1} withLabels: {'one' . 'two' . 'three' . 'four'}.
	expectedData setAllDimensionNames: #('Time' 'Value').

	self assert: expectedData equals: seededData
