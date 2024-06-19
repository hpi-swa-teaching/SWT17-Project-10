testing
testY

	| vector5 |
	
	vector5 := SWVector create: #(1).
	
	self assert: 0 equals: self vector1 y.
	self assert: 1 equals: self vector2 y.
	self assert: 1 equals: self vector3 y.
	
	self should: [self vector4 y] raise: SWInvalidDimensionError.
	self should: [vector5 y] raise: SWInvalidDimensionError
