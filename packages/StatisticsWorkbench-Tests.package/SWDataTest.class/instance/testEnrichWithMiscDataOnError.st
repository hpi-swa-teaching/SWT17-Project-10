testing
testEnrichWithMiscDataOnError

	| data wrongDimension correctDimension |
	data := SWDataStub createSeeded.
	wrongDimension := ('miscColumn' -> #('miscColumnValue1' 'miscColumnValue2' 'miscColumnValue3' )) asOrderedCollection as: Dictionary.
	correctDimension := ('miscColumn' -> #('miscColumnValue1' 'miscColumnValue2' 'miscColumnValue3' 'miscColumnValue4')) asOrderedCollection as: Dictionary.
	
	self should: [data enrichWith: wrongDimension] raise: SWInvalidDimensionError.
	self shouldnt: [data enrichWith: correctDimension] raise: SWInvalidDimensionError