testing
testFromDataPointCollections

	| labeledData seededLabeledData unlabeledData seededUnlabeledData  |
	seededLabeledData := SWDataStub createSeeded4.
	labeledData := #((0 1 'one') #(1 1 'two') #(2 3 'three') #(3 1 'four')).
	labeledData := SWDataLabeled fromDataPointCollections: labeledData.
	labeledData setAllDimensionNames: #('Time' 'Value').
	
	self assert: labeledData equals: seededLabeledData.
	
	seededUnlabeledData := SWDataStub createSeeded.
	unlabeledData := #(#(0 1) #(1 1) #(1 3) #(3 0)).
	unlabeledData := SWDataUnlabeled fromDataPointCollections: unlabeledData.
	
	self assert: unlabeledData equals: seededUnlabeledData