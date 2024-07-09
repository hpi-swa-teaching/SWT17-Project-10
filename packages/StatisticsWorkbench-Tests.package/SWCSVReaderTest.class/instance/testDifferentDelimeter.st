testing
testDifferentDelimeter
	
	| columns expectedColumnNames |
	self csvReader delimiter: ' '.
	columns := self csvReader getNamedColumns:  SWCSVStub csvStreamWithWhitespaceDelimeter.
	expectedColumnNames := {'X'. 'Y'. 'Labels'}.
	self assert: columns keys = expectedColumnNames 