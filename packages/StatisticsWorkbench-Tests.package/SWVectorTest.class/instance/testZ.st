testing
testZ

	self assert: 3 equals: self vector4 z.
	
	self should: [self vector1 z] raise: SWInvalidDimensionError.
	self should: [self vector5 z] raise: SWInvalidDimensionError
