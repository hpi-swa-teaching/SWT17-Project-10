testing
testFromStringWithLabels

	| seededData labeledData |
	seededData := SWDataStub createSeeded4.
	labeledData := SWDataLabeled fromString: 'Time|Value one|0|1  two|1|1  three|2|3  four|3|1' ofDataDimension: 2.
	"Delimiters don't need to be tested here, because SWDataLabeled uses a method of SWData, which is already tested using SWDataUnlabeled in 'testFromStringWithoutLabels'."

	self assert: labeledData equals: seededData