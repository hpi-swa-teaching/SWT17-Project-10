testing
testNamedColumnsFromStream
	
	| columns expectedColumnNames |
	
	columns := self csvReader getNamedColumns:  SWCSVStub csvStreamLabeledData.
	expectedColumnNames := {'X'. 'Y'. 'Labels'}.
	self assert: columns keys = expectedColumnNames 