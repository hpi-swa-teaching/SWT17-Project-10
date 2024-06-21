testing
testNamedColumnsFromStream
	
	| columns expectedColumnNames |
	
	columns := self csvReader getNamedColumns:  SWCSVStub csvStreamLabeledData.
	expectedColumnNames := {'X'. 'Y'. 'Label'}.
	self assert: columns keys = expectedColumnNames 