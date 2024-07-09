testing
testFromStringWithoutLabels

	| expectedData |
	expectedData := SWDataStub createSeeded3.

	self assert: (expectedData = (SWDataUnlabeled fromString: 'Time Value 0 1  1 1  2 3  3 1' ofDataDimension: 2)).
	self assert: (expectedData = (SWDataUnlabeled fromString: 'Time|Value 0|1  1|1  2|3  3|1' ofDataDimension: 2)).
	self assert: (expectedData = (SWDataUnlabeled fromString: '(Time Value) (0 1)  (1 1)  (2 3)  (3 1)' ofDataDimension: 2)).
	self assert: (expectedData = (SWDataUnlabeled fromString: '[Time Value] [0 1]  [1 1]  [2 3]  [3 1]' ofDataDimension: 2)).
	self assert: (expectedData = (SWDataUnlabeled fromString: '{Time,Value} {0,1}  {1,1}  {2,3}  {3,1}' ofDataDimension: 2)).
	self assert: (expectedData = (SWDataUnlabeled fromString: 'Time,Value 0,1  1,1  2,3  3,1' ofDataDimension: 2)).
	self assert: (expectedData = (SWDataUnlabeled fromString: 'Time@Value 0@1  1@1  2@3  3@1' ofDataDimension: 2)).
	self assert: (expectedData = (SWDataUnlabeled fromString: 'Time Value #(#(0 1)  #(1 1)  #(2 3)  #(3 1))' ofDataDimension: 2)).
	self assert: (expectedData = (SWDataUnlabeled fromString: 'Time=Value 0=1  1=1  2=3  3=1' ofDataDimension: 2)).
	self assert: (expectedData = (SWDataUnlabeled fromString: 'Time&Value 0&1  1&1  2&3  3&1' ofDataDimension: 2))