testing
testCSVImportWithCustomDimensionNamesWithoutLabels

	| seededData csvStream unlabeledData |
	seededData := SWDataStub createSeeded3.
	csvStream := SWCSVStub csvStreamUnlabeledData.
	unlabeledData := SWDataUnlabeled fromCSVStream: csvStream delimeter: $; escapeWith: $' xAxis: 'Time' yAxis: 'Value'.
	
	self assert: unlabeledData dimensionNames equals: seededData dimensionNames