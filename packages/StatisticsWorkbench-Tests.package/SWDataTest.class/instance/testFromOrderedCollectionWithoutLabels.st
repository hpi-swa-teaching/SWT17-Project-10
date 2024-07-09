testing
testFromOrderedCollectionWithoutLabels

	| seededData expectedData |
	seededData := SWDataStub createSeeded3.
	expectedData := SWDataUnlabeled fromXValues: {0 . 1 . 2 . 3} versusYValues: {1 . 1 . 3 . 1}.
	expectedData setAllDimensionNames: #('Time' 'Value').
	
	self assert: expectedData equals: seededData.
	self should: [SWDataLabeled fromXValues: {0 . 1 . 2 } versusYValues: {1 . 1 . 3 . 1}]  raise: SWInvalidArgumentError.
	self should: [SWDataLabeled fromXValues: {0 . 1 . 2 . 3 } versusYValues: {1 . 1 . 3 }]  raise: SWInvalidArgumentError