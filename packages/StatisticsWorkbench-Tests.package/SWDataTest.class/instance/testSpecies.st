testing
testSpecies

	| labeledData |
	labeledData := SWDataStub createSeeded4.
	
	self assert: labeledData species equals: SWDataLabeled.
	self assert: self data species equals: SWDataUnlabeled