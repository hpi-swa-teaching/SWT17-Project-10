testing
testCSVImport

	| seededData csvStream labeledData |
	
	seededData := SWDataStub createSeeded4.
	csvStream := SWCSVStub csvStreamLabeledData. 
	labeledData := SWDataLabeled fromCSVStream: csvStream.
	labeledData setAllDimensionNames: #('Time' 'Value').
	
	self assert: labeledData equals: seededData
