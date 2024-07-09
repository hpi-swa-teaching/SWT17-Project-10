testing
testAsStringWithoutLabels

	| comparisonData |
	comparisonData := SWDataStub createSeeded3.

	self assert: (comparisonData asString = 'Time|Value
0|1
1|1
2|3
3|1
')