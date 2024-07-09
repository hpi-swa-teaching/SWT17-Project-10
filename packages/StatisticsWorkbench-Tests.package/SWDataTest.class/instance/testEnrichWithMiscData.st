testing
testEnrichWithMiscData

	| data miscData |
	data := SWDataStub createSeeded.
	miscData := ('miscColumn' -> #('miscColumnValue1' 'miscColumnValue2' 'miscColumnValue3' 'miscColumnValue4')) asOrderedCollection as: Dictionary.
	data enrichWith: miscData.
	
	self assert: (data first misc first = ('miscColumn' -> 'miscColumnValue1'))