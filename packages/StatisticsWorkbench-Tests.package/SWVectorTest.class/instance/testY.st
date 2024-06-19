testing
testY

	self assert: 0 equals: self vector1 y.
	self assert: 1 equals: self vector2 y.
	self assert: 1 equals: self vector3 y.
	
	self should: [self vector5 y] raise: SWInvalidDimensionError.
