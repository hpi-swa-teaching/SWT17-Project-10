testing
testCSVImportWithEmptyFileStream 

	| actualData expectedData |
	expectedData := SWDataUnlabeled create.
	actualData := SWDataUnlabeled fromCSVStream: SWCSVStub emptyCSVStream.
		
	self assert: expectedData equals: actualData