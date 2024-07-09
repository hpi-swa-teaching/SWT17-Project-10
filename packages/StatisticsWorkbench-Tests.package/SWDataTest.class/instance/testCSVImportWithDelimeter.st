testing
testCSVImportWithDelimeter

	| seededData csvStream labeledData |
	seededData := SWDataStub createSeeded4.
	csvStream := SWCSVStub csvStreamLabeledData.
	labeledData := SWDataLabeled fromCSVStream: csvStream delimeter: $; escapeWith: $' xAxis: 'X' yAxis: 'Y'.
	labeledData setAllDimensionNames: #('Time' 'Value').
	
	self assert: labeledData equals: seededData
