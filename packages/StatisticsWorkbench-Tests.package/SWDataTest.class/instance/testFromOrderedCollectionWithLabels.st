testing
testFromOrderedCollectionWithLabels

	| seededData labeledData |
	seededData := SWDataStub createSeeded4.
	labeledData := SWDataLabeled fromXValues: {0 . 1 . 2 . 3} versusYValues: {1 . 1 . 3 . 1} withLabels: {'one' . 'two' . 'three' . 'four'}.
	labeledData setAllDimensionNames: #('Time' 'Value').
	
	self assert: labeledData equals: seededData.
	self should: [SWDataLabeled fromXValues: {0 . 1 . 2 } versusYValues: {1 . 1 . 3 . 1} withLabels: {'one' . 'two' . 'three' . 'four'}]  raise: SWInvalidArgumentError.
	self should: [SWDataLabeled fromXValues: {0 . 1 . 2 . 3} versusYValues: {1 . 1 . 3 . 1} withLabels: {'one' . 'two' . 'three'}]  raise: SWInvalidArgumentError.
	self should: [SWDataLabeled fromXValues: {0 . 1 . 2 . 3} versusYValues: {1 . 1 . 3 } withLabels: {'one' . 'two' . 'three'. 'four'}]  raise: SWInvalidArgumentError