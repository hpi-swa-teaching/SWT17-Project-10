testing
testX
	
	self assert: 0 equals: self vector1 x.
	self assert: 0 equals: self vector2 x.
	self assert: 1  equals:self vector3 x.
	
	self should: [self vector4 x] raise: SWInvalidDimensionError
